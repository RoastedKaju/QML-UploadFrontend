import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Rectangle {
    id: control

    width: parent.width
    height: parent.height

    border.width: 1
    border.color: "LightGrey"
    radius: 4

    required property string name
    required property real progress

    RowLayout {
        anchors.margins: 10
        anchors.fill: parent

        Label {
            text: control.name
            Layout.alignment: Qt.AlignVCenter
            color: Qt.darker("#9CCFFF", 1.2)
            font.pointSize: 12
            font.weight: Font.DemiBold
        }

        Item {
            Layout.fillWidth: true
        }

        Image {
            Layout.preferredHeight: 20
            Layout.preferredWidth: 20
            Layout.alignment: Qt.AlignVCenter
            source: "qrc:/Images/cancel.svg"
        }
    }

    Rectangle {
        color: Qt.darker("#9CCFFF", 1.2)
        height: 4
        width: control.width * progress
        anchors.bottom: parent.bottom
    }
}
