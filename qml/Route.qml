import QtQuick 2.0

Item {
    id: root
    width: parent.width
    height: parent.height * 0.3

    Rectangle {
        anchors.fill: parent
        color: "gray"
    }

    Row {
        anchors.verticalCenter: root.verticalCenter
        spacing: root.width * 0.08
        Repeater {
            model: 6

            Rectangle {
                width: root.width * 0.1
                height: 10
            }
        }
    }
    Column {
        spacing: 20
        x: root.width * 0.65
        anchors.verticalCenter: parent.verticalCenter

        Repeater {
            model: 6
            Rectangle {
                width: root.width * 0.05
                height: root.height * 0.1
            }
        }
    }
}
