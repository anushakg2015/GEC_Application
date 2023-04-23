import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.12
import QtQuick.Controls 1.4

Item {
    property int user;
    property var imgArray//:[ imgArray =avinash.userimage(fileDialog.fileUrl)]
    id:window
    visible: true
    width: 1500
    height: 1000




    signal nextclicked()
    signal registerclicked()
    signal homepagebackClicked();

//    Rectangle{
//        id:warning
//        visible: false
//        anchors.fill: parent
//        color: "blue"
//        Text {

//            text: qsTr("login failed")

//            anchors.centerIn: parent
//            MouseArea{
//                anchors.fill: parent
//                onClicked: {
//                     warning.visible=false
//                }
//            }
//        }
//    }

    //opacity:0.4
    Image
    {
      id: backimage
      smooth: true
      visible: false
        Text {
            id: maintext
            //text: qsTr("*****GOVT ENG COLLEGE*****")


        }
        source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
        width: window.width
        height: window.height
        anchors.centerIn: parent
}
    FastBlur{
        anchors.fill: backimage
        source: backimage
        radius: 25
    }
    Rectangle{
        width: parent.width
        height: 85
        color: "black"
    Text {
        id:clgname
        text: qsTr("GOVERNMENT ENGINEERING COLLEGE,HAVERI")
        color: "white"
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter
       font.bold: true
           font.family: "times new roman"
       font.pixelSize: 45
    }
    }

        Image {

            id: frontimage
             source: "qrc:/NEW COLLEGE PHOTO2.jpeg"

            width: 1000
            height: 495
            anchors.centerIn: parent
            opacity: 40
           //color:"transparent"
            // color: "black"
           // radius: 10
//            border{
//                color: "black"
//                width: 2
//            }

            Column{
                spacing: 40
                width:parent.width
                height: parent.height
                anchors.centerIn: parent


                Text {
                    id: text1
                    text: qsTr("USER LOGIN PAGE")
                    color: "white"
                    font{
                        pixelSize: 40
                        bold: true
                        family: "Times New Roman"



                    }
                    anchors.horizontalCenter: parent.horizontalCenter

                }

                TextField {
                    id:name
                    placeholderText:" Enter the name"
                    focus: true

                    font{
                        pixelSize: 25
                        bold: true
                        family: "Times New Roman"


                    }



                    //focus: true
                    height: parent.height/11
                    width: parent.width/2

                    //anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenter: parent.horizontalCenter



                }
                TextField {
                    id:password
                        focus: true
                    //echoMode: TextInput.Password
                    placeholderText:" Enter the password"
                    //echoMode: TextInput.Password
                    font{
                        pixelSize: 25
                        bold: true
                        family: "Times New Roman"

                    }


                    //focus: true
                    height: parent.height/11
                    width: parent.width/2
                    //anchors.horizontalCenter: parent.horizontalCenter
      anchors.horizontalCenter: parent.horizontalCenter

                }
                Rectangle{
                    id:newuser
                    radius: 20
                    width: 270
                    height: 35
                    color: "yellow"
                    Text {
                        id: registerid
                        text: qsTr("NEWUSER SIGNUP")
                        font.bold: true
                        font.pixelSize: 23
                        anchors.centerIn: parent

                    }
                    border.color: "red"
                    anchors.horizontalCenter: parent.horizontalCenter
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("inside the register page")
                            registerclicked()
                        }
                    }
                }

                Row{

                    id:row1
                   height: 100
                    width: parent.width

                   anchors.left: parent.left
                   anchors.leftMargin: 315


                    spacing: 14
//                    Rectangle{
//                        border.color: "black"
//                        radius: 20
//                        width: 120
//                        height: 40
//                        color: "black"

////                        gradient: Gradient {
////                            GradientStop { position: 0.0; color: "pink" }
////                            GradientStop { position: 0.33; color: "yellow" }
////                            GradientStop { position: 1.0; color: "green" }
////                        }

//                        Text {
//                            id: submitid
//                            text: qsTr("SUBMIT")
//                            color: "white"
//                            anchors.centerIn: parent

//                            font{
//                                pixelSize:15
//                                bold:true


//                            }
//                        }
//                        MouseArea{
//                            anchors.fill: parent

//                            onClicked: {
//                                if(name.text.localeCompare("")===0 ){
//                                    dialog.open()
//                                    // dialog2.open()
//                                }else if(password.text.localeCompare("")===0)
//                                    dialog2.open()

////                                else{



////          avinash.selectvalue(name.displayText,password.displayText)
////           avinash.callME( name.displayText, password.displayText);

////      avinash.retrive( name.displayText, password.displayText);
////       console.log("user name is:"+name.displayText)
////          console.log("password is:"+password.displayText)
////                                    textfield3.text=name.displayText
////                                }
//                                else{
//     user= avinash.retrive(name.displayText,password.displayText)
//                      if(user){
//                    console.log("The user can log in user = "+user)
//                            // nextclicked()
//                           textfield3.text=name.displayText
//                         }else{
//                console.log("The user cannot log in user = "+user)
//                    logindialog.open()
//                                 }
//                                       }


//                            }


//                        }

//                    }
                    Dialog{
                        id:dialog
                        Text {
                           anchors.centerIn: parent
                           font.family: "times new roman"
                           font.pixelSize: 20
                            text: qsTr("ENTER THE NAME FIRST")


                        }

                    }
                    Dialog{
                        id:logindialog
                        Text{
                            anchors.centerIn: parent
                            font.family: "times new roman"
                            font.pixelSize: 20
                            text: "ERROR IN DETAILS"
                        }
                    }

                    Dialog{
                        id:dialog2
                        Text {
                            anchors.centerIn: parent
                            font.family: "times new roman"
                            font.pixelSize: 20
                            text: qsTr("ENTER THE PASSWORD")

                        }

                    }


                    Rectangle{
                        id:clearButton
                        border.color: "black"
                        radius: 20
                        width: 120
                        height: 40
                        color: "black"
//                        gradient: Gradient {
//                            GradientStop { position: 0.0; color: "red" }
//                            GradientStop { position: 0.33; color: "yellow" }
//                            GradientStop { position: 1.0; color: "green" }
//                        }

                        Text {
                            id: clearid
                            text: qsTr("CLEAR")
                            anchors.centerIn: parent
                            color: "white"
                            font{
                                pixelSize: 15
                                bold:true


                            }
                        }
                        MouseArea{

                            anchors.fill: parent
                            onClicked: {


                                console.log("clear button entered")
                                //                           /* name.undo()*/
                                name.text=""
                                password.text=""
                                //textfield3.text=""

                                //password.clear()
                                console.log("cleared")


                            }
                        }
                    }
                    Rectangle{
                        border.color: "black"
                        radius: 20

                        width:120
                        color: "black"
//                        gradient: Gradient {
//                            GradientStop { position: 0.0; color: "blue" }
//                            GradientStop { position: 0.33; color: "yellow" }
//                            GradientStop { position: 1.0; color: "green" }
//                        }
                        height: 40

                        Text {
                            id: cancelid
                            anchors.centerIn: parent
                            text: qsTr("previous")
                            color: "white"
                            font{
                                pixelSize: 15
                                bold:true



                            }

                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                               homepagebackClicked()
                                console.log("window closed")
                            }
                        }

                    }


                    Rectangle{
                        id:nextbutton
                        border.color: "black"
                        radius: 20

                        width:120
                        height: 40
                             color: "black"
//                        gradient: Gradient {
//                            GradientStop { position: 0.0; color: "blue" }
//                            GradientStop { position: 0.33; color: "yellow" }
//                            GradientStop { position: 1.0; color: "green" }
//                        }

                        Text {
                            id:next
                            anchors.centerIn: parent
                            text: qsTr("next")
                            color: "white"
                            font{
                                pixelSize: 15
                                bold:true
                            }
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
//                               user= avinash.retrive(name.displayText,password.displayText)
//                                if(user){
//                                    console.log("The user can log in user = "+user)
//                                   nextclicked()
//                                }else{
//                                    console.log("The user cannot log in user = "+user)
//                                    dialog.open()
//                                }

//                                if(user_name===name.displayText)
//                                {
//                                  avinash.retrive()
                      if(name.text.localeCompare("")===0 ){
                                    dialog.open()
                                    // dialog2.open()
                          }else          if(password.text.localeCompare("")===0)
                                    dialog2.open()
                                else{
     user= avinash.retrive(name.displayText,password.displayText)
                      if(user){
                    console.log("The user can log in user = "+user)
                             nextclicked()
                         }else{
                console.log("The user cannot log in user = "+user)
                    logindialog.open()
                                 }
                                       }
                                    }
                                    // nextclicked()
                                    //                 if(avinash.retrive( name.displayText, password.displayText)==avinash.retrive(0,1))
                                    //                 {

                                    //                 }else{
                                    //                     dialog.open()
                                    //                 }

                                    //                          if( avinash.retrive(name.displayText,password.displayText))
                                    //                          {

                                    //                              nextclicked()
                                    //                          }
                                    //                          else{
                                    //                              dialog.open()

                                    //                          }





                                }


                                // }else{
                                //   dialog2.open()
                                //}nextclicked()


                            }
                        }



