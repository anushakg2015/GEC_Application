import QtQuick 2.0
import Qt.labs.platform 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Controls 1.4
import QtQuick.Window 2.12
import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1
import QtQuick.Controls 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import QtQuick 2.14


Rectangle {

    signal homepageClicked();
    signal scrollClicked();
    id: window
    width: parent.width
    height: parent.height
    color: "black"




    Rectangle {
        id: homeimage
        color: "black"



        // source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
        width: window.width
        height: window.height

        Image{
            anchors.top: parent.top
            anchors.topMargin: 102
            height: window.height
            width: window.width
           // color: "black"
            source: "qrc:/backgroundformsn.jpg"
            SwipeView{
                id:swipee
                currentIndex: 0
                anchors.fill: parent


//                Item{

//                    Image {
//                          anchors.horizontalCenter: parent.horizontalCenter
//                        anchors.top: parent.top
//                        anchors.topMargin:40
//                        id:clgimage
//                        source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
//                        height: 400
//                        width: window.width
//                        smooth: true

//                    }
//                }
                Item{
                    Image {
                          anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin:40
                        id:clgimage1
                        source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
                        height: 400
                        width:  window.width
                        fillMode: Image.Stretch
                         smooth: true
                    }
                    Image {
                          anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin:40
                        id:clgimage2
                        source: "qrc:/newpic3.jpeg"
                        height: 400
                        width:  window.width
                        fillMode: Image.Stretch
                         smooth: true
                    }
                }
                Item{
                    Image {
                        anchors.top: parent.top
                        anchors.topMargin:40
                        anchors.horizontalCenter: parent.horizontalCenter
                        id:clgimage3
                        source: "qrc:/freshersparty.jpg"
                         //fillMode:Image.PreserveAspectFit; clip:true
                        smooth: true
                        height: 400
                        width:  window.width
                          fillMode: Image.Stretch

                    }
                }
                Item{
                    Image {
                        anchors.top: parent.top
                        anchors.topMargin:40
                        anchors.horizontalCenter: parent.horizontalCenter
                        id:clgimage4
                        source: "qrc:/newpic5.jpeg"
                            //fillMode:Image.PreserveAspectFit; clip:true
                         smooth: true
                         //width: sourceSize.width
                              //  height: sourceSize.height
                           fillMode: Image.Stretch
                        height: 400

                       width:  window.width
                    }
                }
            }


            Item{
                Timer {
                    interval: 5000; running: true; repeat: true
                    onTriggered:{
                        if(swipee.currentIndex==3)
                        {
                            swipee.currentIndex =0
                        }else{
                            swipee.currentIndex++
                        }
                    }
                }
            }

        }


        ScrollView {
            id: detail
            anchors.top: parent.top
            anchors.topMargin: 120
            //width: window.width
            height: 700
            clip: true


            SwipeView{
                id:labelid
                anchors.centerIn: parent


                Label {
                    //width: parent.width

                    color: "white"
                    anchors.top: parent.top
                    anchors.topMargin:  322
                    visible: true
                    id:detailsss
                    text:
                        "





The Government Engineering College was established in 2007 in the Haveri District of Karnataka.It was established mainly to deliver
 affordable technical education to the rural people of Northern Karnataka.
 It offers a B. tech course with various specializations such as Computer Science Engineering,Electronics & Communication Engineering,
 Mechanical Engineering, and Civil Engineering with 60 seats in each course.
 It has also started offering PG courses in Structural Engineering and Machine Design 2015 and Ph.D. in the Department of Civil and
 Mechanical Engineering.


"
                    font.pixelSize:25
                       font.family: "times new roman"
                }

                Label {
                    //width: parent.width

                    color: "white"
                    anchors.top: parent.top
                    anchors.topMargin:  322
                    visible: true
                    id:detailssskannada
                    text:
                        "




 ಸರ್ಕಾರಿ ಇಂಜಿನಿಯರಿಂಗ್ ಕಾಲೇಜನ್ನು ಕರ್ನಾಟಕದ ಹಾವೇರಿ ಜಿಲ್ಲೆಯಲ್ಲಿ 2007 ರಲ್ಲಿ ಸ್ಥಾಪಿಸಲಾಯಿತು.ಇದನ್ನಮುಖ್ಯವಾಗಿ ಕೈಗೆಟಕುವ ದರದಲ್ಲಿ
 ತಲುಪಿಸಲು ಸ್ಥಾಪಿಸಲಾಗಿದೆ.ಉತ್ತರ ಕರ್ನಾಟಕದ ಗ್ರಾಮೀಣ ಜನರಿಗೆ ತಾಂತ್ರಿಕ ಶಿಕ್ಷಣ. ಇದು ಕಂಪ್ಯೂಟರ್ ಸೈನ್ಸ್  ಇಂಜಿನಿಯರಿಂಗ್, ಎಲೆಕ್ಟ್ರಾನಿಕ್ಸ್
 ಕಮ್ಯುನಿಕೇಷನ್ ಇಂಜಿನಿಯರಿಂಗ್,ಮುಂತಾದ ವಿವಿಧ ವಿಶೇಷತೆಗಳೊಂದಿಗೆ B. ಟೆಕ್ ಕೋರ್ಸ್ ಅನ್ನು  ನೀಡುತ್ತದೆ.ಮೆಕ್ಯಾನಿಕಲ್ ಇಂಜಿನಿಯರಿಂಗ್,
 ಮತ್ತು ಸಿವಿಲ್ ಇಂಜಿನಿಯರಿಂಗ್ ಪ್ರತಿ ಕೋರ್ಸ್‌ನಲ್ಲಿ 60 ಸೀಟುಗಳು.ಇದು ಸ್ಟ್ರಕ್ಚರಲ್ ಎಂಜಿನಿಯರಿಂಗ್ ಮತ್ತು ಮೆಷಿನ್ ಡಿಸೈನ್ 2015 ಮತ್ತು
 ಪಿಎಚ್‌ಡಿಯಲ್ಲಿ ಪಿಜಿಕೋರ್ಸ್‌ಗಳನ್ನು ನೀಡಲು ಪ್ರಾರಂಭಿಸಿದೆ. ನಾಗರಿಕ ಇಲಾಖೆಯಲ್ಲಿ ಮತ್ತು ಯಾಂತ್ರಿಕ ಎಂಜಿನಿಯರಿಂಗ್."


                    font.pixelSize: 24
                       font.family: "times new roman"
                }


                Item {
                    Timer {
                        interval: 5000; running: true; repeat: true
                        onTriggered:{
                            if(labelid.currentIndex==1)
                            {
                                labelid.currentIndex =0
                            }else{
                                labelid.currentIndex++
                            }
                        }
                    }
                }
            }

        }
        Rectangle {
            implicitWidth: parent.width
            implicitHeight: 100
            border.color: "#999"
            color: "black"
            Image {
                id: logo
                source: "qrc:/havericlg logo.jpg"
                width: 100
                height:90
                anchors.left: parent.left
                anchors.leftMargin:1277
            }
            Image {
                id: vtulogo
                source: "qrc:/vtufinallogo-removebg-preview.png"
                width: 140
                height: 100
                anchors.left: parent.left
                anchors.leftMargin:200
            }



            Text {
                anchors.centerIn: parent
                anchors.left: parent.left

                id: avii
                text: qsTr("GOVERNMENT ENGINEERING COLLEEGE,HAVERI")
                font.pixelSize: 40
                color: 'white'
                font.family: "times new roman"

            }


//            Rectangle{

//                border.color: "black"
//                anchors.left: parent.left
//                anchors.leftMargin: 0
//                anchors.top: parent.top
//                anchors.topMargin: 27
//                id:mainmenubtn
//                width: 100
//                height: 40
//                color: "black"
//                //radius: 8

////                Text {

////                    text: qsTr("MENU")
////                    font.pixelSize: 16
////                    font.bold: true
////                    anchors.centerIn: parent
////                    color: "white"
////                }
//                Column{
//                    spacing: 3
//                    anchors.centerIn: parent
//                    Rectangle{
//                        id:mn1
//                        width: 30
//                        height: 4
//                        color: "white"
//                    }
//                    Rectangle{
//                        id:mn2
//                        width: 30
//                        height: 4
//                        color: "white"
//                    }
//                    Rectangle{
//                        id:mn3
//                        width: 30
//                        height: 4
//                        color:"white"
//                    }
//                }

//                MouseArea{
//                    anchors.fill: parent
//                    // acceptedButtons: Qt.RightButton|Qt.LeftButton
//                    onClicked: {
//                        // acceptedButtons: Qt.RightButton|Qt.LeftButton


//                        if(mainmenu.state=="avi")
//                        {
//                            slidein.start();
//                            mainmenu.state="avii";
//                            //details.visible=false
//                        }else if(mainmenu.state=="avii"){
//                            slideout.start()
//                            mainmenu.state="avi"
//                            //details.visible=true
//                        }

//                    }

//                }


//            }

        }
        Rectangle{

            id:mainmenu
            x:-width
            y:100
            width: parent.width/5.5
            height: parent.height/2
            color: "white"
            state: "avi"

            Text {
                anchors.left: parent.left
                anchors.leftMargin: 250
                anchors.top: parent.top
                anchors.topMargin: 600
                id: removetxt
                text: qsTr("X")
                font.bold:true
                font.pixelSize: 23
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                       slideout.start()
                     detailbutton.visible=true
                    }

                }
            }

            NumberAnimation{


                id:slidein
                target: mainmenu
                from: -width
                property: "x"
                to:0
                duration: 200

            }
            NumberAnimation{
                id:slideout
                target: mainmenu
                from:0
                to: -width
                property: "x"
                duration: 500
            }
            NumberAnimation{
                id:slideout2
                target: mainmenu
                from:0
                to: -width
                property: "x"
                duration: 500
            }
            MenuItem{

                width: parent.width
                //                            height: parent.height/8

                text: "MISSION         >"

                font.pixelSize: parent.width/10
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        popupmission.open()

                    }
                }
                //font.bold: true
            }
            MenuSeparator{ }
            MenuItem{
                y: 50
                width: parent.width
                //                            height: parent.height/8

                text: "VISION           >"
                font.pixelSize: parent.width/10
                //font.bold: true
            }

        }



