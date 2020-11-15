import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page;

    Column {
        id:column;
        anchors.fill: parent;
        PageHeader {
            title: qsTr("Task 2")
        }
        property int count: 0

        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: list.Top
            text: "Add item"
            onClicked: {
                dataModel.append({ text: "Item #" + column.count++ });
            }
        } // Button

        ListModel {
            id: dataModel
        }

        SilicaListView {
            id:list
            width: parent.width;
            height: parent.height - addButton.height;
            model: dataModel
            delegate: Rectangle {
                width: parent.width; height: 70; color: "skyblue";
                Text {
                    anchors.centerIn: parent
                    text: model.text
                }
                MouseArea {
                    id:mouse
                    anchors.fill: parent
                    onClicked: {
                        dataModel.remove(model.index, 1);
                    }
                }
            } // delegate
        } // SilicaListView
    } // Column
} // Page
