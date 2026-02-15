import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

import "Utils"

Window {
    width: 600
    height: 700
    visible: true
    title: qsTr("File Upload Form")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 10

        Label {
            text: qsTr("Upload")
            font.weight: Font.DemiBold
            font.pointSize: 18
            color: "Black"

            Layout.alignment: Qt.AlignHCenter
        }

        UploadShape {
            Layout.fillWidth: true
            Layout.preferredHeight: 250

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 20

                Image {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    Layout.preferredWidth: 125
                    Layout.preferredHeight: 120
                    Layout.bottomMargin: 10
                    source: "qrc:/Images/upload.svg"
                }

                Label {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    text: "Drag & Drop files or <font color='#9CCFFF'><u><b>Browse</b></u></font>"
                    textFormat: "RichText"
                    color: "Black"
                    font.weight: Font.DemiBold
                    font.pointSize: 16
                }

                Label {
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    text: "Supported formats: JPEG, PNG, GIF, MP4, PDF, PSD, AI, Word, PPT"
                    color: "grey"
                    font.weight: Font.DemiBold
                    font.pointSize: 11
                }

                Item {
                    Layout.fillHeight: true
                }
            }
        }

        Label {
            text: qsTr("Uploading - %1/%1 Files").arg(listView.count)
            font.pointSize: 15
            font.weight: Font.DemiBold
            color: "Grey"
            Layout.alignment: Qt.AlignLeft
            Layout.topMargin: 10
        }

        ListModel {
            id: listModel

            ListElement {
                name: qsTr("Applied Physics.pdf")
                progress: 0.5
            }
            ListElement {
                name: qsTr("Gameplay Ability System.pdf")
                progress: 0.7
            }
            ListElement {
                name: qsTr("Game Engines.pdf")
                progress: 0.1
            }
        }

        ListView {
            id: listView
            Layout.fillWidth: true
            Layout.preferredHeight: 200
            spacing: 10
            clip: true // Clip whatever is outside of list view
            model: listModel
            delegate: listDelegate
        }

        Component {
            id: listDelegate

            CustomListItem {
                height: 50
            }
        }

        Item {
            Layout.fillHeight: true
        }

        Button {
            id: uploadButton
            Layout.fillWidth: true

            contentItem: Text {
                padding: 3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: qsTr("Upload File")
                font.capitalization: Font.AllUppercase
                font.pointSize: 18
                font.weight: Font.DemiBold
                color: "White"
            }

            background: Rectangle {
                radius: 4
                color: uploadButton.hovered ? Qt.darker("#9CCFFF", 1.2): "#9CCFFF"
            }
        }
    }
}
