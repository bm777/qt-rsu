import QtQuick 2.0

Item {
    id: root
    height: 500
    width: 500

    Rectangle {
        id: rect
        height: 300
        width: 300
        radius: parent.height / 2
        color: "#60ee4e34"

        ParallelAnimation {
            running: true
            loops: Animation.Infinite


            NumberAnimation {
                target: rect
                property: "height"
                duration: 1000
                from: rect.height
                to: rect.height + 200
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: rect
                property: "width"
                duration: 1000
                from: rect.width
                to: rect.width + 200
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: rect
                property: "x"
                duration: 1000
                from: rect.x
                to: rect.x - rect.width / 4
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: rect
                property: "y"
                duration: 1000
                from: rect.y
                to: rect.y - rect.height / 4
                easing.type: Easing.InOutQuad
            }
        }
    }



}
