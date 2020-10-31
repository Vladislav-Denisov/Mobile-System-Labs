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
            title: qsTr("Other page")
        }
        Button {
            text: "Back"
            onClicked: pageStack.navigateBack(1)
        }
    }
}
