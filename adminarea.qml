import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Image {
    source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
    signal adminbackClicked()
    signal adminsubmitClicked()
    Image {
        id: frontimage
        source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
        width: 900
        height: 480
        anchors.centerIn: parent
        opacity: 40
        Column{
            spacing: 50
            width:parent.width
            height: parent.height
            anchors.centerIn: parent
            Text {
                id: text1
                text: qsTr("ADMIN LOGIN")
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
            Row{
                id:row1
                height: parent.height/6
                width: parent.width/2
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 28
                Rectangle{
                    border.color: "black"
                    radius: 20
                    width: 120
                    height: 40
                    color: "orange"
                    Text {
                        id: submitid
                        text: qsTr("SUBMIT")
                        anchors.centerIn: parent
                        font{
                            pixelSize:15
                            bold:true
                        }
                    }
                    MouseArea{
                        anchors.fill: parent

                        onClicked: {
                            if(name.text.localeCompare("")===0 ){
                                dialog.open()
                                // dialog2.open()
                            }else if(password.text.localeCompare("")===0)
                                dialog2.open()
                            else{
                                if(name.text==="ADMIN" && password.text==="9901")
                                    adminsubmitClicked()
                                //textfield3.text=name.displayText
                                else{
                                    logindialog.open()
                                }
                            }
                        }
                    }
                }
                Dialog{
                    id:dialog
                    Text {
                        text: qsTr("enter the name first")
                        font.pixelSize: 14
                          color: "red"
                    }
                }
                Dialog{
                    id:logindialog
                    Text{
                        text: "SORRY!!, Its only for admin"
                          font.pixelSize: 14
                          color: "red"
                    }
                }
                Dialog{
                    id:dialog2
                    Text {
                        text: qsTr("enter password")
                    }
                }
                Rectangle{
                    id:clearButton
                    border.color: "black"
                    radius: 20
                    width: 120
                    height: 40
                    color: "pink"
                    Text {
                        id: clearid
                        text: qsTr("CLEAR")
                        anchors.centerIn: parent
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
                            // textfield3.text=""
                            //password.clear()
                            console.log("cleared")
                       }
                    }
                }
                Rectangle{
                    id:detailsback
                    visible: true
                    height: 40
                    width: 120
                    color: "red"
                    border.color: "black"
                    radius: 20

                    Text {
                        id: backstaff
                        text: qsTr("<-BACK")
                        font.bold: true
                        font.pixelSize: 20
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            adminbackClicked()
                        }
                    }

                }
            }
        }
    }
}
