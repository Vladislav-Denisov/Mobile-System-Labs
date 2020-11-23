import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

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
                text: qsTr("Counter without initialization")
                onClicked: pageStack.push(Qt.resolvedUrl("task03.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Counter with initialization")
                onClicked: pageStack.push(Qt.resolvedUrl("task04.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("List of strings")
                onClicked: pageStack.push(Qt.resolvedUrl("task05-06.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }

        } // Column
    } // SilicaFlickable
} // Page
