// duo-kscreen: set KScreen output properties kscreen-doctor cannot (auto-rotate policy).
// usage: duo-kscreen <output> autorotate never|intabletmode|always [rotation none|left|right|inverted]
#include <KScreen/ConfigMonitor>
#include <KScreen/GetConfigOperation>
#include <KScreen/Output>
#include <KScreen/SetConfigOperation>
#include <QGuiApplication>
#include <QTimer>
#include <iostream>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);
    const QStringList a = app.arguments();
    if (a.size() < 4 || a[2] != QLatin1String("autorotate")) {
        std::cerr << "usage: duo-kscreen <output> autorotate never|intabletmode|always [rotation none|left|right|inverted]\n";
        return 2;
    }
    const QString name = a[1], policy = a[3];
    const QString rot = a.size() >= 6 ? a[5] : QString();
    auto *op = new KScreen::GetConfigOperation();
    QObject::connect(op, &KScreen::GetConfigOperation::finished, [&](KScreen::ConfigOperation *o) {
        if (o->hasError()) { std::cerr << "kscreen: " << o->errorString().toStdString() << "\n"; app.exit(1); return; }
        auto cfg = static_cast<KScreen::GetConfigOperation *>(o)->config();
        bool found = false;
        for (const auto &out : cfg->outputs()) {
            if (out->name() != name)
                continue;
            found = true;
            using P = KScreen::Output::AutoRotatePolicy;
            out->setAutoRotatePolicy(policy == QLatin1String("never") ? P::Never
                                     : policy == QLatin1String("always") ? P::Always
                                                                         : P::InTabletMode);
            if (!rot.isEmpty()) {
                using R = KScreen::Output::Rotation;
                out->setRotation(rot == QLatin1String("left") ? R::Left
                                 : rot == QLatin1String("right") ? R::Right
                                 : rot == QLatin1String("inverted") ? R::Inverted
                                                                    : R::None);
            }
        }
        if (!found) {
            std::cerr << "no output " << name.toStdString() << "\n";
            app.exit(1);
            return;
        }
        auto *set = new KScreen::SetConfigOperation(cfg);
        QObject::connect(set, &KScreen::SetConfigOperation::finished, [&]() { app.exit(0); });
    });
    QTimer::singleShot(10000, &app, [&]() { std::cerr << "timeout\n"; app.exit(3); });
    return app.exec();
}
