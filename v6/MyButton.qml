import QtQuick 2.0

Item {
  id: button

  property string text
  property string textColor
  property int fontSize: Math.round(blueRec.height / 3)

  property string backColor
  property string borderColor
  property int borderWidth
  property int radius

  Rectangle {
    id: blueRec

    width: parent.width
    height: parent.height

    // little better than dot notation
    border {
      color: button.borderColor
      width: button.borderWidth
    }

    color: button.backColor
    rotation: 3

    gradient: Gradient {
      GradientStop { position: 1; color: "black" }
      GradientStop { position: 0; color: "white" }
    }
    opacity: 0.7
    radius: button.radius

    Text {
      text: button.text
      anchors.centerIn: parent
      opacity: 0.8
      color: button.textColor
      font.pixelSize: button.fontSize 
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

}
