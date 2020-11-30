#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include "filter.h"

int main(int argc, char *argv[])
{
    QGuiApplication *app = SailfishApp::application(argc, argv);
    QQuickView *view = SailfishApp::createView();

    view->setSource(SailfishApp::pathTo("qml/individual_project.qml"));

    qmlRegisterType<Filter>("custom.Filter", 1, 0, "Filter");
    view->show();

    return app->exec();
}
