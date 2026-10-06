// duo-rotate: screen rotation, dual-panel layout and touch mapping for the
// ASUS Zenbook Duo UX8407AA under KDE Plasma (Wayland). Runs in the session and on
// the Plasma login screen.
//
// Why not KWin's auto-rotate:
//  * the top panel (eDP-1) is mounted upside down, the bottom one (eDP-2) is not,
//    so the two outputs need transforms 180 degrees apart and a layout that follows
//    the hinge; KWin rotates every output the same way and never re-lays them out;
//  * KWin resets per-device touch orientation whenever an output transform changes,
//    which breaks the top touchscreen after every rotation;
//  * KWin reacts to every orientation change instantly.
//
// Behaviour:
//  * keyboard docked over USB (0b05:1cd7), i.e. lying on the bottom panel: laptop
//    posture, bottom panel disabled; lifted off: bottom panel enabled again. Dock
//    changes come from udev (no polling) and count once stable for DOCK_STABLE_MS;
//  * otherwise follow iio-sensor-proxy, but only after an orientation has been
//    stable for STABLE_MS. The accelerometer is only claimed while undocked, so
//    the sensor hub can stay idle when the posture is fixed anyway;
//  * after any output change (ours, KWin's or the user's), a re-added input device
//    or a resume, re-apply touch mapping;
//  * eDP-2 wedge (xe #7764 / #9196): booting with the keyboard docked leaves the
//    bottom panel's PHY without refclk; the first enable of pipe B then fails and
//    can hang the whole machine. So after a docked power-on the bottom panel is
//    not enabled at all for that boot, unless the patched xe from
//    modules/display-edp2-tcss is running (the user is told to power on with the
//    keyboard lifted), it is never re-enabled while the system shuts down, and
//    after each enable (and at start) the kernel log is checked for the wedge; if
//    found, the panel stays off for the rest of the boot and the user is told how
//    to recover (full power reset).
//
// The accelerometer carries a mount matrix (modules/sensors-accel-mount) so its
// orientation is expressed in the top panel's frame: laptop upright = bottom-up.

#include <KScreen/Config>
#include <KScreen/ConfigMonitor>
#include <KScreen/GetConfigOperation>
#include <KScreen/Mode>
#include <KScreen/Output>
#include <KScreen/SetConfigOperation>
#include <QDBusConnection>
#include <QDBusInterface>
#include <QDBusMessage>
#include <QDBusReply>
#include <QDBusVariant>
#include <QDir>
#include <QFile>
#include <QGuiApplication>
#include <QProcess>
#include <QSocketNotifier>
#include <QTimer>
#include <iostream>
#include <libudev.h>

using Rotation = KScreen::Output::Rotation;

static constexpr int STABLE_MS = 1000;   // orientation must hold this long
static constexpr int TOUCH_DELAY_MS = 400; // let KWin finish its own reset first
static constexpr int DOCK_STABLE_MS = 1000; // dock state must hold this long (pogo pins bounce)
static constexpr int WEDGE_CHECK_MS = 12000; // pipe B flip_done times out after 10 s
static constexpr double DOCKED_BOOT_S = 20; // keyboard enumerated this soon after power-on: it was docked
static const QString WEDGE_PATTERN = QStringLiteral(
    "PHY B failed|DDI BUF B|pipe B\\] flip_done timed out|AUX B/DDI B/PHY B: timeout|Failed to read DPCD register 0x60");
static const QString TOP = QStringLiteral("eDP-1");
static const QString BOTTOM = QStringLiteral("eDP-2");

static void log(const QString &s) { std::cerr << "duo-rotate: " << s.toStdString() << std::endl; }

// The patched xe from modules/display-edp2-tcss powers eDP-2's PHY itself, so a
// docked power-on no longer breaks the bottom panel.
static bool xeHandlesDockedBoot()
{
    QFile f(QStringLiteral("/sys/module/xe/parameters/zenbook_duo_edp2_tcss"));
    return f.open(QIODevice::ReadOnly) && f.readAll().trimmed() == "Y";
}

