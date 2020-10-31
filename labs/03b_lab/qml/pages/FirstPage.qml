import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Dialog")
                onClicked: pageStack.push(Qt.resolvedUrl("SumDialog.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            property int recSize: 200

            PageHeader {
                title: qsTr("Lab03b")
            }

            // Tasks 2, 3
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Tasks 2, 3")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Rectangle {
                id: squareRed
                color: "red"
                width: column.recSize
                height: column.recSize
                x: column.recSize / 2
                Rectangle {
                    id: squareGreen
                    color: "green"
                    width: column.recSize
                    height: column.recSize
                    x: column.recSize
                    y: column.recSize / 2
                    Rectangle {
                        id: squareBlue
                        color: "blue"
                        width: column.recSize
                        height: column.recSize
                        x: column.recSize / 2
                        y: -column.recSize / 2
                        Label {
                            text: qsTr("Квадрат")
                            color: "white"
                            anchors.centerIn: squareBlue
                        }
                    }
                }
            }

            // Task separator
            Rectangle { width: column.recSize; height: column.recSize/2; color: "transparent" }

            // Task 4
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 4 - Rows")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Row {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge

                Rectangle { width: column.recSize; height: column.recSize; color: "red" }
                Rectangle { width: column.recSize; height: column.recSize; color: "green" }
                Rectangle { width: column.recSize; height: column.recSize; color: "blue" }
            }
            Row {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge

                Rectangle { width: column.recSize; height: column.recSize; color: "magenta" }
                Rectangle { width: column.recSize; height: column.recSize; color: "transparent" }
                Rectangle { width: column.recSize; height: column.recSize; color: "black" }
            }

            // Task 5
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 5 - Grid")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Grid {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge
                columns: 3
                rows: 2

                Rectangle { width: column.recSize; height: column.recSize; color: "red" }
                Rectangle { width: column.recSize; height: column.recSize; color: "green" }
                Rectangle { width: column.recSize; height: column.recSize; color: "blue" }
                Rectangle { width: column.recSize; height: column.recSize; color: "magenta" }
                Rectangle { width: column.recSize; height: column.recSize; color: "transparent" }
                Rectangle { width: column.recSize; height: column.recSize; color: "black" }
            }

            // Task 6
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 6")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Grid {
                spacing: Theme.paddingLarge
                x: Theme.paddingLarge
                columns: 2
                rows: 1
                Rectangle {
                    id: square
                    width: column.recSize
                    height: column.recSize
                    color: "black"
                }
                Rectangle {
                    width: square.width
                    height: square.height
                    color: "black"
                    transform: [
                        Scale { yScale: 0.5 },
                        Rotation { angle: -45 },
                        Translate { x: square.width/2; y:  square.height/2 + 30 }
                    ]
                }
            }

            // Task 7
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Task 7")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
            Rectangle {
                id: borderRec
                width: parent.width
                height: 3 * column.recSize
                color: "transparent"
                property int duration: 2500
                Rectangle {
                    id: movingRec
                    x: borderRec.width / 2
                    y: 0
                    width: 0
                    height: 0
                    color: "yellow"
                    SequentialAnimation {
                        loops: Animation.Infinite
                        running: true
                        // Increase the size of the square and move down.
                        ParallelAnimation {
                            PropertyAnimation {
                                target: movingRec
                                property: "y"
                                from: 0
                                to: 500
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "width"
                                from: 0
                                to: column.recSize
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "height"
                                from: 0
                                to: column.recSize
                                duration: borderRec.duration
                            }
                        }
                        // Decrease the size of the square and move up.
                        ParallelAnimation {
                            PropertyAnimation {
                                target: movingRec
                                property: "y"
                                from: 500
                                to: 0
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "width"
                                from: column.recSize
                                to: 0
                                duration: borderRec.duration
                            }
                            PropertyAnimation {
                                target: movingRec
                                property: "height"
                                from: column.recSize
                                to: 0
                                duration: borderRec.duration
                            }
                        }
                    }
                }
            }

            Rectangle { height: column.recSize; width: column.recSize; color: "transparent" }
        }
    }
}
