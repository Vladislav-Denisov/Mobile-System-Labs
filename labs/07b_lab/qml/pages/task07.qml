import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property var added: 0
    property var removed: 0
    property var prev: 0

    Connections {
        target: pageStack
        onDepthChanged: {
            if (page.prev > pageStack.depth) {
                page.removed++
            }
            else {
                page.added++
            }
            page.prev = pageStack.depth
        }
    }

    Column {
        id: column

        width: page.width
        spacing: Theme.paddingLarge
        PageHeader {
            title: "Task 7"
        }
        Label {
            text: "Count added: " + added
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Label {
            text: "Count removed: " + removed
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Add"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(Qt.resolvedUrl("task07-demo.qml"))
        }
    }
}
