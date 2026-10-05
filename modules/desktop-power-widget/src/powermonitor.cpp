// powermonitor: QML plugin behind the "Zenbook Duo Power" panel widget.
//
// Reads everything straight from sysfs (a few small files per sample, no helper
// processes): battery power and charge (power_supply/BAT0), Intel RAPL energy
// counters (powercap intel-rapl:0 package/core/uncore/dram; readable for the wheel
// group through the module's udev rule), temperatures and fans (hwmon, found by name).
// The widget sets the sampling interval: slow while it only shows the number in the
// panel, faster while its popup is open.
//
// Total system power is only measurable on battery (the battery fuel gauge). On AC the
// widget shows processor + memory power and the charging rate instead of guessing.
// The RAPL "psys" platform counter is not used: on this model it is uncalibrated
// (about 2x the real battery drain).

#include <QDBusConnection>
#include <QDBusInterface>
#include <QDBusVariant>
#include <QDir>
#include <QFile>
#include <QProcess>
#include <QQmlEngine>
#include <QQmlExtensionPlugin>
#include <QTimer>
#include <chrono>
#include <cmath>
#include <qqml.h>

static qint64 readInt(const QString &path, bool *ok = nullptr)
{
    QFile f(path);
    if (!f.open(QIODevice::ReadOnly)) {
        if (ok)
            *ok = false;
        return 0;
    }
    bool good = false;
    const qint64 v = f.readAll().trimmed().toLongLong(&good);
    if (ok)
        *ok = good;
    return v;
}

static QString readStr(const QString &path)
{
    QFile f(path);
    return f.open(QIODevice::ReadOnly) ? QString::fromUtf8(f.readAll()).trimmed() : QString();
}

class PowerMonitor : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged)
    Q_PROPERTY(bool onBattery MEMBER m_onBattery NOTIFY updated)
    Q_PROPERTY(QString batteryStatus MEMBER m_batteryStatus NOTIFY updated)
    Q_PROPERTY(int batteryPercent MEMBER m_batteryPercent NOTIFY updated)
    Q_PROPERTY(double batteryWatts MEMBER m_batteryWatts NOTIFY updated)
    Q_PROPERTY(double totalWatts MEMBER m_totalWatts NOTIFY updated)
    Q_PROPERTY(bool raplAvailable MEMBER m_raplAvailable NOTIFY updated)
    Q_PROPERTY(double packageWatts MEMBER m_packageWatts NOTIFY updated)
    Q_PROPERTY(double coreWatts MEMBER m_coreWatts NOTIFY updated)
    Q_PROPERTY(double socWatts MEMBER m_socWatts NOTIFY updated)
    Q_PROPERTY(double memoryWatts MEMBER m_memoryWatts NOTIFY updated)
    Q_PROPERTY(double restWatts MEMBER m_restWatts NOTIFY updated)
    Q_PROPERTY(int minutesLeft MEMBER m_minutesLeft NOTIFY updated)
    Q_PROPERTY(double cpuTemp MEMBER m_cpuTemp NOTIFY updated)
    Q_PROPERTY(double ssdTemp MEMBER m_ssdTemp NOTIFY updated)
    Q_PROPERTY(double wifiTemp MEMBER m_wifiTemp NOTIFY updated)
    Q_PROPERTY(int fanCpu MEMBER m_fanCpu NOTIFY updated)
    Q_PROPERTY(int fanGpu MEMBER m_fanGpu NOTIFY updated)
    Q_PROPERTY(int healthPercent MEMBER m_healthPercent NOTIFY updated)
    Q_PROPERTY(int cycles MEMBER m_cycles NOTIFY updated)
    Q_PROPERTY(int chargeLimit MEMBER m_chargeLimit NOTIFY updated)
    Q_PROPERTY(QString profile MEMBER m_profile NOTIFY updated)

