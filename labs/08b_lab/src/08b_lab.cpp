#ifdef QT_QML_DEBUG
#include <QtQuick>
#include "counter.h"
#include "list_of_strings.h"
#endif

#include <sailfishapp.h>

int main(int argc, char *argv[])
{
    // main
    QGuiApplication *app = SailfishApp::application(argc, argv);
    QQuickView *view = SailfishApp::createView();
    view->setSource(SailfishApp::pathTo("qml/08b_lab.qml"));
    qmlRegisterType<Counter>("custom.Counter", 1, 0, "Counter");
    qmlRegisterType<ListOfStrings>("custom.ListOfStrings", 1, 0, "ListOfStrings");
    view->show();

    // Demo task 2
    const QMetaObject metaCounter = Counter::staticMetaObject;
    QObject *obj = metaCounter.newInstance();
    QObject::connect(obj, SIGNAL(countChange()), obj, SLOT(print()));
    metaCounter.invokeMethod(obj,"increment");
    metaCounter.invokeMethod(obj,"increment");
    metaCounter.invokeMethod(obj,"increment");
    metaCounter.invokeMethod(obj,"reset");
    // end Demo task 2

    return app->exec();
}
