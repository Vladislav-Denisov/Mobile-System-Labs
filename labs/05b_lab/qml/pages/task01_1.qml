import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        id: column
        width: page.width
        spacing: Theme.paddingLarge
        PageHeader {
            title: qsTr("Task 1 (first)")
        }
        Button {
            text: "Next page"
            onClicked: pageStack.push(Qt.resolvedUrl("task01_2.qml"))
        }
        Button {
            text: "Previous page"
            onClicked: pageStack.pop()
        }
        Label {
            text: "pageStack: " + pageStack.depth
        }
    }
}