// Was the keyboard on the pogo pins when the machine powered on? Its first USB
// enumeration in this boot's kernel log then comes within the first seconds.
// zenbook-duo-boot-dock.service records that at boot, since the login screen's user
// cannot read the kernel log; the journal is the fallback.
static bool dockedAtBoot()
{
    QFile rec(QStringLiteral("/run/zenbook-duo/docked-at-boot"));
    if (rec.open(QIODevice::ReadOnly))
        return rec.readAll().trimmed() == "1";
    QProcess p;
    p.start(QStringLiteral("journalctl"), {QStringLiteral("-k"), QStringLiteral("-b"), QStringLiteral("-o"), QStringLiteral("short-monotonic"),
                                           QStringLiteral("--no-pager"), QStringLiteral("-g"), QStringLiteral("idProduct=1cd7")});
    if (!p.waitForFinished(5000))
        return false;
    // "[    1.303215] host kernel: usb 3-6: New USB device found, ..., idProduct=1cd7, ..."
    const QByteArray first = p.readAllStandardOutput().split('\n').value(0);
    const int open = first.indexOf('['), close = first.indexOf(']');
    bool ok = false;
    const double t = open >= 0 && close > open ? first.mid(open + 1, close - open - 1).trimmed().toDouble(&ok) : 0;
    return ok && t < DOCKED_BOOT_S;
}

static int readSys(const QString &path)
{
    QFile f(path);
    return f.open(QIODevice::ReadOnly) ? f.readAll().trimmed().toInt() : -1;
}

static bool keyboardDocked()
{
    const QDir usb(QStringLiteral("/sys/bus/usb/devices"));
    for (const QString &d : usb.entryList(QDir::Dirs | QDir::NoDotAndDotDot)) {
        QFile v(usb.filePath(d + QStringLiteral("/idVendor"))), p(usb.filePath(d + QStringLiteral("/idProduct")));
        if (v.open(QIODevice::ReadOnly) && p.open(QIODevice::ReadOnly)
            && v.readAll().trimmed() == "0b05" && p.readAll().trimmed() == "1cd7")
            return true;
    }
    return false;
}

// Sensor orientation (top-panel frame) -> KScreen rotation of the top output.
static Rotation topRotationFor(const QString &o)
{
    if (o == QLatin1String("normal"))
        return Rotation::None;
    if (o == QLatin1String("left-up"))
        return Rotation::Left;
    if (o == QLatin1String("right-up"))
        return Rotation::Right;
    return Rotation::Inverted; // bottom-up = laptop posture
}

static Rotation opposite(Rotation r)
{
    switch (r) {
    case Rotation::None: return Rotation::Inverted;
    case Rotation::Inverted: return Rotation::None;
    case Rotation::Left: return Rotation::Right;
    case Rotation::Right: return Rotation::Left;
    default: return Rotation::None;
    }
}

static const char *name(Rotation r)
{
    switch (r) {
    case Rotation::None: return "none";
    case Rotation::Left: return "left";
    case Rotation::Inverted: return "inverted";
    case Rotation::Right: return "right";
    default: return "?";
    }
}

