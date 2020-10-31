import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaListView {
        model: ListModel {
            id: tasksModel
            ListElement { name: "example 1"; date: "15.10.2020"; }
            ListElement { name: "example 2"; date: "16.10.2020"; }
            ListElement { name: "example 3"; date: "16.10.2020"; }
            ListElement { name: "example 4"; date: "17.10.2020"; }
            ListElement { name: "example 5"; date: "18.10.2020"; }
            ListElement { name: "example 6"; date: "18.10.2020"; }
        }

        anchors.fill: parent
        header: PageHeader { title: "Page with Tasks"; }
        section {
            property: 'date'
            delegate: SectionHeader { text: section }
        }
        delegate: Item {
            width: ListView.view.width
            height: Theme.itemSizeSmall
            Label { text: name }
        }
    }
}
