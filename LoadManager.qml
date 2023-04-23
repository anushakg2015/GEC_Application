import QtQuick 2.0


Item {
    width: parent.width
    height: parent.height
    Loader{
        id: myLoader
        anchors.fill: parent
        focus: true
        source:"qrc:/homepage.qml"

    }
    Connections{
        ignoreUnknownSignals: true
         target: myLoader.item

         function onHomepageClicked()
         {
             myLoader.source="qrc:/FirstPage.qml"
         }
         function onHomepagebackClicked()
         {
             myLoader.source="qrc:/homepage.qml"
         }
         function onNextclicked()
         {
             //myLoader.source=""
             myLoader.source="SecondPage.qml"
             //myLoader.avinash();

         }
         function onRegisterclicked()
         {
              myLoader.source=""
           myLoader.source="qrc:/RegisterPage.qml"
         }
         function onCancelClicked()
         {
              myLoader.source=""
             myLoader.source="qrc:/FirstPage.qml"
         }
         function onPreviousClicked()
         {
              myLoader.source=""
             myLoader.source="qrc:/FirstPage.qml"
         }

         function onSecondClicked()
         {
             console.log("INSIDE third page");
             myLoader.source="qrc:/ThirdPage.qml"
         }
         function onAdmitionClicked()
         {
             console.log("INSIDE third page");
             myLoader.source="qrc:/admitionform.qml"
         }
         function onAdmitionbackClicked()
         {
             console.log("INSIDE third page");
             myLoader.source="qrc:/adminupdates.qml"
         }

         function onRegisterbuttonclicked()
         {
             myLoader.source="qrc:/FirstPage.qml"
         }
//         function onFileclicked()
//         {
//           myLoader.source="qrc:/selectpage.qml"
//         }
         function onImagepreviousClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onMenubackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onCsestaffClicked()
         {
             myLoader.source="qrc:/CsestaffPage.qml"
         }
         function onBackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onEcstaffClicked()
         {
             myLoader.source="qrc:/ece.qml"
         }
         function onEcebackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onMechstaffClicked()
         {
             myLoader.source="qrc:/mechstaff.qml"
         }
         function onMechbackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onCivilstaffClicked()
         {
             myLoader.source="qrc:/civildept.qml"
         }
         function onCivilbackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }

         function onLibraryClicked()
         {
             myLoader.source="qrc:/library.qml"
         }
         function onLbackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onVideoClicked()
         {
             myLoader.source="qrc:/collegevideo.qml"
         }
         function onAdminClicked()
         {
             myLoader.source="qrc:/adminarea.qml"
         }
         function onAdminsubmitClicked()
         {
             myLoader.source="qrc:/adminupdates.qml"
         }
         function onAdminbackClicked()
         {
             myLoader.source="qrc:/SecondPage.qml"
         }
         function onUserClicked()
         {
             myLoader.source="qrc:/userupdates.qml"
         }
         function onScrollClicked()
         {
             myLoader.source="qrc:/homepage.qml"
         }
         function onReceiptClicked()
         {
             myLoader.source="qrc:/RECEIPT.qml"
         }
         function onReceiptbackClicked()
         {
             myLoader.source="qrc:/adminupdates.qml"
         }
         function onStudentreceiptClicked()
         {
             myLoader.source="qrc:/studentReceipt.qml"
         }
         function onStudentreceiptbackClicked()
         {
             myLoader.source="qrc:/adminupdates.qml"
         }




    }

}
