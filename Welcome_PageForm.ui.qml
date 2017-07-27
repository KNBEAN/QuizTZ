import QtQuick 2.4

Item {
    id: item1
    width: 400
    height: 400
    property alias text1: text1

    Image {
        id: image
        x: 220
        y: 198
        width: 100
        height: 100
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    Image {
        id: image1
        x: 220
        y: 698
        width: 540
        height: 540
        anchors.verticalCenterOffset: 108
        anchors.horizontalCenterOffset: 648
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        opacity: 1
        fillMode: Image.PreserveAspectCrop
        source: "images/Logo Bean tlo.png"
    }

    Text {
        id: text1
        text: qsTr("ROZPOCZNIJ QUIZ")
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 40

        Text {
            id: text2
            x: 211
            y: 63
            text: qsTr("Text")
            font.pixelSize: 12
        }

        Text {
            id: text3
            x: 87
            y: 118
            text: qsTr("Text")
            font.pixelSize: 12
        }
    }
}
