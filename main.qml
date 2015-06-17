import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")

    Item{
        id:itemMain
        anchors.fill: parent

        //anchors.centerIn: parent
        //width: parent.width
        //height: width

        Rectangle{
            id : col1
            width: 5
            height: parent.height
            x: parent.width * 2 /3 - width
            color: "black"
        }

        Rectangle{
            id : col2
            width: 5
            height: parent.height
            x: parent.width * 1 /3 - width
            color: "black"
        }

        Rectangle{
            id : row1
            height : 5
            width: parent.width
            y: parent.height* 2 /3 - height
            color: "black"
        }

        Rectangle{
            id : row2
            height: 5
            width: parent.width
            y: parent.height * 1 /3 - height
            color: "black"
        }
    }
}
