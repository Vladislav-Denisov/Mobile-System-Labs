import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Component.onCompleted: change_state()
    property int size: 240

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width

            PageHeader {
                title: "Task 1"
            }

            Rectangle {
                id: traffic_light
                color: "darkslategray"
                width: size
                height: 3 * size + 60
                anchors.horizontalCenter: parent.horizontalCenter
                state: "red_lights"

                Column {
                    anchors.centerIn: parent
                    spacing: 15

                    Rectangle {
                        id: red_light
                        width: size
                        height: size
                        radius: size
                        color: "black"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        id: yellow_light
                        width: size
                        height: size
                        radius: size
                        color: "black"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        id: green_light
                        width: size
                        height: size
                        radius: size
                        color: "black"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                } // Column - traffic light signals

                states: [
                    State {
                        name: "none"
                    },

                    State {
                        name: "red_lights"
                        PropertyChanges {
                            target: red_light
                            color: "red"
                        }
                    },

                    State {
                        name: "red_and_yellow_lights"
                        PropertyChanges {
                            target: red_light
                            color: "red"
                        }
                        PropertyChanges {
                            target: yellow_light
                            color: "yellow"
                        }
                    },

                    State {
                        name: "yellow_lights"
                        PropertyChanges {
                            target: yellow_light
                            color: "yellow"
                        }
                    },

                    State {
                        name: "green_lights"
                        PropertyChanges {
                            target: green_light
                            color: "green"
                        }
                    }
                ]

                transitions: [
                    Transition {
                        from: "red_lights"
                        to: "red_and_yellow_lights"
                        SequentialAnimation {
                            PauseAnimation {
                                duration: 3000
                            }
                            ColorAnimation {
                                targets: [red_light, yellow_light, green_light]
                                property: "color"
                                duration: 0
                            }
                            ScriptAction {
                                script: change_state()
                            }
                        }
                    },

                    Transition {
                        from: "red_and_yellow_lights"
                        to: "green_lights"
                        SequentialAnimation {
                            PauseAnimation {
                                duration: 1000
                            }
                            ColorAnimation {
                                targets: [red_light, yellow_light, green_light]
                                property: "color"
                                duration: 0
                            }
                            ScriptAction {
                                script: change_state()
                            }
                        }
                    },

                    Transition {
                        from: "green_lights"
                        to: "yellow_lights"

                        SequentialAnimation {
                            PauseAnimation {
                                duration: 3000
                            }
                            // Begin green light flashing animation
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "black"
                                duration: 0
                            }
                            PauseAnimation {
                                duration: 500
                            }
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "green"
                                duration: 0
                            }
                            PauseAnimation {
                                duration: 500
                            }
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "black"
                                duration: 0
                            }
                            PauseAnimation {
                                duration: 500
                            }
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "green"
                                duration: 0
                            }
                            PauseAnimation {
                                duration: 500
                            }
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "black"
                                duration: 0
                            }
                            PauseAnimation {
                                duration: 500
                            }
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "green"
                                duration: 0
                            }
                            PauseAnimation {
                                duration: 500
                            }
                            ColorAnimation {
                                target: green_light
                                property: "color"
                                to: "black"
                                duration: 0
                            }
                            // End green light flashing animation

                            ColorAnimation {
                                targets: [red_light, yellow_light, green_light]
                                property: "color"
                                duration: 0
                            }
                            ScriptAction {
                                script: change_state()
                            }
                        }
                    },

                    Transition {
                        from: "yellow_lights"
                        to: "red_lights"

                        SequentialAnimation {
                            PauseAnimation {
                                duration: 1000
                            }
                            ColorAnimation {
                                targets: [red_light, yellow_light, green_light]
                                property: "color"
                                duration: 0
                            }
                            ScriptAction {
                                script: change_state()
                            }
                        }
                    }
                ]
            } // Rectangle - id: traffic_light
        } // Column
    } // SilicaFlickable

    function change_state() {
        switch(traffic_light.state) {
        case "red_lights":
            traffic_light.state = "red_and_yellow_lights";
            break;
        case "red_and_yellow_lights":
            traffic_light.state = "green_lights";
            break;
        case "green_lights":
            traffic_light.state = "yellow_lights";
            break;
        case "yellow_lights":
            traffic_light.state = "red_lights";
            break;
        }
    }
}
