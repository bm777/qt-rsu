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
        Image {
            id: cert
            source: "../img/certif.svg"
            visible: true
            x: 40 //470
            y: 80
        }

        ParallelAnimation{
            running: true

            NumberAnimation {
                running: true
                target: cert
                property: "x"
                duration: 1000
                to: 410
                easing.type: Easing.InOutQuad
            }
            NumberAnimation {
                running: true
                target: cert
                property: "y"
                duration: 1000
                to: 200
                easing.type: Easing.InOutQuad
            }
        }

        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Car {
            id: car
            y: parent.height / 2 - 120
            x: parent.width - 200
            property bool _car1: (car.x >= 150 && car.x <= 650) ? true : false

        }
        // =+++++++++++++++++++++++++++++++++++++++++++++++++++
        Car2 {
            id: car2
            y: parent.height / 2 + 5
            property bool _car2: (car2.x >= 200 && car2.x <= 600) ? true : false
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
