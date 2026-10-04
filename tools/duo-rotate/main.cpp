// duo-rotate: screen rotation, dual-panel layout and touch mapping for the
// ASUS Zenbook Duo UX8407AA under KDE Plasma (Wayland).
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
//    posture, bottom panel disabled; lifted off: bottom panel enabled again;
//  * otherwise follow iio-sensor-proxy, but only after an orientation has been
//    stable for STABLE_MS;
//  * after any output change (ours, KWin's or the user's) re-apply touch mapping.
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
#include <QDBusReply>
#include <QDBusVariant>
#include <QDir>
#include <QFile>
#include <QGuiApplication>
#include <QTimer>
#include <iostream>

using Rotation = KScreen::Output::Rotation;

static constexpr int STABLE_MS = 1000;   // orientation must hold this long
static constexpr int TOUCH_DELAY_MS = 400; // let KWin finish its own reset first
static const QString TOP = QStringLiteral("eDP-1");
static const QString BOTTOM = QStringLiteral("eDP-2");

static void log(const QString &s) { std::cerr << "duo-rotate: " << s.toStdString() << std::endl; }

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

        m_dockPoll.setInterval(500);
        connect(&m_dockPoll, &QTimer::timeout, this, [this] {
            const bool d = keyboardDocked();
            if (d != m_docked) {
                m_docked = d;
                log(QStringLiteral("keyboard %1").arg(d ? QStringLiteral("docked") : QStringLiteral("detached")));
                m_dockChanged = true;
                applyRotation();
            }
        });
        m_docked = keyboardDocked();
        m_dockPoll.start();

        auto sys = QDBusConnection::systemBus();
        m_sensor = new QDBusInterface(QStringLiteral("net.hadess.SensorProxy"), QStringLiteral("/net/hadess/SensorProxy"),
                                      QStringLiteral("net.hadess.SensorProxy"), sys, this);
        m_sensor->call(QStringLiteral("ClaimAccelerometer"));
        sys.connect(QStringLiteral("net.hadess.SensorProxy"), QStringLiteral("/net/hadess/SensorProxy"),
                    QStringLiteral("org.freedesktop.DBus.Properties"), QStringLiteral("PropertiesChanged"), this,
                    SLOT(sensorChanged(QString, QVariantMap, QStringList)));
        m_orientation = m_sensor->property("AccelerometerOrientation").toString();

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
        });
    }

public Q_SLOTS:
    void sensorChanged(const QString &, const QVariantMap &changed, const QStringList &)
    {
        if (!changed.contains(QStringLiteral("AccelerometerOrientation")))
            return;
        m_orientation = changed.value(QStringLiteral("AccelerometerOrientation")).toString();
        log(QStringLiteral("sensor: %1").arg(m_orientation));
        m_stable.start(); // restart: only act once the reading stays put
    }

private:
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
        if (b && m_dockChanged) {
            m_dockChanged = false;
            if (b->isEnabled() == m_docked) {
                b->setEnabled(!m_docked);
                changed = true;
                log(QStringLiteral("bottom panel %1").arg(m_docked ? QStringLiteral("off") : QStringLiteral("on")));
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
            case Rotation::Left: bp = {0, 0}; tp = {int(bs.width()), 0}; break;            // book: bottom panel on the left
            case Rotation::Right: tp = {0, 0}; bp = {int(ts.width()), 0}; break;           // book: bottom panel on the right
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
            if (dev.property("outputName").toString() != out)
                dev.setProperty("outputName", out);
            if (dev.property("orientationDBus").toInt() != orient)
                dev.setProperty("orientationDBus", orient);
        }
    }

    KScreen::ConfigPtr m_config;
    QDBusInterface *m_sensor = nullptr;
    QString m_orientation;
    bool m_docked = false;
    bool m_dockChanged = false;
    QTimer m_stable, m_touch, m_dockPoll;
};

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    Daemon d;
    return app.exec();
}

#include "main.moc"
