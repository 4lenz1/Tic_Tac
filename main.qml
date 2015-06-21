import QtQuick 2.4
import QtQuick.Controls 1.2

ApplicationWindow {
    id:window
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")
    onWidthChanged: {
        adjustline();
    }
    onHeightChanged: {
        adjustline();
    }

    Item{
        id:itemMain
        anchors.centerIn: parent
        width: parent.width
        height: parent.height

        Component.onCompleted: {
            drawLine();
            drawCircle();
        }
    }

    function adjustline(){
        if(window.height > window.width){
            itemMain.width = itemMain.height = window.width;
        }else if(window.height < window.width){
            itemMain.width = itemMain.height = window.height;
        }else{
            itemMain.width = itemMain.height = window.height;
        }
    }
    function drawLine(){
        for(var col = 1 ; col < 3 ; col++){
            var colLne = Qt.createQmlObject('import QtQuick 2.4; Rectangle {
                color: "black";
                width: 5; height: parent.height;
                x: parent.width * '+col+'/3 - width;}',
                itemMain, "col"+col);
        }
        for(var row = 1 ; row < 3 ; row++){
            var rowLine = Qt.createQmlObject('import QtQuick 2.4;Rectangle {
                color: "black";
                width: parent.width ; height:5;
                y:parent.height * '+row+' /3 - height;}',
                itemMain, "row"+row);
        }
    }

    function drawCircle(){
        var circle = Qt.createQmlObject('import QtQuick 2.4;Rectangle {
            color: "red";
            width: parent.width / 3 -10 ; height:width;
            radius : width * .5;
            y:100;}',
            itemMain, "circle");
    }
}
