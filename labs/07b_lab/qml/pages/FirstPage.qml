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
                text: qsTr("Task 1")
                onClicked: pageStack.push(Qt.resolvedUrl("task01.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("task02.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("task03.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("task04.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("task05.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("task06.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                text: qsTr("Task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("task07.qml"))
                anchors.horizontalCenter: parent.horizontalCenter
            }

        } // Column
    } // SilicaFlickable
} // Page
