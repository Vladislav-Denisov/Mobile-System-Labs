import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    Column {
        anchors.fill: parent
        id: column
        width: parent.width
        spacing: Theme.paddingMedium
        DialogHeader {
            acceptText : "Accept"
            cancelText : "Cancel"
        }
        Row {
            width: parent.width
            spacing: 250

            TextField {
                id: f1
                width: parent.width/3
            }
            TextField {
                id: f2
                width: parent.width/3
            }
        }
        Button {
            width: 250
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Sum"
            onClicked: {
                console.log(parseInt(f1.text) + parseInt(f2.text))
            }
        }
    }
}
