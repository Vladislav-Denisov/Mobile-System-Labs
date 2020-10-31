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
                onClicked: pageStack.push(Qt.resolvedUrl("task01_1.qml"))
            }
            Button {
                text: qsTr("Task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("task02_1.qml"))
            }
            Button {
                text: qsTr("Task 3, 4, 5")
                onClicked: pageStack.push(Qt.resolvedUrl("task03-04-05.qml"))
            }
            Button {
                text: qsTr("Task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("task06.qml"))
            }
            Button {
                text: qsTr("Task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("task07.qml"))
            }
            Button {
                text: qsTr("Task 8")
                onClicked: pageStack.push(Qt.resolvedUrl("task08.qml"))
            }
            Button {
                text: qsTr("Task 9")
                onClicked: pageStack.push(Qt.resolvedUrl("task09.qml"))
            }
            Button {
                text: qsTr("Task 10")
                onClicked: pageStack.push(Qt.resolvedUrl("task10.qml"))
            }

        } // Column
    } // SilicaFlickable
} // Page