class Daemon : public QObject
{
    Q_OBJECT
public:
    Daemon()
    {
        m_stable.setSingleShot(true);
        m_stable.setInterval(STABLE_MS);
        connect(&m_stable, &QTimer::timeout, this, [this] { applyRotation(); });

        m_touch.setSingleShot(true);
        m_touch.setInterval(TOUCH_DELAY_MS);
        connect(&m_touch, &QTimer::timeout, this, [this] { applyTouch(); });

        // Dock changes: USB add/remove uevents restart a debounce timer; the state is
        // read once it has been quiet for DOCK_STABLE_MS. No periodic wakeups.
        m_dockStable.setSingleShot(true);
        m_dockStable.setInterval(DOCK_STABLE_MS);
        connect(&m_dockStable, &QTimer::timeout, this, [this] { dockCheck(); });
        m_udev = udev_new();
        m_udevMon = m_udev ? udev_monitor_new_from_netlink(m_udev, "udev") : nullptr;
        if (m_udevMon && udev_monitor_filter_add_match_subsystem_devtype(m_udevMon, "usb", "usb_device") == 0
            && udev_monitor_enable_receiving(m_udevMon) == 0) {
            auto *sn = new QSocketNotifier(udev_monitor_get_fd(m_udevMon), QSocketNotifier::Read, this);
            connect(sn, &QSocketNotifier::activated, this, [this] {
                while (udev_device *dev = udev_monitor_receive_device(m_udevMon))
                    udev_device_unref(dev);
                m_dockStable.start();
            });
        } else {
            log(QStringLiteral("udev monitor unavailable, checking the dock every 2 s"));
            auto *poll = new QTimer(this);
            connect(poll, &QTimer::timeout, this, [this] { dockCheck(); });
            poll->start(2000);
        }
        m_docked = keyboardDocked();
        m_dockedAtBoot = dockedAtBoot();
        if (m_dockedAtBoot && xeHandlesDockedBoot()) {
            m_dockedAtBoot = false;
            log(QStringLiteral("powered on with the keyboard docked; patched xe powers eDP-2, bottom panel allowed"));
        } else if (m_dockedAtBoot) {
            log(QStringLiteral("powered on with the keyboard docked: bottom panel stays off this boot"));
        }

        auto sys = QDBusConnection::systemBus();
        m_sensor = new QDBusInterface(QStringLiteral("net.hadess.SensorProxy"), QStringLiteral("/net/hadess/SensorProxy"),
                                      QStringLiteral("net.hadess.SensorProxy"), sys, this);
        sys.connect(QStringLiteral("net.hadess.SensorProxy"), QStringLiteral("/net/hadess/SensorProxy"),
                    QStringLiteral("org.freedesktop.DBus.Properties"), QStringLiteral("PropertiesChanged"), this,
                    SLOT(sensorChanged(QString, QVariantMap, QStringList)));
        claimAccelerometer(!m_docked);
        sys.connect(QStringLiteral("org.freedesktop.login1"), QStringLiteral("/org/freedesktop/login1"),
                    QStringLiteral("org.freedesktop.login1.Manager"), QStringLiteral("PrepareForShutdown"), this,
                    SLOT(prepareForShutdown(bool)));

        // KWin forgets a touchscreen's orientation whenever the device is re-added, e.g.
        // when i2c-hid re-probes on resume, without any output change: remap then too.
        QDBusConnection::sessionBus().connect(QStringLiteral("org.kde.KWin"), QStringLiteral("/org/kde/KWin/InputDevice"),
                                              QStringLiteral("org.kde.KWin.InputDeviceManager"), QStringLiteral("deviceAdded"), this,
                                              SLOT(inputDeviceAdded(QString)));
        sys.connect(QStringLiteral("org.freedesktop.login1"), QStringLiteral("/org/freedesktop/login1"),
                    QStringLiteral("org.freedesktop.login1.Manager"), QStringLiteral("PrepareForSleep"), this, SLOT(prepareForSleep(bool)));

        auto *op = new KScreen::GetConfigOperation();
        connect(op, &KScreen::GetConfigOperation::finished, this, [this](KScreen::ConfigOperation *o) {
            if (o->hasError()) {
                log(QStringLiteral("kscreen: ") + o->errorString());
                QCoreApplication::exit(1);
                return;
            }
            m_config = static_cast<KScreen::GetConfigOperation *>(o)->config();
            KScreen::ConfigMonitor::instance()->addConfig(m_config);
            connect(KScreen::ConfigMonitor::instance(), &KScreen::ConfigMonitor::configurationChanged, this,
                    [this] { m_touch.start(); });
            m_dockChanged = true; // enforce the panel state once at startup
            applyRotation();
            checkWedge(); // the login screen may already have wedged pipe B
            QTimer::singleShot(3000, this, [this] { syncBottomBrightness(); });
        });
    }

    ~Daemon() override
    {
        if (m_udevMon)
            udev_monitor_unref(m_udevMon);
        if (m_udev)
            udev_unref(m_udev);
    }

public Q_SLOTS:
    void inputDeviceAdded(const QString &) { m_touch.start(); }

    void prepareForSleep(bool sleeping)
    {
        if (!sleeping) {
            log(QStringLiteral("resumed"));
            m_touch.start();
            m_dockStable.start(); // the keyboard may have been docked or lifted while asleep
            QTimer::singleShot(3000, this, [this] { syncBottomBrightness(); });
        }
    }

