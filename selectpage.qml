import QtQuick.Dialogs 1.0
import QtQuick 2.2



FileDialog {
    id: fileDialog
    title: "Please choose a file"

    onAccepted: {
        console.log("You chose: " + fileDialog.fileUrls)
        Qt.quit()
        console.log("the path"+fileDialog.folder)
    }
    onRejected: {
        console.log("Canceled")
        Qt.quit()
    }
    Component.onCompleted:{
        visible = true
    }
}

