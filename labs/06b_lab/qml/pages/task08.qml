import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0
Page {
    id: page

    ConfigurationGroup {
        id: settings
        path: "/apps/06b_lab/settings"
        property string text: "none"
        property bool flag: false
    }

    Column {
        width: parent.width
        PageHeader {
            title: qsTr("Task 8" + "\n" + "ConfigurationGroup")
        }

        TextSwitch {
            id: textswitch
            text: "flag"
            checked: settings.flag
        }

        TextField {
            id: textfield
            width: parent.width
            text: settings.text
        }

        Button {
             width: parent.width
             text: "Save"
             onClicked: {
                settings.text = textfield.text
                settings.flag = textswitch.checked
             }
         }
    } // Column
}
