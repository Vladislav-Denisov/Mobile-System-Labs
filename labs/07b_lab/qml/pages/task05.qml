import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: column
        width: page.width

        PageHeader {
            title: "Task 5"
        }

        CustomButton {
            anchors.horizontalCenter: parent.horizontalCenter
            color_button: "yellow"

            Text { text: "Custom Button" }
        }

    }
}
