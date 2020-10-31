import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
                id: taskModel
                ListElement { name: "example 1"; date: "15.10.2020"; }
                ListElement { name: "example 2"; date: "16.10.2020"; }
                ListElement { name: "example 3"; date: "16.10.2020"; }
                ListElement { name: "example 4"; date: "17.10.2020"; }
                ListElement { name: "example 5"; date: "18.10.2020"; }
                ListElement { name: "example 6"; date: "18.10.2020"; }
            }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        model: taskModel
        delegate: Rectangle {
            width: view.height
            height: view.width
            Text {
                id: textDate
                anchors.bottom: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 36
                text: date
            }
            Text {
                id: textText
                anchors.top: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 36
                text: name
            }
        }
    }
}
