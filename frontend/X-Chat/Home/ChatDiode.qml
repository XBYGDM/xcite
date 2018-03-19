import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

import "../../Controls" as Controls
import "../../Theme" 1.0

Controls.Diode {
    id: generalDiode
    Layout.minimumHeight: 863
    Layout.minimumWidth: 1046
    Layout.fillHeight: true
    Layout.fillWidth: true
    Controls.DiodeHeader {
        id: chatDiodeHeader
        text: "CHAT"
        iconSource: "../icons/menu-settings.svg"
        iconOnly: true
        iconSize: 20
    }


    /*Controls.DiodeVerticalScrollBar {
        id: verticalScrollBar
    }*/
    ColumnLayout {
        spacing: 0
        anchors.top: chatDiodeHeader.bottom
        anchors.topMargin: diodeHeaderHeight
        anchors.fill: parent

        RowLayout {
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            ConversationBox {

                id: chat
                // color: "green"
                Layout.fillWidth: true
                Layout.fillHeight: true
                z: 10
                //Layout.preferredHeight: 720
            }
            Rectangle {
                Layout.preferredWidth: 1
                Layout.preferredHeight: 704
                anchors.bottom: parent.bottom
                color: "#4F5152"
            }

            StatusBox {
                id: status
            }
        }

        //Chatbox
        ChatBox {
            id: chatBoxId
        }

        Component.onCompleted: {
            //hey so what we need to do here is connect this chatenter presed to the conversation chat enter pressed
            chatBoxId.chatEnterPressed.connect(chat.contentEntered)
        }
    }
} //Row Layout//Image//Rectangle -> chat box//Image
