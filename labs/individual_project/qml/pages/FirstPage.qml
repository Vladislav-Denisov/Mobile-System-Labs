import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Main Page")
            }
            Button {
                text: qsTr("Filter-demo")
                onClicked: pageStack.push(Qt.resolvedUrl("FilterPage.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
        } // Column
    } // SilicaFlickable
} // Page
