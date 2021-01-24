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
        Car2 {
            id: car2
            y: parent.height / 2 + 5
            x: 0

        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Circle {
            id: circle
            y: 50
            x: 340
        }




    }

    SequentialAnimation {
        running: bts.value
        loops: Animation.Infinite


        SequentialAnimation {
            running: true
            NumberAnimation {
                target: car
                property: "x"
                from: 1200
                to: 850
                duration: 4000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: car
                property: "x"
                from: 850
                to: 700
                duration: 3000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: car
                property: "x"
                to: -200
                duration: 8000
                easing.type: Easing.InOutQuad
            }
        }
    }

    SequentialAnimation {
        running: bts.value
        loops: Animation.Infinite


        SequentialAnimation {
            running: true
            NumberAnimation {
                target: car2
                property: "x"
                from: -200 //1000
                to: 600 //850
                duration: 8000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: car2
                property: "x"
                from: 600//850
                to: 850//700
                duration: 3000
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                target: car2
                property: "x"
                to: 1200
                duration: 4000
                easing.type: Easing.InOutQuad
            }
        }
    }


}
