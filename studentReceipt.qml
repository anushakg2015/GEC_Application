import QtQuick 2.0

Rectangle {
    width: parent.width
    height: parent.height
    color: "black"

signal studentreceiptbackClicked();
    property int temp: 0
   property var imgArray:[ imgArray =avinash.studentname()]
  property var stdyear:[stdyear=avinash.year()]
  property var stdbranch:[stdbranch=avinash.branch()]
  property var stdfee:[stdfee=avinash.fee()]
  property var stdDATE:[stdDATE=avinash.date()]
  property var stdtfee:[stdtfee=avinash.total()]
  property var stdid:[stdid=stdid=avinash.refstdid()]
//  Rectangle{
//      visible: true
//     id:receipt
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
//          anchors.left: parent.left
//          anchors.leftMargin: 300
//          anchors.top: parent.top
//          anchors.topMargin: 134
          anchors.centerIn: parent
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




 // }
  Text {
      id: back
      text: qsTr("<<")
      font.pixelSize: 80
      font.bold: true
      color: "white"
      //anchors.horizontalCenter: parent.horizontalCenter
      //anchors.verticalCenter: parent.verticalCenter
      MouseArea{
          anchors.fill: parent
          onClicked: {
             studentreceiptbackClicked()
          }
      }
  }

}
