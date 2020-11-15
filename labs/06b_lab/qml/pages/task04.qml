import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    XmlListModel {
        id: xmlmodel
        source: "http://www.cbr.ru/scripts/XML_daily.asp"
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"; }
        XmlRole { name: "Value"; query: "Value/string()" }
    }

    SilicaListView {
        id: slv
        model: xmlmodel
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Task 4" + "\n" +
                        "Valute courses" + "\n" +
                        "[Info from cbr.ru]")
        }
        spacing: 10
        delegate: Column {
            width: parent.width
            Label {
                width: parent.width;
                text: Name + "\n" + Value
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
    } // SilicaListView
} // Page
