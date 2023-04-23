import QtQuick 2.12
import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.0
import QtQuick 2.2



Rectangle {
    signal  imagepreviousClicked();
    id: root
    Text {
        id: gallarttext
        text: qsTr("COLLEGE GALLARY")
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

    Image {
        id: icon

        source: "qrc:/gallarypic.jpg"
        anchors.centerIn: parent
        height: parent.height/2
        width:parent.width/2

        MouseArea{

            anchors.fill: parent
            onClicked: {

                gallarttext.visible=false
                //imgbtn.visible=true
                grid.visible=true
                icon.visible=false
                //fileDialog.visible=false

            }
        }
    }

    property var imgArray:[ //imgArray =avinash.images(fileDialog.fileUrl)]
        "qrc:/NEW COLLEGE PHOTO2.jpeg","qrc:/NEWCOLLEGE PHOTO.jpeg","qrc:/gechaveriimage.jpg","qrc:/havericlg logo.jpg","qrc:/NEW COLLEGE PHOTO2.jpeg","qrc:/NEWCOLLEGE PHOTO.jpeg","qrc:/NEW COLLEGE PHOTO2.jpeg","qrc:/NEW COLLEGE PHOTO2.jpeg","qrc:/NEW COLLEGE PHOTO2.jpeg","qrc:/NEW COLLEGE PHOTO2.jpeg"
    ]

    GridView{
        visible: false

        id:grid
        //y:60
        width: root.width/1.2
        height: root.height/1.5
        anchors.centerIn: parent
        model: imgArray.length
        delegate: del1
        interactive: true
        clip: true


        cellWidth: 245
        cellHeight: 240
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
                grid.visible=true
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
                    width: 200
                    height: 145
                   source: imgArray[index]



                    MouseArea{
                        acceptedButtons: Qt.RightButton|Qt.LeftButton
                        anchors.fill: parent
                        onClicked: {
                            temp=index;
                            zoomImg.visible=true
                            //imgbtn.visible=true
                            grid.visible=false
                            anim.start()
                            //imgbtn.visible=false
                            my1.visible=false
                        }
                    }
                }

            }

        }

    }
//    Button{

//        id:imgbtn
//        visible: false
//        text: "ADD IMAGES"
//        font.bold: true
//        font.pixelSize: 20
//        anchors.left: parent.left
//        anchors.leftMargin: 200
//        anchors.top: parent.top
//        anchors.topMargin: 20
//        MouseArea{
//            anchors.fill: parent

//            onClicked: {

//                imgbtn.visible=true


//                fileDialog.visible=true


//            }

//        }


//    }

//    FileDialog {

//        id: fileDialog
//        title: "Please choose a file"

//        nameFilters: [ "Image files (*.jpg *.png)" ]
//        onAccepted: {
//            console.log("#####################You chose: " + fileDialog.fileUrl)
//            if(fileDialog.fileUrl)
//                imgArray = avinash.images(fileDialog.fileUrl);
//        }
//        onRejected: {

//            console.log("Canceled")

//        }

//    }
    Component.onCompleted:{

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
                    //icon.visible=true
                    imagepreviousClicked()
                }
            }
        }

    }




}