//        Rectangle{
//            border.color: "black"
//            anchors.left: parent.left
//            anchors.leftMargin: 200
//            anchors.top: parent.top
//            anchors.topMargin: 430
//            id:details
//            width: 300
//            height: 40
//            color: "white"
//            radius: 8

//            Text {
//                id: detailbutton
//                text: qsTr("DETAILS")
//                font.pixelSize: 19
//                font.bold: true
//                anchors.centerIn: parent
//                   font.family: "times new roman"
//                color: "black"
//            }
//            MouseArea{
//                anchors.fill: parent
//                acceptedButtons: Qt.RightButton|Qt.LeftButton
//                onClicked: {
//                    acceptedButtons: Qt.RightButton|Qt.LeftButton
//                    //detailsss.visible=true
//                    inform.visible=true
//                    withvtu.visible=false
//                    contactbtn.visible=false
//                    nextbtn.visible=false
//                    menubutton.visible=false


//                }

//            }

//        }
//        Rectangle{
//            border.color: "black"
//            anchors.left: parent.left
//            anchors.leftMargin: 640
//            anchors.top: parent.top
//            anchors.topMargin: 430
//            id:contactbtn
//            width: 300
//            height: 40
//            color: "white"
//            radius: 8

//            Text {
//                id: contact
//                text: qsTr("ABOUT COURSE")
//                font.pixelSize: 19
//                   font.family: "times new roman"
//                font.bold: true
//                anchors.centerIn: parent
//                color: "black"
//            }
//            MouseArea{
//                anchors.fill: parent
//                acceptedButtons: Qt.RightButton|Qt.LeftButton
//                onClicked: {
//                    acceptedButtons: Qt.RightButton|Qt.LeftButton
//                    //detailsss.visible=true
//                    clgmenu.open()

