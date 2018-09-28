#include "appmanager.h"
#include <QProcess>
#include <QApplication>

AppManager::AppManager(QObject *parent) : QObject(parent)
{

}

AppManager::~AppManager()
{

}

void AppManager::startApp(QString appname)
{
//    QString program = "/path/to/Qt/examples/widgets/analogclock";
    QStringList arguments;
//    arguments << "-style" << "fusion";

//    QProcess myProcess;
//    myProcess.start(appname, arguments, QIODevice::ReadWrite);
    QProcess::startDetached(appname);
    qApp->quit();
}

void AppManager::powerOff()
{
    QString program = "/usr/bin/gpio_test";
    QStringList arg;
    arg << "-s"<<"output"<<"-iGPIOF03"<<"-v"<<"0";
    QProcess myProcess;
    myProcess.start(program, arg, QIODevice::ReadWrite);
    myProcess.waitForFinished();
}
