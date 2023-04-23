import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.14
import QtMultimedia 5.0
//import QtQuick.Controls 1.4
//import QtQuick.Controls 2.12

import QtQuick.Window 2.12
import QtQuick 2.0
import QtMultimedia 5.0

//import Qt.labs.platform 1.1


Image {
    property var std:
        std=avinash.studentname();

    id:root1
    width: screen.width
    height: screen.width

    Rectangle{
        width: parent.width
        height: 85
        color: "black"
        Text {
            id:t1
            font.bold: true
            font.pixelSize: 45
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("GOVERNMENT ENGINEERING COLLEGE ,HAVERI")
            font.family: "times new roman"
            color: "white"
            //        NumberAnimation on x {running:true; from:0;to:-root.width;duration:12000;loops:Animation.Infinite}
        }
    }
    Row{
       // anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 86
        spacing: 3
        Rectangle{
            width: 320
            height: 40
            color: "steel blue"
            border.color: "black"
            Text {
                anchors.centerIn: parent
                id: nm1
                font.bold: true
                text: qsTr("<= PREVIOUS")
                font.family: "TIMES NEW ROMAN"
                font.pixelSize: 24
               color: "white"

            }MouseArea{
                anchors.fill: parent
                onClicked: {
                    previousClicked()

                }
            }
        }
        Rectangle{
            width: 320
            height: 40
            color: "steel blue"
            border.color: "black"
            Text {
                anchors.centerIn: parent
                id: nm2

                font.bold: true
                text: qsTr("LIBRARY")
                font.family: "TIMES NEW ROMAN"
                font.pixelSize: 24
                  color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    libraryClicked()
                    //icon.visible=true
                    //imagepreviousClicked()
                }
            }
        }
        Rectangle{
            width: 320
            height: 40
            color: "steel blue"
            border.color: "black"
            Text {

                font.bold: true
                anchors.centerIn: parent
                id: nm3
                text: qsTr("COLLEGE VIDEO")
                font.family: "TIMES NEW ROMAN"
                font.pixelSize: 24
                 color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    video.play()
                   name.visible=true
                    //icon.visible=true
                    //imagepreviousClicked()
                }
            }
        }
        Rectangle{
            width: 320
            height: 40
            color: "steel blue"
            border.color: "black"
            Text {

                font.bold: true
                anchors.centerIn: parent
                id: nm4
                text: qsTr("NEW UPDATES")
                font.family: "TIMES NEW ROMAN"
                font.pixelSize: 24
                color: "white"

            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    userClicked()
                }
            }
        }
        Rectangle{
            width: 320
            height: 40
            color: "steel blue"
            border.color: "black"
            Text {

                font.bold: true
                anchors.centerIn: parent
                id: nm5
                text: qsTr("MOVENEXT =>")
                font.family: "TIMES NEW ROMAN"
                font.pixelSize: 24
                 color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    secondClicked()
                }
            }
        }


    }


    Item {
        anchors.centerIn: parent
        id:videoid
        Video {
            anchors.centerIn: parent
             id: video
            width : 800
            height : 600
            source:"qrc:/WhatsApp Video 2022-06-24 at 12.05.02 AM.mp4"
            //avinash.video()

            //               MouseArea {
            //                   anchors.fill: parent
            //                   onClicked: {
            //                       video.play()
            //                   }
            //               }

            focus: true
            Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
            Keys.onLeftPressed: video.seek(video.position - 5000)
            Keys.onRightPressed: video.seek(video.position + 5000)

        }

        Image {
            id: name
            visible: false
            source: "qrc:/rotateimage-removebg-preview1.png"
            width: 200
            height: 55
            anchors.top: parent.top
            anchors.topMargin:150
            anchors.left: parent.left
            anchors.leftMargin: 200
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    videoid.visible=false
                    name.visible=false
                }
            }
        }
        Component.onCompleted: {

        }
    }
    //  }
    source: "qrc:/savecopy2.jpg"
    visible: true

    signal secondClicked();
    signal previousClicked();
    signal menubackClicked();
    signal csestaffClicked();
    signal ecstaffClicked();
    signal mechstaffClicked();
    signal libraryClicked();
    signal videoClicked();
    signal adminClicked();
    signal userClicked();
    signal civilstaffClicked();
    signal admitionClicked();

    Image {
        id: root
        property alias text:t2.text
        property int spacing:0
        anchors.top: parent.top
        anchors.topMargin: 791
        width: parent.width //+ spacing
        height: t2.height
        clip: true
        source: "qrc:/backgroundformsn.jpg"


        Text {
            id: t2
            text: qsTr("VISVESVARAYA TECHNOLOGICAL UNIVERSITY, BELGAVI 590018")
            font.pixelSize: 42
            font.bold: true
            font.family: "times new roman"
            color: "orange"
            //color: "purple"

//            ColorAnimation {
//                from: "white"
//                to: "black"
//                duration: 20000
//            }

            NumberAnimation on x {running:true; from:root.width;to:-root.width;duration:15000;loops:Animation.Infinite}
            //            Text {
            //                x:root.width
            //                text: t2.text
            //            }
        }
    }
    Rectangle{
        id:button
        anchors.top: parent.top
        anchors.topMargin: 13

        height: 50
        width: 80
        color: "black"
        Column{
            spacing: 3
            anchors.centerIn: parent
            Rectangle{
                id:mn1
                width: 30
                height: 4
                color: "white"
            }
            Rectangle{
                id:mn2
                width: 30
                height: 4
                color: "white"
            }
            Rectangle{
                id:mn3
                width: 30
                height: 4
                color:"white"
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mainmenu.open();
            }
        }
    }


    Item{
        anchors.left:parent.left
        anchors.leftMargin: 300
        anchors.top: parent.top
        anchors.topMargin: 70
        Text{
            id:label
            //        anchors.left:parent.left
            //        anchors.leftMargin: 200
            //        anchors.top: parent.top
            //        anchors.topMargin: 70

            text: ""

            font.pixelSize: 30
            font.bold:true
        }
    }
    Text{
        id:label2
        anchors.left:parent.left
        anchors.leftMargin: 100
        anchors.top: parent.top
        anchors.topMargin: 100


        text: ""
        color: "#FF7F50"

        font.pixelSize: 28
        font.bold:true
    }

    MenuBar{
        visible: false
        // id:menu
        Menu{
            id:mainmenu
            MenuItem{
                text: "COLLEGE DETAILS"

                onClicked: {
//                    //staff.visible=false
//                    //staffback.visible=false
//                    //                my.visible=true
//                    //                my1.visible=true
//                    menu.visible=true
//                    // staff.visible=true
//                    //detailsback.visible=true
//                    details.visible=true
//                    // link_Text.visible=false
//                    linktext.visible=false
//                    label.visible=false
//                    admin.visible=false
//                    update.visible=false


//                    label2.text="
//                                                      Select Stream :Engineering
//                               Exams Accepted : KCET

//                               4 Streams :

//                               |Civil Engineering

//                               |Computer Science And Engineering

//                               |Electronics & Communication Engineering

//                               |Mechanical Engineering

//                               Master of Technology [M.Tech]
//                               (Structural Engineering)

//                               2 YEARS DEGREE ON CAMPUS POST
//                                GRADUATION FULL TIME

//                               Exams Accepted : Karnataka PGCET  ";


//                }

            }
            }
            MenuItem{
                text: "LOCATION DETAILS"

                onClicked: {
                    Qt.openUrlExternally("https://www.google.com/maps/place/Government+Engineering+College/@14.8522822,75.378821,15z/data=!4m5!3m4!1s0x0:0x2a2994e5a757abda!8m2!3d14.8522822!4d75.378821")

                }


            }

            Menu{
                title: "ABOUT BRANCH"


                Action{
                    text: "CSE BRANCH"

                    onTriggered: csestaffClicked() ;



                }
                Action{
                    text: "EC BRANCH"
                    onTriggered: ecstaffClicked();
                }
                Action{
                    text: "MECH BRANCH"
                    onTriggered: mechstaffClicked();
                }
                Action{
                    text: "CIVIL BRANCH"
                    onTriggered: civilstaffClicked();

                }

            }

            MenuItem{
                text: "EXIT";

                onClicked: {
                    Qt.quit()
                }



            }


        }
    }


        //    Text{
        //        id:linktext
        //        visible: false
        //        anchors.left: parent.left
        //        //anchors.leftMargin: 550
        //        anchors.top: parent.top
        //        //anchors.topMargin: 640
        //        font.pixelSize: 30
        //        font.bold: true
        //        color: "white"
        //        text: " Click below link to get the college location"
        //    }

        //    Text {
        //        visible: false
        //        anchors.left: parent.left
        //        //anchors.leftMargin:740
        //        anchors.top: parent.top
        //        //anchors.topMargin: 680
        //        font.pixelSize: 30
        //        id: link_Text

        //        text: '<html><style type="text/css"></style><a href="https://www.google.com/maps/place/Government+Engineering+College/@14.8522822,75.378821,15z/data=!4m5!3m4!1s0x0:0x2a2994e5a757abda!8m2!3d14.8522822!4d75.378821"> <strong>College Location</strong> </a></html>'


        //        onLinkActivated: Qt.openUrlExternally(link)

        //    }



    Item{
        visible: true
        Rectangle{
            visible: true
            id:admin
            radius: 15
            border.color: "red"
            width: 220
            height: 45
            anchors.left: parent.left
            anchors.leftMargin: 1300
            anchors.top: parent.top
            anchors.topMargin: 660
            gradient: Gradient {
                GradientStop { position: 0.0; color: "red" }
                GradientStop { position: 0.33; color: "black" }
                GradientStop { position: 1.0; color: "orange" }
            }
            Text {
                anchors.centerIn: parent
                id: adminid
                text: qsTr("ADMIN AREA")
                font.bold: true
                font.pixelSize: 30
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    adminClicked()
                }
            }
        }
    }