public:
    explicit PowerMonitor(QObject *parent = nullptr)
        : QObject(parent)
    {
        findHwmon();
        connect(&m_timer, &QTimer::timeout, this, &PowerMonitor::sample);
        m_timer.setTimerType(Qt::CoarseTimer); // let the kernel batch our wakeups with others
        m_timer.start(m_interval);
        sample();
    }

    int interval() const { return m_interval; }
    void setInterval(int ms)
    {
        ms = qBound(500, ms, 60000);
        if (ms == m_interval)
            return;
        m_interval = ms;
        m_timer.start(ms);
        Q_EMIT intervalChanged();
    }

    Q_INVOKABLE void setProfile(const QString &profile)
    {
        QDBusInterface ppd(QStringLiteral("org.freedesktop.UPower.PowerProfiles"), QStringLiteral("/org/freedesktop/UPower/PowerProfiles"),
                           QStringLiteral("org.freedesktop.DBus.Properties"), QDBusConnection::systemBus());
        ppd.call(QStringLiteral("Set"), QStringLiteral("org.freedesktop.UPower.PowerProfiles"), QStringLiteral("ActiveProfile"),
                 QVariant::fromValue(QDBusVariant(profile)));
        sample();
    }

    Q_INVOKABLE void openPowerSettings()
    {
        QProcess::startDetached(QStringLiteral("systemsettings"), {QStringLiteral("kcm_powerdevilprofilesconfig")});
    }

Q_SIGNALS:
    void updated();
    void intervalChanged();