    void prepareForShutdown(bool stopping) { m_shuttingDown = stopping; }

    void sensorChanged(const QString &, const QVariantMap &changed, const QStringList &)
    {
        if (!changed.contains(QStringLiteral("AccelerometerOrientation")))
            return;
        m_orientation = changed.value(QStringLiteral("AccelerometerOrientation")).toString();
        log(QStringLiteral("sensor: %1").arg(m_orientation));
        m_stable.start(); // restart: only act once the reading stays put
    }

private:
    void dockCheck()
    {
        const bool d = keyboardDocked();
        if (d == m_docked)
            return;
        m_docked = d;
        log(QStringLiteral("keyboard %1").arg(d ? QStringLiteral("docked") : QStringLiteral("detached")));
        claimAccelerometer(!d);
        m_dockChanged = true;
        applyRotation();
    }

    // iio-sensor-proxy only polls the accelerometer while a client holds a claim.
    void claimAccelerometer(bool claim)
    {
        if (claim == m_claimed)
            return;
        m_claimed = claim;
        m_sensor->call(claim ? QStringLiteral("ClaimAccelerometer") : QStringLiteral("ReleaseAccelerometer"));
        if (claim)
            m_orientation = m_sensor->property("AccelerometerOrientation").toString();
    }

    bool shuttingDown()
    {
        if (m_shuttingDown)
            return true;
        QDBusInterface login(QStringLiteral("org.freedesktop.login1"), QStringLiteral("/org/freedesktop/login1"),
                             QStringLiteral("org.freedesktop.login1.Manager"), QDBusConnection::systemBus());
        return login.property("PreparingForShutdown").toBool();
    }

    // Look for the eDP-2 wedge in this boot's kernel log (async, cheap: runs only at
    // start and after the bottom panel is enabled).
    void checkWedge()
    {
        if (m_wedged)
            return;
        auto *p = new QProcess(this);
        connect(p, &QProcess::finished, this, [this, p] {
            const QString hit = QString::fromUtf8(p->readAllStandardOutput()).trimmed();
            p->deleteLater();
            if (hit.isEmpty() || m_wedged)
                return;
            m_wedged = true;
            log(QStringLiteral("eDP-2 wedge in the kernel log: ") + hit);
            for (const auto &o : m_config ? m_config->outputs() : KScreen::OutputList()) {
                if (o->name() == BOTTOM && o->isEnabled()) {
                    o->setEnabled(false);
                    new KScreen::SetConfigOperation(m_config);
                    log(QStringLiteral("bottom panel off for the rest of this boot"));
                }
            }
            notify(QStringLiteral("Bottom screen stopped responding"),
                   QStringLiteral("The display driver lost the bottom panel (known kernel bug, usually after powering on with the "
                                  "keyboard lying on it). It stays off until a full power reset: shut down, unplug the charger, "
                                  "hold the power button for 15 s, wait a minute, then power on with the keyboard lifted off."));
        });
        p->start(QStringLiteral("journalctl"), {QStringLiteral("-k"), QStringLiteral("-b"), QStringLiteral("-o"), QStringLiteral("cat"),
                                                QStringLiteral("--no-pager"), QStringLiteral("-n"), QStringLiteral("1"),
                                                QStringLiteral("-g"), qEnvironmentVariable("DUO_ROTATE_WEDGE_PATTERN", WEDGE_PATTERN)});
    }

    // When eDP-2 is enabled again its backlight comes back at maximum (firmware), while
    // PowerDevil only writes both backlights when the brightness changes. Copy the top
    // panel's level over, through logind (allowed for the active session, no root).
    void syncBottomBrightness()
    {
        const QString top = QStringLiteral("/sys/class/backlight/intel_backlight/"),
                      bottom = QStringLiteral("/sys/class/backlight/card0-eDP-2-backlight/");
        const int t = readSys(top + QStringLiteral("brightness")), tmax = readSys(top + QStringLiteral("max_brightness")),
                  b = readSys(bottom + QStringLiteral("brightness")), bmax = readSys(bottom + QStringLiteral("max_brightness"));
        if (t < 0 || tmax <= 0 || b < 0 || bmax <= 0)
            return;
        const uint target = uint(qint64(t) * bmax / tmax);
        if (uint(b) == target)
            return;
        QDBusMessage m = QDBusMessage::createMethodCall(QStringLiteral("org.freedesktop.login1"), QStringLiteral("/org/freedesktop/login1/session/auto"),
                                                        QStringLiteral("org.freedesktop.login1.Session"), QStringLiteral("SetBrightness"));
        m << QStringLiteral("backlight") << QStringLiteral("card0-eDP-2-backlight") << target;
        QDBusConnection::systemBus().call(m, QDBus::NoBlock);
        log(QStringLiteral("bottom panel brightness %1 -> %2 (top %3/%4)").arg(b).arg(target).arg(t).arg(tmax));
    }

