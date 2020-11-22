import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: column
        width: page.width
        spacing: Theme.paddingLarge

        PageHeader {
            title: "Task 7 \nAddon"
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Demo-page in pageStack "
        }
        Button {
            text: "Remove this page from pageStack"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.pop()
        }
    }
}
