import QtQuick 2.0

Rectangle {
  width: 360
  height: 360

  Text {
    anchors.centerIn: parent
    text: "Hellow World"
    opacity: 0.1
  }

  MouseArea {
    anchors.fill: parent
    onClicked: {
      Qt.quit()
    }
  }
}
