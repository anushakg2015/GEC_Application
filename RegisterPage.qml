import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.12
Item{
   //color: "black"
   width: parent.width
   height: parent.height
  // source: "qrc:/../image5.jpg"
   signal registerbuttonclicked();
   signal cancelClicked();
Image {
    id: registerimage
    anchors.centerIn: parent
    source: "qrc:/NEW COLLEGE PHOTO2.jpeg"

     height:parent.height
     width: parent.width
     FastBlur{
         anchors.fill: registerimage
         source: registerimage
         radius: 25
     }


   Image
   {
       source: "qrc:/NEW COLLEGE PHOTO2.jpeg"
       width: 1000
       height: 495
       anchors.centerIn: parent
      Column{
         spacing: 45
         id:registercolumn
         width: parent.width
         height: parent.height
         anchors.centerIn: parent
         Text {
             id: text1
             text: qsTr("REGISTER PAGE")
             color: "white"
             font{
                 pixelSize: 40
                 bold: true
                 family: "Times New Roman"


                  }
             anchors.horizontalCenter: parent.horizontalCenter

         }
         TextField {
               // anchors.centerIn: parent

             focus: true
             id:name2
              placeholderText:" ENTER THE NAME"
              font{
                  pixelSize: 23
                  bold: true
                  family: "Times New Roman"
              }
              height: parent.height/14
              width: parent.width/2
              anchors.horizontalCenter: parent.horizontalCenter
          }
         TextField {
               // anchors.centerIn: parent
                // echoMode: TextInput.Password
             id:name3
              placeholderText:" ENTER THE PASSWORD"
              font{
                  pixelSize: 23
                  bold: true
                  family: "Times New Roman"
              }
              height: parent.height/14
              width: parent.width/2
              anchors.horizontalCenter: parent.horizontalCenter
          }
         TextField {
               // anchors.centerIn: parent
                 //echoMode: TextInput.Password
             id:name4
              placeholderText:" RE-ENTER PASSWORD"
              font{
                  pixelSize: 23
                  bold: true
                  family: "Times New Roman"
              }
              height: parent.height/14
              width: parent.width/2
              anchors.horizontalCenter: parent.horizontalCenter
          }
         Row{
             height: parent.height/1.2
             width: parent.width/3
            // anchors.centerIn: parent

             anchors.horizontalCenter: parent.horizontalCenter
             spacing: 15
            Rectangle{
                id:registersubmit
                radius: 10
                height: 40
                width: 120
                gradient: Gradient {
                         GradientStop { position: 0.0; color: "white" }
                         GradientStop { position: 0.33; color: "yellow" }
                         GradientStop { position: 1.0; color: "orange" }
                     }

                Text {
                    id: submitltext
                    text: qsTr("SIGNUP")
                    anchors.centerIn: parent
                    font.bold: true
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {



//                        if(name3.text.localeCompare(name3)===name4.text.localeCompare(name4))
//                        {
//                        console.log("new user name is: "+name2.displayText)
//                        console.log("new password: "+name3.displayText)


//                        console.log("conform password: "+name4.displayText)
//                        }else{
//                           dialogelse.open()
//                        }
                        if(name3.text == name4.text)
                        {

                            console.log("new user name is: "+name2.displayText)
                            console.log("new password: "+name3.displayText)
                                  avinash.addvalues(name2.displayText,name3.displayText);

                                  registerbuttonclicked();
                            console.log("conform password: "+name4.displayText)
                        }else{
                            dialogelse.open()
                        }
                       // if(name3.text.localeCompare()===name4.text.localeCompare())
                        //{
                      avinash.receiveMe(name2.displayText,name3.displayText,name4.displayText)
                        //}else{
                          // dialogelse.open()
                        //}

                    }
                    }

                    }
            Dialog{
                 id:dialogelse
                 Text{
                     text: qsTr("password is not matching")
                     font.family: "times new roman"
                     font.pixelSize: 20
                 }
             }




            Rectangle{
                id:registercancel
                radius: 10
                height: 40
                width: 120
                gradient: Gradient {
                         GradientStop { position: 0.0; color: "white" }
                         GradientStop { position: 0.33; color: "yellow" }
                         GradientStop { position: 1.0; color: "orange" }
                     }
                Text {
                    id: canceltext
                    text: qsTr("CANCEL")
                    anchors.centerIn: parent
                    font.bold: true
                }



                MouseArea{
                    anchors.fill: parent

                    onClicked: {

                       console.log("cancel clicked")
                     cancelClicked()
                    }
                }
           }
         }
     }
}
}
}