    void notify(const QString &summary, const QString &body)
    {
        QDBusMessage m = QDBusMessage::createMethodCall(QStringLiteral("org.freedesktop.Notifications"),
                                                        QStringLiteral("/org/freedesktop/Notifications"),
                                                        QStringLiteral("org.freedesktop.Notifications"), QStringLiteral("Notify"));
        QVariantMap hints{{QStringLiteral("urgency"), QVariant::fromValue<uchar>(2)}};
        m << QStringLiteral("Zenbook Duo") << 0u << QStringLiteral("video-display") << summary << body << QStringList() << hints << 0;
        QDBusConnection::sessionBus().call(m, QDBus::NoBlock);
    }

    void applyRotation()
    {
        if (!m_config)
            return;
        const Rotation top = m_docked ? Rotation::Inverted : topRotationFor(m_orientation);
        const Rotation bottom = opposite(top);

        KScreen::OutputPtr t, b;
        for (const auto &o : m_config->outputs()) {
            if (o->name() == TOP)
                t = o;
            else if (o->name() == BOTTOM)
                b = o;
        }
        if (!t)
            return;

        bool changed = false;
        auto set = [&changed](const KScreen::OutputPtr &o, Rotation r) {
            if (o->autoRotatePolicy() != KScreen::Output::AutoRotatePolicy::Never) {
                o->setAutoRotatePolicy(KScreen::Output::AutoRotatePolicy::Never);
                changed = true;
            }
            if (o->rotation() != r) {
                o->setRotation(r);
                changed = true;
            }
        };
        set(t, top);
        if (b)
            set(b, bottom);

        // The keyboard covers the bottom panel when docked. Only act on dock
        // transitions so a manual choice in System Settings sticks until then.
        bool enabledBottom = false;
        if (b && m_dockChanged) {
            m_dockChanged = false;
            if (b->isEnabled() == m_docked) {
                if (!m_docked && m_wedged) {
                    log(QStringLiteral("bottom panel stays off: eDP-2 wedged this boot"));
                } else if (!m_docked && m_dockedAtBoot) {
                    log(QStringLiteral("bottom panel stays off: powered on with the keyboard docked"));
                    if (!m_toldDockedBoot) {
                        m_toldDockedBoot = true;
                        notify(QStringLiteral("Bottom screen off until a restart"),
                               QStringLiteral("The laptop was powered on with the keyboard lying on the bottom screen. Turning that "
                                              "screen on now would hit a kernel bug that can freeze the system. Shut down and power "
                                              "on with the keyboard lifted off to use it."));
                    }
                } else if (!m_docked && shuttingDown()) {
                    log(QStringLiteral("bottom panel stays off: system is shutting down"));
                } else {
                    b->setEnabled(!m_docked);
                    enabledBottom = !m_docked;
                    changed = true;
                    log(QStringLiteral("bottom panel %1").arg(m_docked ? QStringLiteral("off") : QStringLiteral("on")));
                }
            }
        }

        // Lay the panels out around the hinge. The hinge is at the top panel's
        // scan-out top edge (the panel is mounted upside down).
        if (b && b->isEnabled()) {
            // logical size after rotation: mode size / scale, swapped for portrait
            auto logical = [](const KScreen::OutputPtr &o, Rotation r) {
                const QSize px = o->currentMode() ? o->currentMode()->size() : QSize(2880, 1800);
                QSizeF s(px.width() / o->scale(), px.height() / o->scale());
                return (r == Rotation::Left || r == Rotation::Right) ? s.transposed() : s;
            };
            const QSizeF ts = logical(t, top), bs = logical(b, bottom);
            QPoint tp, bp;
            switch (top) {
            case Rotation::Inverted: tp = {0, 0}; bp = {0, int(ts.height())}; break;       // bottom panel below
            case Rotation::None: bp = {0, 0}; tp = {0, int(bs.height())}; break;           // tent: bottom panel above
            // Left/Right are RandR 90/270 (counter-clockwise): Left puts the scan-out top
            // edge, and so the hinge, on the right side of the image.
            case Rotation::Left: tp = {0, 0}; bp = {int(ts.width()), 0}; break;            // book: bottom panel on the right
            case Rotation::Right: bp = {0, 0}; tp = {int(bs.width()), 0}; break;           // book: bottom panel on the left
            default: break;
            }
            if (t->pos() != tp || b->pos() != bp) {
                t->setPos(tp);
                b->setPos(bp);
                changed = true;
            }
        }

        if (!changed) {
            m_touch.start();
            return;
        }
        log(QStringLiteral("orientation=%1 docked=%2 -> %3=%4 %5=%6")
                .arg(m_orientation)
                .arg(m_docked)
                .arg(TOP, QString::fromLatin1(name(top)), BOTTOM, QString::fromLatin1(name(bottom))));
        auto *op = new KScreen::SetConfigOperation(m_config);
        connect(op, &KScreen::SetConfigOperation::finished, this, [this] { m_touch.start(); });
        if (enabledBottom) {
            QTimer::singleShot(WEDGE_CHECK_MS, this, [this] { checkWedge(); });
            // after the modeset, and once more in case the firmware resets it late
            QTimer::singleShot(1500, this, [this] { syncBottomBrightness(); });
            QTimer::singleShot(5000, this, [this] { syncBottomBrightness(); });
        }
    }

