import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Component.onCompleted: traffic_light.change_state()


    Column {
        id: column
        width: page.width

        PageHeader {
            title: "Task 4"
        }

        TrafficLight {
            id: traffic_light
        }
    }
}