//                }

//            }


//        }





        Rectangle{
            visible: false
            id:inform
            width: parent.width
            height: parent.height
            color: "white"
            Rectangle{
                radius: 15
                width: 145
                height: 50
                color: "red"
                Text {
                    anchors.centerIn: parent
                    id: scrollname
                    text: qsTr("BACK")
                    font.pixelSize: 28

                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        inform.visible=false
                        bar.visible=true
                        t2.visible=true
                        nextbtn.visible=true
                        moveid.visible=true
                       // contact.visible=true
                        //contactbtn.visible=true


                    }
                }
            }

            ScrollView {

                anchors.top: parent.top
                anchors.topMargin: 120
                width: parent.width
                height: 700
                clip: true

                Text{

                    text:"The Government Engineering College was established in 2007 in the Haveri District of Karnataka.It was established mainly to deliver affordable
 technical education to the rural people of Northern Karnataka.
 It offers a B. tech course with various specializations such as Computer Science Engineering,Electronics & Communication Engineering,
 Mechanical Engineering, and Civil Engineering with 60 seats in each course.
 It has also started offering PG courses in Structural Engineering and Machine Design 2015 and Ph.D. in the Department of Civil and
 Mechanical Engineering.

                      Admission takes place through the KCET exam and PGCET exam.

                      GEC Haveri Highlights
                      Some of the key highlights about the Government Engineering College:

                       Established	2007

                       Institute Type	Government
                       Approved by	All India Council for Technical Education (AICTE), New Delhi

                       Affiliation	VTU Belagavi
                       AdmissionCriteria Entrance test based
                       Entrance Exam	KCET

                       Courses Offered	B.E./B.Tech, M.Tech, PhD
                       Campus area	33 acre

                       Facilities	Well-equipped labs, hostels, library, Sports, Cafeteria, Auditorium, IT infrastructure


"
                    font.pixelSize: 24
                       font.family: "times new roman"
                }

            }

        }


//        Popup {

//            id: popup
//            //        x: 100
//            //        y: 100
//            width: 400
//            height: 150
//            anchors.centerIn: parent



//            modal: true
//            focus: true
//            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent



//        }
//        Rectangle{
//            border.color: "black"
//            anchors.left: parent.left
//            anchors.leftMargin: 640
//            anchors.top: parent.top
//            anchors.topMargin: 720
//            id:withvtu
//            width: 300
//            height: 40
//            color: "white"
//            radius: 8

//            Text {

//                text: qsTr("CONNECT WITH VTU")
//                font.pixelSize: 19
//                font.bold: true
//                anchors.centerIn: parent
//                color: "black"
//                font.family: "times new roman"
//            }

//            MouseArea{
//                anchors.fill: parent
//                acceptedButtons: Qt.RightButton|Qt.LeftButton
//                onClicked: {
//                    acceptedButtons: Qt.RightButton|Qt.LeftButton
////                    link_Text.visible=true
//                    Qt.openUrlExternally("https://vtu.ac.in")


//                }

//            }


//        }
//        Text {
//            visible: false
//            anchors.left: parent.left
//            anchors.leftMargin:750
//            anchors.top: parent.top
//            anchors.topMargin: 770
//            font.pixelSize: 30
//            id: link_Text
//            text: '<html><style type="text/css"></style><a href="https://vtu.ac.in/"> <strong>CONNECT WITH VTU</strong> </a></html>'
//            onLinkActivated: Qt.openUrlExternally(link)
//        }


        Rectangle{
            visible: true
            border.color: "black"
            anchors.left: parent.left
            anchors.leftMargin: 1390
            anchors.top: parent.top
            anchors.topMargin: 775
            id:nextbtn
            width: 150
            height: 40
            color: "green"
            radius: 8

            Text {

                text: qsTr("MOVE NEXT")
                font.pixelSize: 19
                font.bold: true
                anchors.centerIn: parent
                   font.family: "times new roman"
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                acceptedButtons: Qt.RightButton|Qt.LeftButton
                onClicked: {
                    acceptedButtons: Qt.RightButton|Qt.LeftButton

                    homepageClicked()
                }

            }
        }

//        Rectangle{
//            border.color: "black"
//            anchors.left: parent.left
//            anchors.leftMargin: 1100
//            anchors.top: parent.top
//            anchors.topMargin: 430
//            id:menubutton
//            width: 300
//            height: 40
//            color: "white"
//            radius: 8

//            Text {

//                text: qsTr("CONTACT INFO")
//                font.pixelSize: 19
//                font.bold: true
//                anchors.centerIn: parent
//                color: "black"
//                   font.family: "times new roman"
//            }
//            MouseArea{
//                anchors.fill: parent
//                acceptedButtons: Qt.RightButton|Qt.LeftButton
//                onClicked: {
//                    acceptedButtons: Qt.RightButton|Qt.LeftButton
//                    //detailsss.visible=true
//                    popup.open()

//                }

//            }


//        }
//        Popup{

//            width: 700
//            height: 250
//            anchors.centerIn: parent

