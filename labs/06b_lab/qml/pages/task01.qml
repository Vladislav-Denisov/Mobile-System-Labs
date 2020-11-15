import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: dataModel
            ListElement { bgcolor: "white"; textcolor:"black"; text: "Белый" }
            ListElement { bgcolor: "blue"; textcolor:"white"; text: "Синий" }
            ListElement { bgcolor: "green";  textcolor:"blue";  text: "Зеленый" }
            ListElement { bgcolor: "yellow"; textcolor:"red"; text: "Желтый" }
    } // ListModel

    SilicaListView {
        anchors.fill: parent
        header: PageHeader {
            title: "Task 1" + "\n" + "List of rectangles"
        }
        model: dataModel
        delegate: Rectangle {
            width: parent.width
            height: 100
            color: model.bgcolor
            Text {
                anchors.centerIn: parent
                text: model.text
                color: model.textcolor
            }
        }
    } // SilicaListView
} // Page
