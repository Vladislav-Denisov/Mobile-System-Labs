import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

     SilicaFlickable {
        anchors.fill: parent

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Практика №1")
            }

            Label {
                id: label
                property int count : 0
                text: ('Счетчик: ' + count)
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Button {
                id: buttonIncrease
                text: qsTr("Увеличить счётчик")
                width: parent.width
                onClicked: {
                    if (label.count < 10)
                        label.count++
                }
            }



        } // Column

    } // SilicaFlickable
}