//            id:coursemenuid
            Rectangle{
                visible: false
               anchors.left: parent.left
               anchors.leftMargin: 670
               anchors.top: parent.top
               anchors.topMargin: 272
                id:courserct
                width: 700
                height: 250
                color: "white"
                Image {
                    anchors.left: parent.left
                    anchors.leftMargin: 655
                    anchors.top: parent.top
                    anchors.topMargin: 220
                    id: feeback
                    source: "qrc:/finaluppp-removebg-preview.png"
                    width: 70
                    height: 40
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            courserct.visible=false
                             clgmenu.visible=false
                        }
                    }
                }


                Text {
                    id: corsnm
                    text: qsTr("B.E")
                    font.pixelSize: 26
                    anchors.top: parent.top
                    anchors.topMargin: 120
                    anchors.left: parent.left
                    anchors.leftMargin: 65
                    //font.bold: true
                      font.family: "times new roman"
                }
                Column{
                    spacing: 17
                    anchors.fill: parent
                    anchors.top: parent.top
                    anchors.topMargin: 54
                    anchors.left: parent.left
                    anchors.leftMargin: 160
                Text {
                    id: strm1
                    text: qsTr("Computer science & engineering")
                    font.pixelSize: 26
                    //font.bold: true
                    font.family: "times new roman"
                }
                Text {
                    id: strm2
                    text: qsTr("Electronics & communication")
                    font.pixelSize: 26
//                    anchors.top: parent.top
//                    anchors.topMargin: 50
//                    anchors.left: parent.left
//                    anchors.leftMargin: 160
                   // font.bold: true
                    font.family: "times new roman"
                }
                Text {
                    id: strm3
                    text: qsTr("Mechanical engineering")
                    font.pixelSize: 26
                    //font.bold: true
                    font.family: "times new roman"
                }
                Text {
                    id: strm4
                    text: qsTr("Civil engineering")
                    font.pixelSize: 26
                   // font.bold: true
                    font.family: "times new roman"
                }
                }

                Column{
                    spacing: 17
                    anchors.fill: parent
                    anchors.top: parent.top
                    anchors.topMargin: 54
                    anchors.left: parent.left
                    anchors.leftMargin: 600
                    Text {
                        id: set1
                        text: qsTr("60")
                        font.pixelSize: 26
                       // font.bold: true
                        font.family: "times new roman"
                    }
                    Text {
                        id: set2
                        text: qsTr("60")
                        font.pixelSize: 26
                       // font.bold: true
                        font.family: "times new roman"
                    }
                    Text {
                        id: set3
                        text: qsTr("60")
                        font.pixelSize: 26
                      //  font.bold: true
                        font.family: "times new roman"
                    }
                    Text {
                        id: set4
                        text: qsTr("60")
                        font.pixelSize: 26
                        //font.bold: true
                        font.family: "times new roman"
                    }
                }

                Row{

                    width: 700
                    height: 250
                    Rectangle{
                        height:50
                        width: 700
                        color: "black"
                        Text {
                            anchors.top: parent.top
                            anchors.topMargin: 13
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                           // anchors.centerIn: parent
                            text: qsTr("COURSE")
                            font.family: "times new roman"
                            font.pixelSize: 26
                            color: "white"
                        }
                        Text {
                            anchors.top: parent.top
                            anchors.topMargin: 13
                            //anchors.centerIn: parent
                            anchors.left: parent.left
                            anchors.leftMargin: 280
                            text: qsTr("STREEM")
                            font.family: "times new roman"
                            font.pixelSize: 26
                            color: "white"
                        }
                        Text {
                            anchors.top: parent.top
                            anchors.topMargin: 13
                           // anchors.centerIn: parent
                            anchors.left: parent.left
                            anchors.leftMargin: 570
                            text: qsTr("SEATS")
                            font.family: "times new roman"
                            font.pixelSize: 26
                            color: "white"
                        }

                    }


                }
                Column{
                    height: 200
                    width: 500
                    //anchors.fill: parent
                    Rectangle{
                        anchors.left: parent.left
                        anchors.leftMargin: 155
                        width: 3
                        height: 250
                        color: "black"

                        Rectangle{
                            anchors.left: parent.left
                            anchors.leftMargin: 380
                            width: 3
                            height: 250
                            color: "black"
                        }
                    }

                }
            }

            Rectangle{
                visible: false
               anchors.left: parent.left
               anchors.leftMargin: 670
               anchors.top: parent.top
               anchors.topMargin: 272
                id:eligibility
                width: 600
                height: 90
                color: "white"
                Image {
                    anchors.left: parent.left
                    anchors.leftMargin: 545
                    anchors.top: parent.top
                    anchors.topMargin: 62
                    id: eliback
                    source: "qrc:/finaluppp-removebg-preview.png"
                    width: 70
                    height: 40
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            eligibility.visible=false
                             clgmenu.visible=false
                        }
                    }
                }


                Text {
                    id: corsnme
                    text: qsTr("B.E")
                    font.pixelSize: 26
                    anchors.top: parent.top
                    anchors.topMargin: 50
                    anchors.left: parent.left
                    anchors.leftMargin: 60
                    //font.bold: true
                      font.family: "times new roman"
                }



                Text {
                    id:eledetail
                    anchors.top: parent.top
                    anchors.topMargin: 50
                    anchors.left: parent.left
                    anchors.leftMargin: 200
                    text: qsTr("10+2 with 45% + KCET")
                    font.pixelSize: 26
                    //font.bold: true
                    font.family: "times new roman"

                }


                Row{

                    width: 600
                    height: 90
                    Rectangle{
                        height:40
                        width: 600
                        color: "black"
                        Text {
                            anchors.top: parent.top
                            anchors.topMargin: 8
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                           // anchors.centerIn: parent
                            text: qsTr("COURSE")
                            font.family: "times new roman"
                            font.pixelSize: 26
                            color: "white"
                        }
                        Text {
                            anchors.top: parent.top
                            anchors.topMargin:8
                            //anchors.centerIn: parent
                            anchors.left: parent.left
                            anchors.leftMargin: 280
                            text: qsTr("ELIGIBILITY")
                            font.family: "times new roman"
                            font.pixelSize: 26
                            color: "white"
                        }


                    }


                }

                    //anchors.fill: parent
                    Rectangle{
                        anchors.left: parent.left
                        anchors.leftMargin: 150
                        width: 3
                        height: 90
                        color: "black"


                    }


            }



    }

    Popup {


        id: popup2
        //        x: 100
        //        y: 100
        width: window.width
        height:window.height

        opacity: 0.8

        Text {
            id: name3
            text: qsTr("")
            font.pixelSize: 26

        }

        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Text {
            opacity: 100
            //            anchors.left: parent.Left
            //            anchors.leftMargin: 550
            //            anchors.top: parent.Top
            //            anchors.topMargin: 200
            id: popuptext
            anchors.centerIn: parent
            text: qsTr("overview")
            color: "white"
            //            font.bold: true
            ////            font.styleName: Timer
            font{
                family:"Times New Roman"
                pixelSize: 65
                bold: true
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    inform.visible=true
                    popup2.visible=false
                }
            }
        }

    }

    Popup {
        id:popupmission
        x: 100
        y: 100
        width: 600
        height: 500
        modal: true
        focus: true
        Rectangle{
            anchors.centerIn: parent
            width: 600
            height: 500
            color: "white"
        }

        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    }






    Row {
        spacing: 4
        anchors.fill: parent
          id: bar
          width: parent.width
          anchors.top: parent.top
          anchors.topMargin:100
          Rectangle {
            color: "steel blue"

              width: 397
              height: 38
              Text{
              text: qsTr("DETAILS")
              anchors.centerIn: parent
              font.pixelSize: 20
              font.family: "times new roman"
              font.bold: true
               color: "white"
              }
              MouseArea{
                  anchors.fill: parent
                  acceptedButtons: Qt.RightButton|Qt.LeftButton
                  onClicked: {
                      moveid.visible=false
                      acceptedButtons: Qt.RightButton|Qt.LeftButton
                      //detailsss.visible=true
                      inform.visible=true
                      t2.visible=false
                      nextbtn.visible=false
                     // contact.visible=false
                      //contactbtn.visible=false

                      //menubutton.visible=false
                       bar.visible=false

                  }

              }
          }

         Rectangle {
             width: 397
             height: 38
            color: "steel blue"

            Image {
                id: downimg
                source: "qrc:/downmenu-removebg-preview.png"
                anchors.left: parent.left
                anchors.leftMargin: 325
                width: 70
                height: 40
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        upmenu.visible=true
                        downimg.visible=false
                        clgmenu.visible=true
                    }
                }
            }
            Image {
                visible: false
                id: upmenu
                source: "qrc:/finaluppp-removebg-preview.png"
                anchors.left: parent.left
                anchors.leftMargin: 325
                width: 70
                height: 40
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                       upmenu.visible=false
                        downimg.visible=true
                        clgmenu.visible=false
                    }
                }
            }
             Text{
              text: qsTr("ABOUT COURSE")

              font.pixelSize: 20
              font.family: "times new roman"
              font.bold: true
              color: "white"
                 anchors.centerIn: parent
             }
             Column{
                 spacing: 4
                 id:clgmenu
                 y:-height
                 state: "avi"

                visible: false
                 anchors.top: parent.top
                 anchors.topMargin:45
//                 anchors.left: parent.left
//                 anchors.leftMargin:1
                 Rectangle{
                     width: 395
                     height: 38
                     color: "gray"
                     Text {
                         color: "white"
                         font.pixelSize: 20
                         font.bold: true
                         font.family: "times new roman"
                     text: "COURSE DETAILS"
                     anchors.centerIn: parent
                     }
                     MouseArea{
                         anchors.fill: parent
                     onClicked: {

                         courserct.visible=true

                         upmenu.visible=false
                         downimg.visible=true
                         //
                     }
                     }

                 }
         //            MenuSeparator{

         //            }
                 Rectangle{
                     width: 395
                     height: 38
                     color: "gray"
                     Text{
                     text: "FEE DETAILS"
                     color: "white"
                      font.bold: true
                     font.pixelSize: 20
                     font.family: "times new roman"
                     anchors.centerIn: parent
                       }
                     MouseArea{
                         anchors.fill: parent
                     onClicked: {
                         feecourserct.visible=true
                         upmenu.visible=false
                         downimg.visible=true
                     }
                     }


                 }




                 Rectangle{
                     width: 397
                     height: 38
                     color: "gray"
                     Text{
                     text: "ELIGIBILITY"
                     font.pixelSize: 20
                      font.bold: true
                      color: "white"
                     font.family: "times new roman"
                     anchors.centerIn: parent
                      }
                     MouseArea{
                         anchors.fill: parent
                     onClicked: {
                           eligibility.visible=true
                         upmenu.visible=false
                         downimg.visible=true
                     }
                     }
                 }

             }
             Rectangle{
                 visible: false
                anchors.left: parent.left
                anchors.leftMargin: 450
                anchors.top: parent.top
                anchors.topMargin: 100
                 id:feecourserct
                 width: 500
                 height: 250
                 color: "white"
                 Image {
                     anchors.left: parent.left
                     anchors.leftMargin: 447
                     anchors.top: parent.top
                     anchors.topMargin: 220
                     id: back
                     source: "qrc:/finaluppp-removebg-preview.png"
                     width: 70
                     height: 40
                     MouseArea{
                         anchors.fill: parent
                         onClicked: {
                             feecourserct.visible=false
                              clgmenu.visible=false
                         }
                     }
                 }

                 Text {
                     id: feename
                     text: qsTr("B.E")
                     font.pixelSize: 26
                     anchors.top: parent.top
                     anchors.topMargin: 120
                     anchors.left: parent.left
                     anchors.leftMargin: 65
                     //font.bold: true
                       font.family: "times new roman"
                 }
                 Column{
                     spacing: 17
                     anchors.fill: parent
                     anchors.top: parent.top
                     anchors.topMargin: 54
                     anchors.left: parent.left
                     anchors.leftMargin: 180
                 Text {
                     id: fee1
                     text: qsTr("First Year")
                     font.pixelSize: 26
                     //font.bold: true
                     font.family: "times new roman"
                 }
                 Text {
                     id: sfee2
                     text: qsTr("Second Year")
                     font.pixelSize: 26
 //                    anchors.top: parent.top
 //                    anchors.topMargin: 50
 //                    anchors.left: parent.left
 //                    anchors.leftMargin: 160
                    // font.bold: true
                     font.family: "times new roman"
                 }
                 Text {
                     id: fee3
                     text: qsTr("Third Year")
                     font.pixelSize: 26
                     //font.bold: true
                     font.family: "times new roman"
                 }
                 Text {
                     id: fee4
                     text: qsTr("Fourth Year")
                     font.pixelSize: 26
                    // font.bold: true
                     font.family: "times new roman"
                 }
                 }
                 Column{
                     spacing: 17
                     anchors.fill: parent
                     anchors.top: parent.top
                     anchors.topMargin: 54
                     anchors.left: parent.left
                     anchors.leftMargin: 380
                 Text {

                     text: qsTr("19000")
                     font.pixelSize: 26
                     //font.bold: true
                     font.family: "times new roman"
                 }
                 Text {

                     text: qsTr("19000")
                       font.pixelSize: 26
 //                    anchors.top: parent.top
 //                    anchors.topMargin: 50
 //                    anchors.left: parent.left
 //                    anchors.leftMargin: 160
                    // font.bold: true
                     font.family: "times new roman"
                 }
                 Text {

                     text: qsTr("19000")
                     font.pixelSize: 26
                     //font.bold: true
                     font.family: "times new roman"
                 }
                 Text {

                     text: qsTr("19000")
                     font.pixelSize: 26
                    // font.bold: true
                     font.family: "times new roman"
                 }
                 }




                 Row{

                    spacing: 10
                     width: 700
                     height: 250
                     Rectangle{
                         height:50
                         width: 500
                         color: "black"
                         Text {
                             anchors.top: parent.top
                             anchors.topMargin: 13
                             anchors.left: parent.left
                             anchors.leftMargin: 10
                            // anchors.centerIn: parent
                             text: qsTr("COURSE")
                             font.family: "times new roman"
                             font.pixelSize: 26
                             color: "white"
                         }
                         Text {
                             anchors.top: parent.top
                             anchors.topMargin: 13
                             //anchors.centerIn: parent
                             anchors.left: parent.left
                             anchors.leftMargin: 200
                             text: qsTr("YEAR")
                             font.family: "times new roman"
                             font.pixelSize: 26
                             color: "white"
                         }
                         Text {
                             anchors.top: parent.top
                             anchors.topMargin: 13
                            // anchors.centerIn: parent
                             anchors.left: parent.left
                             anchors.leftMargin: 370
                             text: qsTr("AMOUNT")
                             font.family: "times new roman"
                             font.pixelSize: 26
                             color: "white"
                         }

                     }


                 }
                 Column{
                     height: 200
                     width: 500
                     //anchors.fill: parent
                     Rectangle{
                         anchors.left: parent.left
                         anchors.leftMargin: 155
                         width: 3
                         height: 250
                         color: "black"

                         Rectangle{
                             anchors.left: parent.left
                             anchors.leftMargin: 180
                             width: 3
                             height: 250
                             color: "black"
                         }
                     }

                 }
             }


