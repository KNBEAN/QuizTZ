import QtQuick 2.4

Item {
    width: 400
    height: 400

    Text {
        id: text1
        x: 82
        y: 125
        width: 147
        height: 98
        text: qsTr("Text")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }
}
