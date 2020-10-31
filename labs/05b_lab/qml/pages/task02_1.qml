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
            title: qsTr("Task 2")
        }
        Button {
            text: "Attach 'Other page'"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("task02_2.qml"))
        }
        Button {
            text: "Deattach 'Other page'"
            onClicked: pageStack.popAttached()
        }
    }
}
