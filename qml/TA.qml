import QtQuick 2.0

Item {
    id: root
    width: 70
    height: 100

    Rectangle {
        anchors.fill: parent
        color: "gray"

        Column {
            y: 20
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            Repeater {
                model: 3
                Rectangle {
                    width: root.width * 0.8; height: 3
                    color: "black"
                }
            }

        }
    }
}