private:
    void findHwmon()
    {
        const QDir dir(QStringLiteral("/sys/class/hwmon"));
        for (const QString &h : dir.entryList(QDir::Dirs | QDir::NoDotAndDotDot)) {
            const QString p = dir.filePath(h);
            const QString name = readStr(p + QStringLiteral("/name"));
            if (name == QLatin1String("coretemp"))
                m_hwCore = p;
            else if (name == QLatin1String("asus"))
                m_hwAsus = p;
            else if (name == QLatin1String("nvme"))
                m_hwNvme = p;
            else if (name.startsWith(QLatin1String("iwlwifi")))
                m_hwWifi = p;
        }
    }

    // Watts from a RAPL energy counter over the time since the previous sample.
    double rapl(const QString &domain, qint64 nowNs, bool *ok)
    {
        const QString base = QStringLiteral("/sys/class/powercap/") + domain;
        const qint64 e = readInt(base + QStringLiteral("/energy_uj"), ok);
        if (!*ok)
            return 0;
        Counter &c = m_counters[domain];
        double w = -1;
        if (c.ns > 0 && nowNs > c.ns) {
            qint64 de = e - c.uj;
            if (de < 0) // counter wrapped
                de += readInt(base + QStringLiteral("/max_energy_range_uj"));
            w = double(de) / 1e6 / (double(nowNs - c.ns) / 1e9);
        }
        c = {e, nowNs};
        return w;
    }

    static double smooth(double prev, double now)
    {
        if (now < 0 || std::isnan(now))
            return prev;
        return (prev <= 0 || std::isnan(prev)) ? now : prev * 0.5 + now * 0.5;
    }

    void sample()
    {
        const QString bat = QStringLiteral("/sys/class/power_supply/BAT0/");
        m_batteryStatus = readStr(bat + QStringLiteral("status"));
        m_onBattery = m_batteryStatus == QLatin1String("Discharging");
        m_batteryPercent = int(readInt(bat + QStringLiteral("capacity")));
        const double batW = readInt(bat + QStringLiteral("power_now")) / 1e6;
        m_batteryWatts = m_onBattery ? batW : (m_batteryStatus == QLatin1String("Charging") ? -batW : 0);
        const qint64 eNow = readInt(bat + QStringLiteral("energy_now")), eFull = readInt(bat + QStringLiteral("energy_full")),
                     eDesign = readInt(bat + QStringLiteral("energy_full_design"));
        m_healthPercent = eDesign > 0 ? int(qRound(100.0 * eFull / eDesign)) : -1;
        m_cycles = int(readInt(bat + QStringLiteral("cycle_count")));
        bool okLimit = false;
        m_chargeLimit = int(readInt(bat + QStringLiteral("charge_control_end_threshold"), &okLimit));
        if (!okLimit)
            m_chargeLimit = -1;
        m_minutesLeft = -1;
        if (m_onBattery && batW > 0.5)
            m_minutesLeft = int(eNow / 1e6 / batW * 60);
        else if (m_batteryStatus == QLatin1String("Charging") && batW > 0.5) {
            const qint64 target = okLimit ? eFull * m_chargeLimit / 100 : eFull;
            if (target > eNow)
                m_minutesLeft = int((target - eNow) / 1e6 / batW * 60);
        }

        const qint64 nowNs = std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::steady_clock::now().time_since_epoch()).count();
        bool ok = false;
        const double pkg = rapl(QStringLiteral("intel-rapl:0"), nowNs, &ok);
        m_raplAvailable = ok;
        if (ok) {
            bool okc = false, okd = false;
            const double core = rapl(QStringLiteral("intel-rapl:0:0"), nowNs, &okc);
            const double dram = rapl(QStringLiteral("intel-rapl:0:2"), nowNs, &okd);
            m_packageWatts = smooth(m_packageWatts, pkg);
            m_coreWatts = smooth(m_coreWatts, core);
            m_memoryWatts = smooth(m_memoryWatts, dram);
            m_socWatts = std::max(0.0, m_packageWatts - m_coreWatts);
        }
        if (m_onBattery) {
            m_totalWatts = smooth(m_totalWatts, batW);
            m_restWatts = m_raplAvailable ? std::max(0.0, m_totalWatts - m_packageWatts - m_memoryWatts) : -1;
        } else {
            m_totalWatts = -1; // not measurable on AC
            m_restWatts = -1;
        }

        m_cpuTemp = m_hwCore.isEmpty() ? -1 : readInt(m_hwCore + QStringLiteral("/temp1_input")) / 1000.0;
        m_ssdTemp = m_hwNvme.isEmpty() ? -1 : readInt(m_hwNvme + QStringLiteral("/temp1_input")) / 1000.0;
        m_wifiTemp = m_hwWifi.isEmpty() ? -1 : readInt(m_hwWifi + QStringLiteral("/temp1_input")) / 1000.0;
        m_fanCpu = m_hwAsus.isEmpty() ? -1 : int(readInt(m_hwAsus + QStringLiteral("/fan1_input")));
        m_fanGpu = m_hwAsus.isEmpty() ? -1 : int(readInt(m_hwAsus + QStringLiteral("/fan2_input")));

        // cheap: one cached D-Bus property read per sample, only while the popup is open
        if (m_interval <= 1500 || m_profile.isEmpty()) {
            QDBusInterface ppd(QStringLiteral("org.freedesktop.UPower.PowerProfiles"), QStringLiteral("/org/freedesktop/UPower/PowerProfiles"),
                               QStringLiteral("org.freedesktop.UPower.PowerProfiles"), QDBusConnection::systemBus());
            const QString p = ppd.property("ActiveProfile").toString();
            if (!p.isEmpty())
                m_profile = p;
        }
        Q_EMIT updated();
    }

    struct Counter {
        qint64 uj = 0;
        qint64 ns = 0;
    };
    QHash<QString, Counter> m_counters;
    QTimer m_timer;
    int m_interval = 2000;
    QString m_hwCore, m_hwAsus, m_hwNvme, m_hwWifi;

    bool m_onBattery = false;
    QString m_batteryStatus;
    int m_batteryPercent = -1;
    double m_batteryWatts = 0, m_totalWatts = -1;
    bool m_raplAvailable = false;
    double m_packageWatts = -1, m_coreWatts = -1, m_socWatts = -1, m_memoryWatts = -1, m_restWatts = -1;
    int m_minutesLeft = -1;
    double m_cpuTemp = -1, m_ssdTemp = -1, m_wifiTemp = -1;
    int m_fanCpu = -1, m_fanGpu = -1;
    int m_healthPercent = -1, m_cycles = -1, m_chargeLimit = -1;
    QString m_profile;
};

class ZenbookDuoPowerPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override { qmlRegisterType<PowerMonitor>(uri, 1, 0, "PowerMonitor"); }
};

#include "powermonitor.moc"