//                          MouseArea{
//                  anchors.fill: parent
//                  acceptedButtons: Qt.RightButton|Qt.LeftButton
//                  onClicked: {
//                      acceptedButtons: Qt.RightButton|Qt.LeftButton
//                      //detailsss.visible=true
//                     // clgmenu.visible=true


//                  }

//              }

          }
          Rectangle {
              width: 397
              height: 38
             color: "steel blue"
              Text {
                color: "white"
              text: qsTr("GO WITH VTU")
              font.pixelSize: 20
              font.family: "times new roman"
              font.bold: true
                 anchors.centerIn: parent
              }
//              MouseArea{
//                  anchors.fill: parent
//                  acceptedButtons: Qt.RightButton|Qt.LeftButton
//                  onClicked: {
//                      acceptedButtons: Qt.RightButton|Qt.LeftButton
//  //                    link_Text.visible=true
//                      Qt.openUrlExternally("https://vtu.ac.in")


//                  }

//              }
              Image {
                  id: vtudown
                  source: "qrc:/downmenu-removebg-preview.png"
                  anchors.left: parent.left
                  anchors.leftMargin: 325
                  width: 70
                  height: 40
                  MouseArea{
                      anchors.fill: parent
                      onClicked: {
                          vtuup.visible=true
                          vtudown.visible=false
                          vtumenu.visible=true
                      }
                  }
              }
              Image {
                  visible: false
                  id: vtuup
                  source: "qrc:/finaluppp-removebg-preview.png"
                  anchors.left: parent.left
                  anchors.leftMargin: 325
                  width: 70
                  height: 40
                  MouseArea{
                      anchors.fill: parent
                      onClicked: {
                         vtuup.visible=false
                         vtudown.visible=true
                          vtumenu.visible=false
                      }
                  }
              }
              Column{
                  spacing: 4
                  id:vtumenu
                  y:-height
                  state: "avi"

                 visible: false
                  anchors.top: parent.top
                  anchors.topMargin:45
 //                 anchors.left: parent.left
 //                 anchors.leftMargin:1
                  Rectangle{
                      width: 397
                      height: 38
                      color: "gray"
                      Text {
                          color: "white"
                          font.pixelSize: 20
                          font.bold: true
                          font.family: "times new roman"
                      text: "VTU WEBSITE"
                      anchors.centerIn: parent
                      }
                      MouseArea{
                          anchors.fill: parent
                      onClicked: {

                        //  courserct.visible=true
                              Qt.openUrlExternally("https://vtu.ac.in")
                          upmenu.visible=false
                          downimg.visible=true
                          //
                      }
                      }

                  }
          //            MenuSeparator{

          //            }
                  Rectangle{
                      width: 397
                      height: 38
                      color: "gray"
                      Text{
                      text: "VTU CALENDAR"
                      color: "white"
                       font.bold: true
                      font.pixelSize: 20
                      font.family: "times new roman"
                      anchors.centerIn: parent
                        }
                      MouseArea{
                          anchors.fill: parent
                      onClicked: {
                   Qt.openUrlExternally("https://vtu.ac.in/academic-calendar/")
                      }
                      }


                  }
          //            MenuSeparator{

          //            }
                  Rectangle{
                      width: 397
                      height: 38
                      color: "gray"
                      Text{
                      text: "VTU RESULTS"
                      font.pixelSize: 20
                       font.bold: true
                       color: "white"
                      font.family: "times new roman"
                      anchors.centerIn: parent
                       }
                      MouseArea{
                          anchors.fill: parent
                      onClicked: {
                 Qt.openUrlExternally("https://results.vtu.ac.in/index_fm.php")
                      }
                      }
                  }

              }

          }


          Rectangle{
              width: 397
              height: 38
             color: "steel blue"
               Text{
                 color: "white"
                text: qsTr("CONTACT US")
                font.pixelSize: 20
                font.family: "times new roman"
                font.bold: true
                   anchors.centerIn: parent
               }
                MouseArea{
                    anchors.fill: parent
                    acceptedButtons: Qt.RightButton|Qt.LeftButton
                    onClicked: {
                        acceptedButtons: Qt.RightButton|Qt.LeftButton
                        //detailsss.visible=true
                       // popup.open()
                        contactdetails.visible=true

                    }

                }

                Image {
                    id: condownimg
                    source: "qrc:/downmenu-removebg-preview.png"
                    anchors.left: parent.left
                    anchors.leftMargin: 325
                    width: 70
                    height: 40
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            conupmenu.visible=true
                            condownimg.visible=false
                            contactdetails.visible=true
                        }
                    }
                }
                Image {
                    visible: false
                    id: conupmenu
                    source: "qrc:/finaluppp-removebg-preview.png"
                    anchors.left: parent.left
                    anchors.leftMargin: 325
                    width: 70
                    height: 40
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                           conupmenu.visible=false
                            condownimg.visible=true
                            contactdetails.visible=false
                        }
                    }
                }

                Rectangle{
                   // anchors.centerIn: parent
                    id:contactdetails
                    visible: false
                    height: 150
                    width: 397
                    color: "gray"
                    anchors.top: parent.top
                    anchors.topMargin:45

                    Text {
                        id: name
                        color: "white"
                        anchors.top: parent.top
                        anchors.topMargin: 8
                        text: qsTr("     OFFICE NO        :  9380239232")
                        font.pixelSize: 24
                        font.family: "times new roman"
                    }
                    Rectangle{
                        height: 5
                        width: 397
                        anchors.top: parent.top
                        anchors.topMargin:48
                        color: "black"
                    }
                    Text {
                        anchors.top: parent.top
                        anchors.topMargin: 62
                        color: "white"
                        id: name2
                        text: qsTr("     PRINCIPAL NO  :  9945987643")
                        font.pixelSize: 24
                        font.family: "times new roman"
                    }
                    Rectangle{
                        height: 5
                        width: 397
                        anchors.top: parent.top
                        anchors.topMargin: 102
                        color: "black"
                    }
                    Text {
                        anchors.top: parent.top
                        anchors.topMargin: 117
                        color: "white"
                        id: name4
                        text: qsTr("     STAFF NO          :  7090976902")
                        font.pixelSize: 24
                        font.family: "times new roman"
                    }
                }

          }
      }

