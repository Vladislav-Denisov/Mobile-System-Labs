import QtQuick 2.0
import Sailfish.Silica 1.0
import custom.Filter 1.0


Page {
    id: page

    allowedOrientations: Orientation.All

    Filter {
        id: filter
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Filter Page")
            }

            // Setting a link to an image
            TextField {
                id: txtfield
                width: parent.width / 5 * 4
                //text: "https://i.imgur.com/zhxREoP.png"
                placeholderText: "Enter the link..."
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Button {
                id: getUrlButton
                text: qsTr("Load image")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    if (filter.setUrl(txtfield.text)) {
                        filter.loadImage();
                        image1.source = filter.getUrl();
                        image2.source = "qrc:images/no_image.png";
                    }
                }
            }

            // Starting the grayscale filter
            Button{
                text: qsTr("Convert to grayscale")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    image2.source = filter.grayfilter();
                }
            }

            Label {
                text: "SRC image below"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                id: image1
                width: parent.width / 4 * 3
                height: parent.width / 4 * 3
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:images/no_image.png"
            }

            Label {
                text: "Grayscale image below"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image{
                id: image2
                width: parent.width / 4 * 3
                height: parent.width / 4 * 3
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:images/no_image.png"
            }

        }
    }
}