    // Map each touchscreen/pen to its panel. The top digitizer reports upright
    // coordinates while its output is rotated 180 degrees more than the content,
    // so it needs a constant 180 degree compensation; the bottom one needs none.
    void applyTouch()
    {
        auto ses = QDBusConnection::sessionBus();
        QDBusInterface mgr(QStringLiteral("org.kde.KWin"), QStringLiteral("/org/kde/KWin/InputDevice"),
                           QStringLiteral("org.kde.KWin.InputDeviceManager"), ses);
        const QStringList devs = mgr.property("devicesSysNames").toStringList();
        for (const QString &ev : devs) {
            QDBusInterface dev(QStringLiteral("org.kde.KWin"), QStringLiteral("/org/kde/KWin/InputDevice/") + ev,
                               QStringLiteral("org.kde.KWin.InputDevice"), ses);
            const QString n = dev.property("name").toString();
            QString out;
            int orient = 0;
            if (n == QLatin1String("RAYD0001:00 2386:8C05") || n == QLatin1String("RAYD0001:00 2386:8C05 Stylus")) {
                out = TOP;
                orient = 8; // Qt::InvertedLandscapeOrientation
            } else if (n == QLatin1String("RAYD0002:00 2386:8C06") || n == QLatin1String("RAYD0002:00 2386:8C06 Stylus")) {
                out = BOTTOM;
            } else {
                continue;
            }
            bool fixed = false;
            if (dev.property("outputName").toString() != out) {
                dev.setProperty("outputName", out);
                fixed = true;
            }
            if (dev.property("orientationDBus").toInt() != orient) {
                dev.setProperty("orientationDBus", orient);
                fixed = true;
            }
            if (fixed)
                log(QStringLiteral("touch: %1 -> %2 orientation %3").arg(n, out).arg(orient));
        }
    }

    KScreen::ConfigPtr m_config;
    QDBusInterface *m_sensor = nullptr;
    QString m_orientation;
    bool m_docked = false;
    bool m_dockChanged = false;
    bool m_claimed = false;
    bool m_shuttingDown = false;
    bool m_wedged = false;
    bool m_dockedAtBoot = false;
    bool m_toldDockedBoot = false;
    udev *m_udev = nullptr;
    udev_monitor *m_udevMon = nullptr;
    QTimer m_stable, m_touch, m_dockStable;
};

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    Daemon d;
    return app.exec();
}

#include "duo-rotate.moc"
