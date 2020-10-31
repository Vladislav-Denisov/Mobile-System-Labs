import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    property  int count : 0
    Label {
        id: cover_label
        text: "Count: " + count
        anchors.centerIn: parent
    }

    CoverActionList {
        CoverAction {
            iconSource: "image://theme/icon-cover-cancel"
            onTriggered: count = 0
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: count++
        }
    }
}