//      StackLayout {
//          width: parent.width

//          Item {
//              id: homeTab

//          }
//          Item {
//              id: discoverTab

//          }
//          Item {
//              id: activityTab
//          }
//          Item {
//              id: tab3
//          }
//      }

      Image{
          width: 242
          height: 125
          id:moveid
          source: "qrc:/move6-removebg-preview.png"
          anchors.top: parent.top
          anchors.topMargin: 530
          anchors.left: parent.left
          anchors.leftMargin: 1370
         // anchors.horizontalCenter: parent.horizontalCenter
          //color: "yellow"
          SequentialAnimation{
              running: true
              loops:Animation.Infinite
              ScaleAnimator{
                  id:scaleani
                   target: moveid
                   from: 0.2
                   to:0.8
                   duration: 800
              }
              ScaleAnimator{
                  id:scaleanim
                   target: moveid
                   from: 0.8
                   to:0.2
                   duration: 800
              }

          }
          MouseArea{
              anchors.fill: parent
              // acceptedButtons: Qt.RightButton|Qt.LeftButton
              onClicked: {
                  // acceptedButtons: Qt.RightButton|Qt.LeftButton
                   t2.visible=false
                   //contact.visible=false
                  if(mainmen.state=="avi")
                  {
                      slidei.start();
                      mainmen.state="avii";
                      //details.visible=false
                  }

              }

          }
      }



      Image{
          id:mainmen
          x:-width
          y:100
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
        text: "To provide technical education and inculcate research attitude amoung students to
become responsible citizens of the nation to uphold professional ethics and societal
morals."

              //font.bold: true
              font.pixelSize: 25
              color: "white"
              anchors.top: parent.top
              anchors.topMargin: 158
               anchors.left: parent.left
               anchors.leftMargin: 130
               topInset: 45
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
* To impart technical education to the rural and weaker section of the society.
* To establish interaction with industries and institutions of repute to enhance
   experiential learning and develop research attitude amongst students.
* To facilitate entrepreneurial and employability skills amongst students to excel
   in emerging competition.
* To produce ethical and responsible technocrats focussing the development of rural
   areas to contribute to the national progress."

              //font.bold: true
              font.pixelSize: 25
              color: "white"
              anchors.top: parent.top
              anchors.topMargin: 308
               anchors.left: parent.left
               anchors.leftMargin: 130
               topInset: 100
               font.family: "times new roman"
               font.wordSpacing: 1.1
          }

              MouseArea{
                  anchors.fill: parent
                  onClicked: {
                     slideout.start()
                      //contact.visible=true
                   //detailbutton.visible=true
                  }

              }
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
              width: 120
              height: 80
              MouseArea{
                  anchors.fill: parent
                  onClicked: {
                      t2.visible=true
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

          Image{
              width: 180
              height: 80
              id:prncmoveid
              source: "qrc:/move6-removebg-preview.png"
              anchors.top: parent.top
              anchors.topMargin: 650
              anchors.left: parent.left
              anchors.leftMargin: 1395
             // anchors.horizontalCenter: parent.horizontalCenter
              //color: "yellow"

              MouseArea{
                  anchors.fill: parent
                  // acceptedButtons: Qt.RightButton|Qt.LeftButton
                  onClicked: {
                      // acceptedButtons: Qt.RightButton|Qt.LeftButton
                       t2.visible=false
                       //contact.visible=false
                      if(princii.state=="avi")
                      {
                          slidein3.start();
                          princii.state="avii";
                          //details.visible=false
                      }

                  }

              }
          }


      }



      Image{
          id:princii
          x:-width
          y:100
          width: parent.width
          height: parent.height
          //color: "lime"
          source: "qrc:/backgroundformsn.jpg"
          state: "avi"
          Text {
              id: gecprnc
              text: qsTr("PRINCIPAL OF GECH")
              font.pixelSize: 49
              color: "white"
              font.family: "times new roman"
              anchors.horizontalCenter: parent.horizontalCenter
              anchors.top: parent.top
              anchors.topMargin: 38
          }
          Text {
              anchors.top: parent.top
              anchors.topMargin: 136
              anchors.left: parent.left
              anchors.leftMargin: 850
              font.pixelSize: 37
              color: "orange"
              font.family: "times new roman"
              id: prncname
              //font.underline: true
              text: qsTr("
Dr. JAGADISH KORI
            ")
          }
          Text {
              anchors.top: parent.top
              anchors.topMargin: 200
              anchors.left: parent.left
              anchors.leftMargin: 850
              font.pixelSize: 30
              color: "white"
              font.family: "times new roman"
              //id: prncname
              //font.underline: true
              text: qsTr("
Department : Civil Engineering
Qualification Details : BE.(Civil), M.Tech,
P.hD in Civil Engg.
Specialization: Civil Engineering.
Total Experience (in years): 21

            ")
          }

          NumberAnimation{


              id:slidein3
              target: princii
              from: -width
              property: "x"
              to:0
              duration: 200

          }
          NumberAnimation{
              id:slideout3
              target: princii
              from:0
              to: -width
              property: "x"
              duration: 200
          }

          Image {
              id: princiimf
              source: "qrc:/princi2.jpg"
              width: 730
              height: 500
              anchors.left: parent.left
              anchors.leftMargin: 40
             anchors.top: parent.top
             anchors.topMargin: 126
             fillMode: Image.Stretch


          }


          Image {
              id: prncbackimg
              source: "qrc:/rotateimage-removebg-preview1.png"
              width: 120
              height: 80
              MouseArea{
                  anchors.fill: parent
                  onClicked: {
                      t2.visible=false
                     if(princii.state=="avii"){
                             slideout3.start()
                             princii.state="avi"
                        //
                         //contact.visible=true
                                            //details.visible=true
                                        }
                  }
              }

          }

      }





      Item {
          id: root
          property alias text:t2.text
          property int spacing:5

          anchors.top: parent.top
          anchors.topMargin: 543
          width: parent.width //+ spacing
          height: t2.height
          clip: true
         // source: "qrc:/backgroundformsn.jpg"


          Text {
                 anchors.centerIn: parent
                 font.italic: true
              id: t2
              text: qsTr("WELCOME TO THE COLLEGE OF GEC")
              font.pixelSize: 38
              font.bold: true
              font.family: "times new roman"
              color: "orange"
              //color: "purple"

  //            ColorAnimation {
  //                from: "white"
  //                to: "black"
  //                duration: 20000
  //            }

              NumberAnimation on x {running:true; from:root.width;to:-root.width;duration:20000;loops:Animation.Infinite}
              //            Text {
              //                x:root.width
              //                text: t2.text
              //            }
          }
      }


}






