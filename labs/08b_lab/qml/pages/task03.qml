import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.Counter 1.0


Page {
    id: page

    Counter {
        id: counter
    }

    Column {
        id: column
        width: page.width
        spacing: Theme.paddingLarge

        PageHeader { title: "Task 3"}

        Label {
            text: counter.count
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 64
        }

        Button {
            text: "Increment"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: counter.increment()
        }

        Button {
            text: "Reset"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: counter.reset()
        }
    }
}