//                Rectangle{
//                    radius: 10
//                    border.color: "black"

//                    height: parent.height/14
//                    width: parent.width/3
//             anchors.horizontalCenter: parent.horizontalCenter
//             color: "orange"
//                    Text {
//                        id:text2

//                        text: qsTr("CURRENT USER")
//                        color: "white"
//                        font{
//                            pixelSize: 25
//                            bold: true
//                            family: "Times New Roman"
//                        }
//                        anchors.horizontalCenter: parent.horizontalCenter
//                    }
//                    TextField {
//                        id:textfield3
//                        x:120
//                        y:60
//                        placeholderText:""
//                        font{
//                            pixelSize: 25
//                            bold: true
//                            family: "Times New Roman"

//                        }


//                        //focus: true
//                        height: parent.height
//                        width: parent.width
//                        //anchors.horizontalCenter: parent.horizontalCenter
//                        // anchors.horizontalCenter: parent.horizontalCenter

//                    }

//                }
            }






//            Rectangle{
//                id:re1
//                width: 200
//                height: 60
//                anchors.left: parent.left
//                anchors.leftMargin: 20
//                anchors.top: parent.top
//                anchors.topMargin: 320
//                Text {
//                    id: info
//                    text: qsTr("RAMESH")
//                    font.bold: true
//                    font.pixelSize: 15
//                    anchors.centerIn: parent
//                }
//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: {
//                        fileDialog.visible=true
//                    }
//                }
//            }


    }
//        DropShadow {
//                anchors.fill: backimage
//                horizontalOffset: 3
//                verticalOffset: 3
//                radius: 8.0
//                samples: 17
//                color: "#80000000"
//                source:"qrc:/../gechaveriimage.jpg"
//        }

}





