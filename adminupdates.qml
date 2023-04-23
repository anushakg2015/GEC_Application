import QtQuick 2.12
import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.0
import QtQuick 2.2

Rectangle {
    id: root
    signal  imagepreviousClicked();
    signal admitionbackClicked()
       signal admitionClicked();
    signal receiptClicked();
      signal studentreceiptClicked();
    property var imgArray:[ imgArray =avinash.userimage(fileDialog.fileUrl)]


    Text {
        id: gallarttext
        text: qsTr("ADMIN UPDATES")
        font.bold: true
        font.pixelSize: 50
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 110
    }
    //source: "qrc:/gallarypic.jpg"
    property int temp: 0
    color: "black"
    anchors.fill: parent
    height: parent.height/2
    width:parent.width/2


    signal fileclicked();
    Rectangle{

        width: 500
        height: 80
        radius: 20
        color: "yellow"
        id:imgbtn
        visible: true
        Text{
            anchors.centerIn: parent
            text: "ADD UPDATES"
            font.bold: true
            font.pixelSize: 50
        }
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            //FileDialog.visible:false
            onClicked: {
                // zoomImg.visible=true
                //imgbtn.visible=true
                admitionbill.visible=false
                fileDialog.visible=true
                grid.visible=true
                imgbtn.visible=false
                gallarttext.visible=false
                admitionbtn.visible=false
                admitionrcpt.visible=false
            }
        }
    }
    Row{
        anchors.left: parent.left
        anchors.leftMargin: 360
        anchors.top: parent.top
        anchors.topMargin: 550
        //anchors.centerIn: parent
        width: parent.width
        height: parent.height
        spacing: 150
    Rectangle{
        id:admitionbill
        width: 200
        height: 60
        color: "green"
        radius: 10

        Text {
            id: admnbl
            text: qsTr("TOTAL STD.")
            anchors.centerIn: parent
            font.pixelSize: 28
            color: "white"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
               receiptClicked();
                 console.log(avinash.studentname())

            }
        }
    }
    Rectangle{
        id:admitionbtn
        width: 200
        height: 60
        color: "green"
        radius: 10

        Text {
            id: admn
            text: qsTr("ADMISSION")
            anchors.centerIn: parent
            font.pixelSize: 28
               color: "white"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                admitionClicked();

            }
        }
    }
    Rectangle{
        id:admitionrcpt
        width: 200
        height: 60
        radius: 10
        color: "green"

        Text {

            text: qsTr("RECEIPT")
            anchors.centerIn: parent
            font.pixelSize: 28
               color: "white"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
               studentreceiptClicked()
                 console.log(avinash.studentname())

            }
        }
    }

    }
    GridView{
        id:grid
        visible:false
        y:60
        width: root.width/1.5
        height: root.height/1.5
        anchors.centerIn: parent
        model:imgArray.length
        delegate: del1
        interactive: true
        clip: true
        cellWidth: 142
        cellHeight: 200
    }
    Image {
        id:zoomImg
        source: imgArray[temp]
        width: root.width
        visible: false
        height: root.height
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //   my2.visible=false
                //zoomImg.visible=false
                grid.visible=false
                // imgbtn.visible=true
                my1.visible=true
                anim2.start()
            }
        }
    }
    ParallelAnimation{
        id:anim
        running: false
        NumberAnimation {
            target: zoomImg
            property: "width"
            duration: 200
            from: 0
            to:root.width
        }
        NumberAnimation {
            target: zoomImg
            property: "height"
            duration: 100
            from: 0
            to:root.height
        }
    }
    ParallelAnimation{
        id:anim2
        running: false
        NumberAnimation {
            target: zoomImg
            property: "width"
            duration: 200
            from: root.width
            to:0
        }
        NumberAnimation {
            target: zoomImg
            property: "height"
            duration: 200
            from: root.height
            to:0
        }
    }
    Component{
        id:del1
        Rectangle{
            id:rect1
            Row{
                spacing: 10
                Image {
                    id: i1
                    width: 120
                    height: 90
                    source:imgArray[index]
                    MouseArea{
                        acceptedButtons: Qt.RightButton|Qt.LeftButton
                        anchors.fill: parent
                        onClicked: {
                            temp=index;
                            zoomImg.visible=true
                            imgbtn.visible=true
                            grid.visible=false
                            anim.start()
                            imgbtn.visible=false
                            my1.visible=false
                        }
                    }
                }
            }
        }
    }

    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        nameFilters: [ "Image files (*.jpg *.png)" ]
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrl)
            imgArray = avinash.adminimages(fileDialog.fileUrl);

            //grid.model = imgArray.length
            // Qt.quit()
            //console.log("the path"+fileDialog.folder)
        }
        onRejected: {
            //            if(fileDialog!=jpj,png){
            console.log("Canceled")
            //             Qt.quit()
        }
        //Qt.quit()
    }
    Component.onCompleted:{
        // visible = true
    }
    Item{
        id:my2
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 20
        Rectangle{

            id:my1
            //radius: 10
            height: 40
            width: 150
            Text {
                anchors.centerIn: parent
                text: qsTr("PREVIOUS")
                font{
                    bold: true
                    pixelSize: 20
                }
            }

            color: "orange"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                 admitionbill.visible=true
                        admitionrcpt.visible=true
                    //icon.visible=true
                    imagepreviousClicked()
                }
            }
        }

    }



}








