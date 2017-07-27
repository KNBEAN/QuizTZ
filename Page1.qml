import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Page1Form {
    id: root
    width: 640
    height: 480

    Image {
        id: image1
        x: 159
        y: 148
        width: 343
        height: 245
        clip: true
        fillMode: Image.PreserveAspectCrop
        source: "images/Tzlogo.png"
    }
}

