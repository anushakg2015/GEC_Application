import QtQuick 2.12
import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.0
import QtQuick 2.2



Rectangle {
    color: "black"
    signal  imagepreviousClicked();
    id: root

    //source: "qrc:/gallarypic.jpg"
    property int temp: 0



    //signal fileclicked();


    property var imgArray:[ imgArray =avinash.userimage()]

    GridView{
        id:grid
        visible: true
        y:60
        width: root.width
        height: root.height
        anchors.centerIn: parent
        model: imgArray.length
        //model: avinash.userimage(index)
        delegate: del1
        interactive: true
        clip: true


        cellWidth: root.width
        cellHeight: root.height
    }

    Component{
        id:del1
        Rectangle{
            id:rect1
            Row{
                spacing: 200

                Image {
                    id: i1
                    width: root.width
                    height: root.height
                    source: imgArray[index]

                }

            }

        }

    }


    Component.onCompleted:{
        // visible = true
    }

    Item{
        id:my2
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 20
        Rectangle{

            id:my1
            //radius: 10
            height: 40
            width: 150
            Text {
                anchors.centerIn: parent
                text: qsTr("PREVIOUS")
                font{
                    bold: true
                    pixelSize: 20
                }
            }

            color: "orange"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    //icon.visible=true
                    imagepreviousClicked()
                }
            }
        }

    }



}








