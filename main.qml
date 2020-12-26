import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: rectLoader
        anchors.fill: parent
        visible: false
        active: visible
        sourceComponent: rectComponent


    }
    MouseArea {
        anchors.fill: parent
        onClicked: rectLoader.visible = !rectLoader.visible
    }

    Component {
        id: rectComponent
        Rectangle {
            color: "red"
            border.color: "black"
            border.width: 5
        }
    }

    Loader {
        id: editLoader
        source: "LineEdit.qml"
    }
    Binding {
        target: editLoader.item
        property: "text"
        value: "Bindind text property from Binding"
    }
}
