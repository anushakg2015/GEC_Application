import QtQuick 2.0
import QtQuick.Controls 2.14
Item {

signal lbackClicked();

    Image {
        id: libraryimage
        source: "qrc:/finallibrary.png"
        scale: Qt.KeepAspectRatio
        width: parent.width
        height: parent.height
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 130
            anchors.top: parent.top
            anchors.topMargin:500
            id: vsn
            text: qsTr("Vision")
            font.pixelSize: 40
            color: "orange"
            font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 130
            anchors.top: parent.top
            anchors.topMargin: 600
            id: msn
            text: qsTr("Mission")
            font.pixelSize: 40
            color: "orange"
            font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 130
            anchors.top: parent.top
            anchors.topMargin: 515
            id: msnvsn
            font.pixelSize: 29
            color: "white"
            font.bold: true
            text: qsTr("
To become a good repository of technical information amongst stakeholders.


 ")
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 130
            anchors.top: parent.top
            anchors.topMargin: 615
            id: vsnex
            text: qsTr("
To serve as a storehouse of information through constant acquisition of books,journals
and e-resources.To establish a friendly learning environment to the users.")
            font.pixelSize: 29
            color: "white"
            font.bold: true
        }
        Image{
            anchors.left: parent.left
            anchors.leftMargin: 1260
            anchors.top: parent.top
            anchors.topMargin: 750
         id:my1
         //radius: 20
         height: 55
         width: 200
         source: "qrc:/rotateimage-removebg-preview1.png"
//         Text {
//             anchors.centerIn: parent
//             text: qsTr("<-BACK")
//             font{
//                 bold: true
//                 pixelSize: 20
//             }
//         }

    // color: "red"
     MouseArea{
         anchors.fill: parent
         onClicked: {
          lbackClicked()
         }
     }
    }


        Column{
            id:libbtns
            anchors.top: parent.top
            anchors.topMargin: 90
            anchors.left: parent.left
            anchors.leftMargin: 30
            spacing: 5
            anchors.fill: parent
            Rectangle{
                width: 200
                height: 35
                color: "gray"
                Text {
                    id: t1
                    text: qsTr("Timings")
                    anchors.centerIn: parent
                    font.pixelSize: 15
                    color: "white"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        libtiming.visible=true
                        libbooks.visible=false
                    }
                }
            }
            Rectangle{
                width: 200
                height: 35
                color: "gray"
                Text {
                    id: t2
                    text: qsTr("Collections")
                    anchors.centerIn: parent
                    font.pixelSize: 15
                    color: "white"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        libbooks.visible=true
                        libtiming.visible=false
                    }
                }
            }
            Rectangle{
                width: 200
                height: 35
                color: "gray"
                Text {
                    id: t3
                    text: qsTr("Gallary")
                    anchors.centerIn: parent
                    font.pixelSize: 15
                    color: "white"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        libswipee.visible=true
                         libbtns.visible=false
                        staffback.visible=true
                    }
                }
            }
            Rectangle{
                width: 200
                height: 35
                color: "gray"
                Text {
                    id: t4
                    text: qsTr("Staff")
                    anchors.centerIn: parent
                    font.pixelSize: 13
                    color: "white"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        libstaffid.visible=true
                        staffback2.visible=true
                        libbooks.visible=false
                        libtiming.visible=false
                    }
                }
            }
        }


    Image {
        id: root
        property alias text:t2.text
        property int spacing:0
        anchors.top: parent.top
        anchors.topMargin: 1
        width: parent.width //+ spacing
        height: 48
        clip: true
        source: "qrc:/backgroundformsn.jpg"


        Text {
            id: maintext
            text: qsTr("WELCOME TO LIBRARY AND INFORMATION CENTRE")
            font.pixelSize: 48
            font.bold: true
            font.family: "times new roman"
            color: "orange"
            //color: "purple"


            NumberAnimation on x {running:true; from:root.width;to:-root.width;duration:15000;loops:Animation.Infinite}

        }
    }
    Column{
        id:libtiming
        anchors.left: parent.left
        anchors.leftMargin: 310
        anchors.top: parent.top
        anchors.topMargin: 63
        anchors.fill: parent
        visible: false
    Text {
        id: timings
        text: qsTr("
Timings:")
        font.bold: true
        font.pixelSize: 25
        color: "white"

    }
    Text {
        id: timin2
        text: qsTr("
Monday to saturday
10.30AM To 5.30PM")
        font.bold: true
        font.pixelSize: 25
        color: "white"

    }
    }
    Column{
        id:libbooks
        anchors.left: parent.left
        anchors.leftMargin: 310
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.fill: parent
        visible: false
    Text {
        id:book
        text: qsTr("
Books:")
        font.bold: true
        font.pixelSize: 25
        color: "white"

    }
    Text {
        id: book2
        text: qsTr("
General : 9098
Total Books: 10255")
        font.bold: true
        font.pixelSize: 25
        color: "white"

    }
    }
    Item {
   height: 454
   width: parent.width
    SwipeView{

        id:libswipee
        currentIndex: 0
        anchors.fill: parent
         visible: false

        Item{

            Image {
                  anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin:54
                id:clgimage
                source: "qrc:/library1.jpg"
                height: 400
                width: parent.width
                smooth: true

            }
        }
        Item{
            Image {
                  anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin:54

                id:clgimage2
                source: "qrc:/library4.jpg"
                height: 400
                width: parent.width

            }
        }
        Item{
            Image {
                anchors.top: parent.top
                anchors.topMargin:54

                anchors.horizontalCenter: parent.horizontalCenter
                id:clgimage3
                source: "qrc:/library2.jpg"
                 //fillMode:Image.PreserveAspectFit; clip:true
                smooth: true
                height: 400
                width: parent.width
            }
        }

    }
    }
    Item{
        Timer {
            interval: 3000; running: true; repeat: true
            onTriggered:{
                if(libswipee.currentIndex==2)
                {
                    libswipee.currentIndex =0
                }else{
                    libswipee.currentIndex++
                }
            }
        }
    }
    Image {
        visible: false
        id: staffback
        source: "qrc:/back5.png"
        width: 110
        height: 80
        anchors.left: parent.left
        anchors.leftMargin: 750
        anchors.top: parent.top
        anchors.topMargin: 440
        MouseArea{
            anchors.fill: parent
            onClicked: {
                libswipee.visible=false
                staffback.visible=false
                libbtns.visible=true
            }
        }
    }
    Image {
        visible: false
        id: staffback2
        source: "qrc:/back5.png"
        width: 110
        height: 80
        anchors.left: parent.left
        anchors.leftMargin: 250
        anchors.top: parent.top
        anchors.topMargin: 220
        MouseArea{
            anchors.fill: parent
            onClicked: {
                libstaffid.visible=false
                staffback2.visible=false

            }
        }
    }

    Rectangle{
        visible: false
        id:libstaffid
        width: 900
        height:450
        color: "black"
        anchors.left: parent.left
        anchors.leftMargin: 400
        anchors.top: parent.top
        anchors.topMargin: 53
        border.color: "white"
        Image {
            id: management
            source: "qrc:/librarystaff.jpg"
            width: parent.width/2
            height: parent.height/1.2
            anchors.left: parent.left
            anchors.leftMargin: 5
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.Stretch
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 600
            anchors.top: parent.top
            anchors.topMargin:20
            font.family: "times new roman"
            id: name
            text: qsTr("Prema Kale")
            font.pixelSize: 32
            color: "white"
        }
    }

}
}
