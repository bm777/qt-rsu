import QtQuick 2.0
import QtQuick.Window 2.1
import QtQuick.Controls 2.1

Window {
    width: 1200
    height: 800
    visible: true

    Item {
        id: root
        anchors.fill: parent


        property real main_bts_vlaue: bts.value

        Rectangle {
            anchors.fill: root
            color: "#fcedda"
        }


        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Route {
            id: route
            anchors.centerIn: parent
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Bts {
            id: bts
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        TA {
            id: ta
            x: 20
            y: 20
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Car {
            id: car
            y: parent.height / 2 - 120
            x: parent.width - 200
        }
        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Car {
            id: car2
            y: parent.height / 2 - 120
            x: parent.width - 200
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Circle {
            id: circle
            y: 50
            x: 340
        }




    }

    SequentialAnimation {
        running: true
        loops: Animation.Infinite


        SequentialAnimation {
            running: true
            NumberAnimation {
                target: car
                property: "x"
                from: 1000
                to: 850
                duration: 2000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: car
                property: "x"
                from: 850
                to: 700
                duration: 2000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: car
                property: "x"
                to: 0
                duration: 5000
                easing.type: Easing.InOutQuad
            }
        }
    }


}
