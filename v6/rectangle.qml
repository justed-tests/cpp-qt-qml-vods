import QtQuick 2.0

Rectangle {
  id: rootTangle
  width: 360
  height: 360
  color: "black"

  Rectangle {
    id: blueRec

    width: rootTangle.width / 2
    height: rootTangle.width / 6

    // little better than dot notation
    border {
      color: "#222"
      width: 1
    }

    anchors.centerIn: rootTangle
    color: "white"
    rotation: 3

    gradient: Gradient {
      GradientStop { position: 1; color: "black" }
      GradientStop { position: 0; color: "white" }
    }
    opacity: 0.7
    radius: 20

    Text {
      text: "hello darkness"
      anchors.centerIn: parent
      opacity: 0.8
      color: "white"
      font.pixelSize: Math.round(blueRec.height / 3)
      font.bold: true
    }

    MouseArea {
      id: blueRecMouseArea

      hoverEnabled: true

      onEntered: {
        blueRec.rotation = -3
      }

      onExited: {
        blueRec.rotation = 3
      }

      anchors.fill: blueRec
      onClicked: {
        console.warn("hello")
        //Qt.quit()
      }
    }
  }

  //MouseArea {
    //anchors.fill: parent
    //onClicked: {
      //console.log('lalal')
    //}
  //}

  Rectangle {
    id: foo
  }

}
