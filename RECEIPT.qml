import QtQuick 2.0
import QtQuick.Layouts 1.0

Rectangle {
    id:root
     color: "black"
    width: parent.width
    height: parent.height
 signal receiptbackClicked()


    property int temp: 0
   property var imgArray:[ imgArray =avinash.stdid()]

  property var stdyear:[stdyear=avinash.allyears()]
    //  property var stdyear:[stdyear=avinash.allyears()]
      property var stdbranch:[stdbranch=avinash.allbranches()]
      property var stddates:[stddates=avinash.alldates()]
      property var stdfees:[stdfees=avinash.allfees()]
      property var stdmaintain:[stdmaintain=avinash.allmaintain()]
      property var stdtotal:[stdtotal=avinash.alltotal()]
      property var stdid:[stdid=avinash.allstdid()]
//    ListView{
//        id:grid
//        visible: true
//        y:60
//        width: root.width
//        height: root.height
//        anchors.centerIn: parent
//        model: imgArray.length
//        //model: avinash.userimage(index)
//        delegate: del1
//        interactive: true
//        clip: true


////        cellWidth: root.width
////        cellHeight: root.height
//    }
//    Component{
//        id:del1
//        Rectangle{
//            width: root.width
//            height: 60
//            id:rect1
//            Column{
//                spacing: 300

//                Text {
//                    id: i1
//                    font.pixelSize: 30
//                    text:  imgArray[index]
//                }

//            }


//        }

//    }

    Rectangle{
        width: parent.width
        height: 68
        color: "green"
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 50
            id: tx1
            text: qsTr("STD.NAME")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 260
            id: tx2
            text: qsTr("STD.YEAR")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 430
            id: tx3
            text: qsTr("STD.BRANCH")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 650
            id: tx4
            text: qsTr("DATE")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 830
            id: tx5
            text: qsTr("STD.FEE")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
             anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 1030
            id: tx6
            text: qsTr("MAINT.FEE")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 1250
            id: tx7
            text: qsTr("TOTAL FEE")
             color: "WHITE"
             anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
             font.pixelSize: 25
             font.bold: true
        }
        Text {
            anchors.left: parent.left
            anchors.leftMargin: 1450
            id: tx8
            text: qsTr("STD.ID")
            color: "WHITE"
            anchors.horizontalCenter: parent.horizontalCenter
               anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 25
            font.bold: true
        }
    }




  ListView{
      anchors.top: parent.top
      anchors.topMargin: 70
      anchors.fill: parent
      id:lst1
      model: imgArray.length
      spacing: 5
      delegate: Rectangle{
          color: "orange"
          width: root.width
          height: 50

          Text {
              id: t12
              anchors.left: parent.left
              anchors.leftMargin: 50
              text:imgArray[index]
              anchors.horizontalCenter: parent.horizontalCenter
                   font.pixelSize: 25
          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 280
              anchors.horizontalCenter: parent.horizontalCenter
              id: t2
              font.pixelSize: 25
              text:stdyear[index]
          }
//          Text {
//              anchors.left: parent.left
//              anchors.leftMargin: 150
//              anchors.horizontalCenter: parent.horizontalCenter
//              id: t3
//              font.pixelSize: 25
//              text:stdyear[index]
//          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 450
              anchors.horizontalCenter: parent.horizontalCenter
              id: t4
              font.pixelSize: 25
              text:stdbranch[index]
          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 650
              anchors.horizontalCenter: parent.horizontalCenter
              id: t5
              font.pixelSize: 25
              text:stddates[index]
          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 850
              anchors.horizontalCenter: parent.horizontalCenter
              id: t6
              font.pixelSize: 25
              text:stdfees[index]
          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 1050
              anchors.horizontalCenter: parent.horizontalCenter
              id: t7
              font.pixelSize: 25
              text:stdmaintain[index]
          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 1250
              anchors.horizontalCenter: parent.horizontalCenter
              id: t8
              font.pixelSize: 25
              text:stdtotal[index]
          }
          Text {
              anchors.left: parent.left
              anchors.leftMargin: 1450
              anchors.horizontalCenter: parent.horizontalCenter
              id: t9
              font.pixelSize: 25
              text:stdid[index]
          }
      }

  }
  Text {
      id: back
      text: qsTr("<<")
      font.pixelSize: 30
      font.bold: true
      //anchors.horizontalCenter: parent.horizontalCenter
      //anchors.verticalCenter: parent.verticalCenter
      MouseArea{
          anchors.fill: parent
          onClicked: {
              receiptbackClicked();
          }
      }
  }


}
