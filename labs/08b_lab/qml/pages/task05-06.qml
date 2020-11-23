import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.ListOfStrings 1.0


Page {
    id: page

    ListOfStrings {
        id: list_strings
    }

    Column {
        id: column
        width: page.width
        spacing: Theme.paddingLarge

        PageHeader { title: "Tasks 5, 6"}

        TextField {
            id: text_field
            width: parent.width
            placeholderText: "Input string here"
        }

        Button {
            text: "Add new string in list"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                list_strings.push(text_field.text);
                text_field.text = "";
            }
        }

        Button {
            text: "Remove last string from list"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: list_strings.pop()
        }

        Label {
            id: label_list_strings
            width: page.width
            wrapMode: "Wrap"
            text: list_strings.list
        }
    }
}
