import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    id: page;

    Database { id: db }

    Component.onCompleted: db.select();

    Column {
        id:column;
        anchors.fill: parent;
        PageHeader {
           title: qsTr("Task 6" + "\n" +"Notes")
        }

        TextField {
            id: txtfield
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 5 * 4
            placeholderText: "Enter the text.."
        }

        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: list.Top
            text: "Add item"
            onClicked:{
                if (txtfield.text !== '') {
                    db.insertTask(txtfield.text);
                    db.select();
                }
            }
        }

        ListModel {
            id: tasksListModel
        }

        SilicaListView {
            id:list
            width: parent.width;
            height: parent.height - addButton.height;
            model: tasksListModel
            delegate: Rectangle {
                width: parent.width; height: 70; color: "skyblue";
                Text {
                    anchors.centerIn: parent
                    text: name
                }
                MouseArea {
                    id:mouse
                    anchors.fill: parent
                    onClicked: {
                        db.deleteTask(id);
                        db.select();
                    }
                }
            } // delegate
        } // SilicaListView
    } // Column
} // Page
