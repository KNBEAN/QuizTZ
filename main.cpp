#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qtqml>
#include "propertybinding.h"
int main(int argc, char *argv[])
{
    qmlRegisterType<propertybinding>("PropertyBinding", 1, 0, "PropertyBinding");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    qsrand(QTime::currentTime().msec()); //byc moze potrzebne na ios
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
