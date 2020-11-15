import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property var modelData: [
        { bgcolor: "white", textcolor: "black", text: "Белый" },
        { bgcolor: "blue", textcolor: "white", text: "Синий" },
        { bgcolor: "green"},
        { bgcolor: "yellow", textcolor: "red", text: "Желтый" }
    ]

    SilicaListView {
        id: listView
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Task 3" + "\n" + "List of rectangles (JS)")
        }
        model: modelData
        delegate: Rectangle {
            id: rec
            width: parent.width
            height: 100
            color: modelData.bgcolor
            Text {
                anchors.centerIn: parent
                text: modelData.text || "Текст не указан"
                color: modelData.textcolor || "black"
            }
        } // delegate
    } // SilicaListView
} // Page
