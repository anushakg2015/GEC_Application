import QtQuick 2.0
import QtMultimedia 5.12

Item {
    Video {
         id: video
         width : 800
         height : 600
         source: "qrc:/Coming_Soon_birthday_video_banner_background_on_demand__sk_editz_zone(360p).mp4"

         MouseArea {
             anchors.fill: parent
             onClicked: {
                 video.play()
             }
         }

         focus: true
         Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
         Keys.onLeftPressed: video.seek(video.position - 5000)
         Keys.onRightPressed: video.seek(video.position + 5000)
     }

}
