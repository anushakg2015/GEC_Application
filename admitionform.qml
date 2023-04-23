import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2


Rectangle {
//    property var stdid:
//        stdid=1;
    signal admitionbackClicked()
         color: "white"
         width: parent.width
         height: parent.height
     property var stdid:[stdid=avinash.refstdid()]
         property var ids:
             ids=avinash.refstdid()

//         property var v1:
//             v1=name5.text
//         property var v2:
//             v2=name6.text
//         property var v3:
//             v3=v1+v2



       // totalfee=name5.text+name6.text

 ListView{
     anchors.fill: parent
     model: stdid.length
     anchors.left: parent.left
     anchors.leftMargin: 1150
     anchors.top: parent.top
     anchors.topMargin: 700
     delegate:
         //Rectangle{
//         width: 200
//         height: 50
//         color: "YELLOW"
//         anchors.left: parent.left
//         anchors.leftMargin: 300
//         anchors.top: parent.top
//         anchors.topMargin: 800

    Text {
        id: stdcount

        font.pixelSize: 25
        font.bold: true
        text: stdid[index]
    }
     //}
 }


    Text {
        id: stdcountRF
        anchors.left: parent.left
        anchors.leftMargin: 910
        anchors.top: parent.top
        anchors.topMargin: 700
        font.pixelSize: 25
        font.bold: true
        text: "STUDENT REF.NO:"
    }


    Dialog{
        id:errordialog

    }



     anchors.centerIn: parent
     Column{
        // anchors.horizontalCenter: parent.horizontalCenter
         anchors.left: parent.left
         anchors.leftMargin: 600
         anchors.top: parent.top
         anchors.topMargin: 25
           width: parent.width
         height: parent.height
         spacing: 22

    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name1
         placeholderText:" ENTER THE NAME"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320

     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name2
         placeholderText:" ENTER THE YEAR"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320

     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name3
         placeholderText:" ENTER THE BRANCH"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320

     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name4
         placeholderText:" ENTER THE DATE"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320
     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name5
         placeholderText:" ENTER THE FEE"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320
     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name6
         placeholderText:" ENTER MAINTENANCE FEE"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320

     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name7
         placeholderText:" ENTER THE TOTALFEE"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320

     }
    TextField {
          // anchors.centerIn: parent
           // echoMode: TextInput.Password
        id:name8
         placeholderText:" ENTER STUDENT ID"
         font{
             pixelSize: 23
             bold: true
             family: "Times New Roman"
         }
         height: 50
         width: 320
     }

     }

//    TextField {
//          // anchors.centerIn: parent
//            //echoMode: TextInput.Password
//        id:name4
//         placeholderText:" RE-ENTER PASSWORD"
//         font{
//             pixelSize: 23
//             bold: true
//             family: "Times New Roman"
//         }
//         height: parent.height/14
//         width: parent.width/2
//         anchors.left: parent.left
//         anchors.leftMargin: 200
//         anchors.top: parent.top
//         anchors.topMargin: 300
//     }



     Row{
       width: parent.width
       height: parent.height

      anchors.top: parent.top
      anchors.topMargin: 600
      anchors.left: parent.left
      anchors.leftMargin: 540

       spacing: 40


    Rectangle{
        width: 200
        height: 50
        color: "orange"
          radius: 8


        Text {
            id: sbt
            text: qsTr("submit")
            anchors.centerIn: parent
            font.pixelSize: 30
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(name1.displayText.localeCompare("")===0){
                    errordialog.title=" ENTER THE NAME FIRST"
                    errordialog.open();
                }else if(name2.displayText.localeCompare("")===0){
                    errordialog.title="ENTER THE YEAR FIRST"
                    errordialog.open();
                }else if(name3.displayText.localeCompare("")===0){
                    errordialog.title="ENTER THE BRANCH"
                     errordialog.open();
                }else if(name4.displayText.localeCompare("")===0){
                    errordialog.title="ENTER THE DATE FIRST"
                     errordialog.open();
                }else if(name5.displayText.localeCompare("")===0){
                    errordialog.title="ENTER THE FEE FIRST"
                     errordialog.open();
                }else if(name6.displayText.localeCompare("")===0){
                    errordialog.title="ENTER MAINTENANCE FEE"
                    errordialog.open();
                }else if(name7.displayText.localeCompare("")===0){
                    errordialog.title="ENTER THE TOTALFEE FIRST"
                    errordialog.open();
                }else if(name8.displayText.localeCompare("")===0){
                    errordialog.title="ENTER THE SI.NO FIRST"
                    errordialog.open();
                }   /*else if(name8.text===ids){
                    errordialog.title="STUDENT ID IS ALREADY EXIST"
                    errordialog.open();
                }*/

                else{


             avinash.admitiondetail(name1.displayText,name2.displayText,name3.displayText,name4.displayText,name5.displayText,name6.displayText,name7.displayText,name8.displayText);
                 // avinash.studentname()
                    sucess.visible=true
                    //stdid[index++]

                }
                console.log("i am in third pg name")
            }
        }
    }

    Rectangle{
        width: 200
        height: 50
        color: "orange"
        radius: 8

        Text {
            id: name
            anchors.centerIn: parent
            font.pixelSize: 30
            text: qsTr("BACK")

        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
             admitionbackClicked();
                console.log("std ref no =",stdid)
//                const v1= parseInt(name5.text)
//                const v2= parseInt(name6.text)
//               console.log("total fee of student="+(v1+v2))
            }
        }
    }


     }
     Rectangle{
         width: 80
         height: 30
         color: "blue"
         radius: 8
      anchors.left: parent.left
      anchors.leftMargin: 938
      anchors.top: parent.top
      anchors.topMargin: 470
         Text {
             id:totalfee
             anchors.centerIn: parent
             font.pixelSize: 20
             color: "white"
             text: qsTr("TOTAL")

         }
         MouseArea{
             anchors.fill: parent
             onClicked: {

                 const v1= parseInt(name5.text)
                 const v2= parseInt(name6.text)
                console.log("total fee of student="+(v1+v2))
                 name7.text=(v1+v2)
             }
         }
     }

     Text {
         id: sucess
         visible: false
         text: qsTr("STUDENT ADMISSION IS SUCESSFULLY COMPLETED")
         font.pixelSize: 28
         anchors.top: parent.top
         anchors.topMargin: 650
         anchors.left: parent.left
         anchors.leftMargin: 200
     }
}
