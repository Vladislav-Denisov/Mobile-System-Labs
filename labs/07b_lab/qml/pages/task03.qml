import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width

            PageHeader {
                title: "Task 3"
            }

            Label {
                id: label
                text: "Tap and hold!"
                color: "black"
                font.pixelSize: 64
                anchors.horizontalCenter: parent.horizontalCenter
                state: "normal"

                states: [
                    State {
                        name: "normal"

                        PropertyChanges {
                            target: label
                            y: 100
                        }
                        PropertyChanges {
                            target: label
                            color: "white"
                        }
                        PropertyChanges {
                            target: label
                            rotation: 0
                        }
                    },

                    State {
                        name: "inverted"

                        PropertyChanges {
                            target: label
                            y: 500
                        }
                        PropertyChanges {
                            target: label
                            color: "purple"
                        }
                        PropertyChanges {
                            target: label
                            rotation: 180
                        }
                    }
                ]

                transitions: [
                    Transition {
                        NumberAnimation {
                            property: "y"
                            duration: 1500
                        }
                        RotationAnimation {
                            direction: RotationAnimation.Counterclockwise
                            duration: 1500
                        }
                        ColorAnimation {
                            duration: 1500
                        }
                    }
                ]

                MouseArea {
                    anchors.fill: parent
                    onPressed: label.state = (label.state == "normal") ? "inverted" : "normal"
                    onReleased: label.state = (label.state == "normal") ? "inverted" : "normal"
                }

            }
        }
    }
}