//Rectangle{
//    id:admitionbtn
//    width: 200
//    height: 60
//    color: "green"
//    anchors.centerIn: parent
//    Text {
//        id: admn
//        text: qsTr("admition")
//        anchors.centerIn: parent
//        font.pixelSize: 20
//    }
//    MouseArea{
//        anchors.fill: parent
//        onClicked: {
//            admitionClicked();

//        }
//    }
//}


Rectangle{
    id:admitionbill
    width: 200
    height: 60
    radius: 10
    color: "steel blue"
    anchors.left: parent.left
    anchors.leftMargin: 50
    anchors.top: parent.top
    anchors.topMargin: 250
    Text {
        id: admnbl
        text: qsTr("RECEIPT")
        anchors.centerIn: parent
        font.pixelSize: 30
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            receipt.visible=true
             console.log(avinash.studentname())

        }
    }
}
  property int temp: 0
 property var imgArray:[ imgArray =avinash.studentname()]
property var stdyear:[stdyear=avinash.year()]
property var stdbranch:[stdbranch=avinash.branch()]
property var stdfee:[stdfee=avinash.fee()]
property var stdDATE:[stdDATE=avinash.date()]
property var stdtfee:[stdtfee=avinash.total()]
property var stdid:[stdid=stdid=avinash.refstdid()]
Rectangle{
    visible: false
   id:receipt
//    width: 500
//    height: 600
//    color: "yellow"
    ListView{
        id:grid
        visible: true
        y:200
        x:400
        width: 600
        height: 650
        anchors.left: parent.left
        anchors.leftMargin: 300
        anchors.top: parent.top
        anchors.topMargin: 134
        model: imgArray.length
        //model: avinash.userimage(index)
        delegate: del1
        //interactive: true
       // clip: true


//        cellWidth: 200
//        cellHeight: 200
        Text {
            id: clgname
            text: qsTr("GOVERNMENT ENGINEERING COLLEGE
                                 HAVERI")
            font.pixelSize: 28
            font.bold: true
            color: "red"
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "times new roman"
        }
        Rectangle{
            id:line1
            width: 3
            height: 580
            anchors.left: parent.left
            anchors.leftMargin: 100
            anchors.top: parent.top
            anchors.topMargin: 70
            color: "black"
        }
        Rectangle{
            id:line2
            width: 3
            height: 580
            anchors.left: parent.left
            anchors.leftMargin: 500
            anchors.top: parent.top
            anchors.topMargin: 70
            color: "black"
        }
        Rectangle{
            id:line3
            width: 600
            height: 3
            anchors.top: parent.top
            anchors.topMargin: 69
            color: "black"
        }
        Rectangle{
            id:line4
            width: 3
            height: 580
            anchors.left: parent.left
            anchors.leftMargin: 300
            anchors.top: parent.top
            anchors.topMargin: 70
            color: "black"
        }
        Rectangle{
            id:line5
            width: 600
            height: 3
            anchors.top: parent.top
            anchors.topMargin: 550
            color: "black"
        }

    }

    Component{
        id:del1
        Rectangle{
            id:rect1

            Row{
                spacing: 200

                Rectangle
                  {
                    id: i1
                    width: 600
                    height:650
                    color: "yellow"
                    Text {
                        id: stdname
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 120
                        anchors.top: parent.top
                        anchors.topMargin: 80
                        text: qsTr("Student name")
                    }
                    Text {
                        id: name
                        font.pixelSize: 25
                         text: imgArray[index]
                         anchors.left: parent.left
                         anchors.leftMargin: 340
                         anchors.top: parent.top
                         anchors.topMargin: 80
                    }
                    Text {
                        id: year
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 120
                        anchors.top: parent.top
                        anchors.topMargin: 130

                        text: qsTr("Student Year")
                    }
                    Text {
                        id: years
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 360
                        anchors.top: parent.top
                        anchors.topMargin: 130

                        text:stdyear[index]
                    }
                    Text {
                        id: branch
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 120
                        anchors.top: parent.top
                        anchors.topMargin: 180

                        text: qsTr("Student Branch")
                    }
                    Text {
                        id: branches
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 340
                        anchors.top: parent.top
                        anchors.topMargin: 180

                        text:stdbranch[index]
                    }
                    Text {
                        id: feedtl
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 120
                        text: qsTr("Student Fee")
                        anchors.top: parent.top
                        anchors.topMargin: 230
                    }
                    Text {
                        id: stdfees
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 340
                        anchors.top: parent.top
                        anchors.topMargin: 230

                        text:stdfee[index]
                    }
                    Text {
                        id: date
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 120
                        text: qsTr("Admission Date")
                        anchors.top: parent.top
                        anchors.topMargin: 280
                    }
                    Text {
                        id: stddate
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 340
                        anchors.top: parent.top
                        anchors.topMargin: 280

                        text:stdDATE[index]
                    }
                    Text {
                        id: id2
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 120
                        text: qsTr("Student Id")
                        anchors.top: parent.top
                        anchors.topMargin: 330
                    }
                    Text {
                        id: stdID
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 340
                        anchors.top: parent.top
                        anchors.topMargin: 330

                        text:stdid[index]
                    }
                    Text {
                        id: totalfee
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 145
                        text: qsTr("Total Fee")
                        font.bold: true
                        anchors.top: parent.top
                        anchors.topMargin: 580

                    }
                    Text {
                        id: stdtotalfee
                        font.pixelSize: 25
                        anchors.left: parent.left
                        anchors.leftMargin: 340
                        anchors.top: parent.top
                        anchors.topMargin: 580

                        text:stdtfee[index]
                    }
                }

            }

        }

    }




}


}
