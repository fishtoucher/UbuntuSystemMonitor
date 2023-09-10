import QtQuick

Column{
    default property alias item: ld.sourceComponent
    id: root
    Rectangle{
    width: 200
    height: 50
    color: "red"
        Rectangle{
            width: parent.height
            height: parent.height
            anchors.left: parent.left
            color: "green"
            MouseArea{
                anchors.fill: parent
                onClicked: {content.show = !content.show }
            }
        }
    }

    Rectangle{
        id:content
        width: 100
        height: show ? ld.height : 0
        property bool show: false
        color: "green"
        clip: true
        Loader{
            id: ld
            y: content.height - height
            anchors.horizontalCenter: content.horizontalCenter
//            sourceComponent: root.item
        }
        Behavior on height{
            NumberAnimation{
                duration: 200;
                easing.type: Easing.InOutQuad
            }
        }
    }
}
