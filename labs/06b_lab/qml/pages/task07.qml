import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0
Page {
    id: page

    ConfigurationValue {
        id: set_for_text
        key: "/apps/06b_lab/setting_for_text"
        defaultValue: "none"
    }
    ConfigurationValue{
        id: set_for_switch
        key: "/apps/06b_lab/setting_for_switch"
        defaultValue: false
    }

    Column {
        width: parent.width
        PageHeader {
            title: qsTr("Task 7" + "\n" +"ConfigurationValues")
        }

        TextSwitch {
            id: textswitch
            text: "flag"
            checked: set_for_switch.value
        }

        TextField {
            id:textfield
            width: parent.width
            text: set_for_text.value
        }

        Button {
             width: parent.width
             text: "Save configs"
             onClicked: {
                 set_for_text.value = textfield.text
                 set_for_switch.value = textswitch.checked
             }
         }
    } // Column
}
