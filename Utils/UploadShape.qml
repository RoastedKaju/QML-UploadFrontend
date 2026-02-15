import QtQuick
import QtQuick.Shapes

Shape {
    id: control

    ShapePath {
        strokeColor: Qt.darker("#9CCFFF", 1.2)
        strokeWidth: 2
        strokeStyle: ShapePath.DashLine
        dashPattern: [4, 2]

        fillColor: "#f3faff"

        PathRectangle {
            width: control.width
            height: control.height
            radius: 4
            strokeAdjustment: 2
        }

    }
}
