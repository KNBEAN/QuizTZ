import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias columnLayout: columnLayout
    ColumnLayout {
        id: columnLayout
        x: 0
        y: 0
        width: 540
        height: 459
    }

    Image {
        id: image
        x: 0
        y: 628
    }

    Image {
        id: image1
        x: 159
        y: 148
        width: 343
        height: 245
        clip: true
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/qtquickplugin/images/template_image.png"
    }
}
