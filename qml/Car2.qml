import QtQuick 2.0

Item {
    id: root
    property bool token: root._car2
    width: 685 * 0.3
    height: 364 * 0.3

    Image {
        id: img
        source: "../img/car.png"
        width: 685 * 0.3
        height: 364 * 0.3
        rotation: 180
    }
    Image {
        id: token
        source: "../img/certif.svg"
        visible: root.token
        x: parent.width * 0.55
        anchors.verticalCenter: parent.verticalCenter

    }
    SequentialAnimation {
        running: root.token
        PropertyAnimation{
            target: token
            property: "visible"
            duration: 10
            to: false
            easing.type: Easing.InOutQuad
        }
        PropertyAnimation{
            target: token
            property: "visible"
            duration: 1000
            to: true
            easing.type: Easing.InOutQuad
        }

    }

}
