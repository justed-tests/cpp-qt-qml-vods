import QtQuick 2.0

Rectangle {
  id: rootTangle
  width: 360
  height: 360
  color: "black"

  MyButton {
    text: "Cusomize!"
    textColor: "white"

    backColor: "green"
    borderColor: "#eee"
    borderWidth: 2
    radius: 20

    width: parent.width / 2
    height: rootTangle.width / 6

    anchors.centerIn: parent
  }

  Rectangle {
    id: foo
  }
}
