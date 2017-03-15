import QtQuick 2.0

Rectangle {
  id: root
  width: 600
  height: 500

  Image {
    id: qtLogo
    source: "https://qt-web-uploads.s3.amazonaws.com/wp-content/uploads/2016/05/TheQtCompany_logo_1200x630.png"

    width: 600
    height: 360

    anchors {
      top: root.top
    }
     
    sourceSize {
      width: root.width
      height: root.height
    }

    onProgressChanged: {
      if (progress < 1) {
        imageLabel.text = "Loading"
      } else {
        imageLabel.text = "Done"
      }
    }
  }

  Text {
    id: imageLabel
    text: ""
    anchors {
      top: qtLogo.bottom
    }
  }
}
