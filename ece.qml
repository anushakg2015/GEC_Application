import QtQuick 2.0
import QtQuick 2.12
import QtQuick.Window 2.12
import QtMultimedia 5.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14
Item {
  signal ecebackClicked();
    Image {
         width: parent.width
         height: parent.height
        id: cseimage
        source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
        Rectangle{
            width: parent.width
            height: 80
            color: "black"
//            anchors.top: parent.top
//            anchors.topMargin: 80

            Text {
                id: csetext
            text:qsTr
       ("Electronics and Communication")
                font.bold: true
                font.pixelSize: 50
                font.family: "times new roman"
                anchors.horizontalCenter: parent.horizontalCenter
                     anchors.verticalCenter: parent.verticalrow
//                anchors.left: parent.left
//                anchors.leftMargin: 290
    //            anchors.top: parent.top
    //            anchors.topMargin: 5
                color: "white"
           }
        Image {

            id: cselogo
            source: "qrc:/eclogofinal-removebg-preview.png"
           // anchors.horizontalCenter: parent.horizontalCenter
           anchors.left: parent.left
           anchors.leftMargin: 1140
           width: 200
           height: parent.height
        }

    }
        Audio{
            id:players
            source: "qrc:/WhatsApp Audio 2021-12-01 at 3.04.51 PM.mpeg"
            autoLoad: true
            autoPlay: true
        }

        Image {
            id: eceback
            source: "qrc:/rotateimage-removebg-preview1.png"
            width: 200
            height: 55
            anchors.left: parent.left
            anchors.leftMargin: 1270
            anchors.top: parent.top
            anchors.topMargin: 720
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ecebackClicked();
                }
            }
        }

        Row {
            spacing: 4
            anchors.fill: parent
              id: bar
              width: parent.width
              anchors.top: parent.top
              anchors.topMargin:81
              Rectangle {
                color: "steel blue"

                  width: 397
                  height: 38
                  Text{
                  text: qsTr("Staff details")
                  anchors.centerIn: parent
                  font.pixelSize: 20
                  font.family: "times new roman"
                  font.bold: true
                   color: "white"
                  }
                  MouseArea{
                      anchors.fill: parent
                      onClicked: {
                         csestaff.visible=true
                         staffback.visible=true
                      }
                  }
              }
              Rectangle {
                color: "steel blue"

                  width: 397
                  height: 38
                  Text{
                  text: qsTr("Vision & Mission")
                  anchors.centerIn: parent
                  font.pixelSize: 20
                  font.family: "times new roman"
                  font.bold: true
                   color: "white"
                  }
                  MouseArea{
                      anchors.fill: parent
                      onClicked: {
                          if(mainmen.state=="avi")
                          {
                              slidei.start();
                              mainmen.state="avii";
                              //details.visible=false
                          }

                  }
              }
              }
              Rectangle {
                color: "steel blue"

                  width: 397
                  height: 38
                  Text{
                  text: qsTr("About campus")
                  anchors.centerIn: parent
                  font.pixelSize: 20
                  font.family: "times new roman"
                  font.bold: true
                   color: "white"
                  }
                  MouseArea{
                      anchors.fill: parent
                  }
              }
              Rectangle {
                color: "steel blue"

                  width: 397
                  height: 38
                  Text{
                  text: qsTr("Research")
                  anchors.centerIn: parent
                  font.pixelSize: 20
                  font.family: "times new roman"
                  font.bold: true
                   color: "white"
                  }
                  MouseArea{
                      anchors.fill: parent
                      onClicked: {
                          researches.visible=true
                          reshback.visible=true
                      }
                  }
              }
        }

        Image{
            id:mainmen
            x:-width
            y:119
            width: parent.width
            height: parent.height
            //color: "lime"
            source: "qrc:/backgroundformsn.jpg"
            state: "avi"
            Text {
                id: vsn
                text: qsTr("Vision:")
                font.pixelSize: 40
                font.family: "times new roman"
                color: "orange"
                font.bold: true
                anchors.top: parent.top
                anchors.topMargin: 90
                 anchors.left: parent.left
                 anchors.leftMargin: 130
            }
            Image {
                id: clgimg
                source: "qrc:/IMG_20220609_161200.jpg"
                width: 520
                height: 480
                anchors.left: parent.left
                anchors.leftMargin: 1000
                anchors.top:  parent.top
                anchors.topMargin: 110
            }


            Label{
          text:
"To nurture and train students in major competencies of electronics and
communication engineering enabling them to meet real world challenges
and fulfill the societal needs."

                //font.bold: true
                font.pixelSize: 25
                color: "white"
                anchors.top: parent.top
                anchors.topMargin: 158
                 anchors.left: parent.left
                 anchors.leftMargin: 130

                  font.family: "times new roman"


            }
            Text {
                id: msn
                text: qsTr("Mission:")
                font.pixelSize: 40
               font.family: "times new roman"
                color: "orange"
                font.bold: true
                anchors.top: parent.top
                anchors.topMargin: 275
                 anchors.left: parent.left
                 anchors.leftMargin: 130
            }
            Label{
          text: "
To make students carrer-ready for employment, research, and entrepreneurship by
educating them in fundamental concepts, programming and designing the hardware
and interdisciplinary approach."

                //font.bold: true
                font.pixelSize: 25
                color: "white"
                anchors.top: parent.top
                anchors.topMargin: 308
                 anchors.left: parent.left
                 anchors.leftMargin: 130

                 font.family: "times new roman"
                 font.wordSpacing: 1.1
            }

//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: {
//                       slideout.start()
//                        //contact.visible=true
//                     //detailbutton.visible=true
//                    }

//                }
            NumberAnimation{


                id:slidei
                target: mainmen
                from: -width
                property: "x"
                to:0
                duration: 200

            }
            NumberAnimation{
                id:slideou
                target: mainmen
                from:0
                to: -width
                property: "x"
                duration: 200
            }

            Image {
                id: backimg
                source: "qrc:/rotateimage-removebg-preview1.png"
                width: 200
                height: 60
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                       if(mainmen.state=="avii"){
                               slideou.start()
                               mainmen.state="avi"
                          //
                           //contact.visible=true
                                              //details.visible=true
                                          }
                    }
                }

            }
        }

    Component{
        id:lstcmpt

        Rectangle{

            width: 550
            height: 70
            color: "gray"


        RowLayout{
            anchors.centerIn: parent
            spacing: 25
//        Text {
//            id: txt1
//            text: index+1
//            font.pixelSize: 20
//            font.family: "times new roman"
//            color: "white"
//        }
        Text {
            id: txt2
            text:name
            font.pixelSize: 20
            font.family: "times new roman"
            color: "white"
        }
        Text {
            id: txt3
            text:education
            font.pixelSize: 20
            font.family: "times new roman"
            color: "white"
        }
        Text {
            id: txt4
            text:educations
            font.pixelSize: 20
            font.family: "times new roman"
            color: "white"
        }
        }


        }
    }


    ListModel {
        id: mymodel

        ListElement {
           name:"JAYAPRAKASHA (HOD)"
           education:"Assistant Professor"
           educations:"BE, M.Tech"
        }
        ListElement {
            name:"PRITHIVIRAJ D"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"R PREMANANDA"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"H J JAMBUKESH"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"SUMANGALA G S"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"HARISH H M"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"HARISH K S"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"BASAVARAJ"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"VIJAY"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"SRIDHAR H"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }
        ListElement {
            name:"PRASHANTI H J"
            education:"Assistant Professor"
              educations:"BE, M.Tech"
        }

    }
    ColumnLayout{
        anchors.fill: parent
        anchors.top: parent.top
        anchors.topMargin: 130
        ListView{
            visible: false
            spacing: 5

            height: parent.height
            width: 794
            id:csestaff
            delegate: lstcmpt
            model: mymodel


        }


        }
    Image {
        visible: false
        id: staffback
        source: "qrc:/rotateimage-removebg-preview1.png"
        width: 200
        height: 60
        anchors.left: parent.left
        anchors.leftMargin: 550
        anchors.top: parent.top
        anchors.topMargin: 380
        MouseArea{
            anchors.fill: parent
            onClicked: {
                csestaff.visible=false
                staffback.visible=false
            }
        }
    }
    Image {
        id: root
        property alias text:t2.text
        property int spacing:0
        anchors.top: parent.top
       anchors.topMargin: 780
        width: parent.width //+ spacing
        height: t2.height
        clip: true
        source: "qrc:/backgroundformsn.jpg"


        Text {
            id: t2
            text: qsTr("WELCOME TO THE DEPARTMENT OF ELECTRONICS & COMMUNICATION ENGINEERING")
            font.pixelSize: 48
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
        id:researches
        visible: false
        width: parent.width
        height: parent.height
        color: "white"
        Text {
            id: research
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("
STUDENT PROJECT OF THE YEAR AWARD")
            font.bold: true
            font.pixelSize: 45
            font.family: "times new roman"
            color: "orange"
        }
        Text {
            id: research2
            anchors.top: parent.top
            anchors.topMargin: 75
            anchors.left: parent.left
            anchors.leftMargin: 25
            text: qsTr("
The project entitles IOT enabled location tracking and health monitoring system of remote soldiers using respberry pi
under the guidance of prof.VIJAY MALLAPPA PEERAPUR was awarded student project of the year 2017-18.")
            font.bold: true
            font.pixelSize: 30
            font.family: "times new roman"
            color: "black"
        }
        Text {
            id: research3
            anchors.top: parent.top
            anchors.topMargin: 200
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("
STUDENT PARTICIPATION IN PROJECT EXHIBITION")
            font.bold: true
            font.pixelSize: 45
            font.family: "times new roman"
           color: "orange"
        }
        Text {
            id: research4
            anchors.top: parent.top
            anchors.topMargin: 275
            anchors.left: parent.left
            anchors.leftMargin: 25
            text: qsTr("
The project entitled RF energy harvesting system, under the guidance of prof. VIJAY MALLAPPA PEERAPUR
was selected for the final competion of 8th edition of ANVESHANA SCIENCE AND ENGINEERING fair 2019.")
            font.bold: true
            font.pixelSize: 30
            font.family: "times new roman"
            color: "black"
        }
        Text {
            id: research5
            anchors.top: parent.top
            anchors.topMargin: 380
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("
KSCST SPONORSHIP")
            font.bold: true
            font.pixelSize: 45
            font.family: "times new roman"
           color: "orange"
        }
        Text {
            id: research6
            anchors.top: parent.top
            anchors.topMargin: 460
            anchors.left: parent.left
            anchors.leftMargin: 25
            text: qsTr("
Title of the project  :  Joystick and voice controlled smart
wheelehair for physically disabled people.
Under the guidance of   : prof.Harisha K.S
Name of the students   : Sujatha C, Suma, Daneshwar, Dundappa
Sanctioned amount   : rs. 9000 ")
            font.bold: true
            font.pixelSize: 30
            font.family: "times new roman"
            color: "black"
        }
        Image {
            id: reshback
            source: "qrc:/rotateimage-removebg-preview1.png"
            width: 200
            height: 60
            anchors.left: parent.left
            anchors.leftMargin: 40
            anchors.top: parent.top
            anchors.topMargin: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    reshback.visible=false
                    researches.visible=false
                }
            }
        }
    }

    }
}



