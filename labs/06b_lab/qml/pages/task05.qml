import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    Component.onCompleted: {
        loadCourses()
    }

    function loadCourses() {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://www.cbr.ru/scripts/XML_daily.asp", true);

        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlModel.xml = xhr.responseText.replace("windows-1251","utf-8");
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlModel
        query: "/ValCurs/Valute"
        XmlRole{ name: "Name"; query: "Name/string()";}
        XmlRole{ name:"Value"; query:"Value/string()";}
    }

    SilicaListView {
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Task 5" + "\n" +
                        "(XMLHttpRequest)" + "\n" +
                        "Valute courses" + "\n" +
                        "[Info from cbr.ru]")
        }
        model: xmlModel
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
