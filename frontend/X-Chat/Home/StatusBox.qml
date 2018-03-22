import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import "../../Controls" as Controls

Item {
    Layout.preferredWidth: 259
    Layout.fillHeight: true

    Rectangle {
        height: parent.height
        width: parent.width
        //Layout.preferredWidth:
        id: status
        clip: true
        color: "transparent"
        ListView {
            id: channelList
            //interactive: false
            model: statusModel

            anchors.left: parent.left

            clip: true

            height: parent.height
            width: 200
            delegate: StatusGroup {
                anchors.left: parent.left
                groupText: model.groupName + " - " + model.channels.count
                items: model.channels
                groupHeight: 47
                groupWidth: parent.width
            }
        }
    }

    //Representation of all the channel groups and channels
    ListModel {
        id: statusModel

        ListElement {
            groupName: "ADMINISTRATORS"
            channels: [
                ListElement {
                    name: "Bojack"
                    status: "busy"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },

                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                }
            ]
        }
        ListElement {
            groupName: "MODERATORS"
            channels: [
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "unavailable"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },

                ListElement {
                    name: "Stuge"
                    status: "busy"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                }
            ]
        }

        ListElement {
            groupName: "ONLINE"
            channels: [
                ListElement {
                    name: "Bojack"
                    status: "busy"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "unavailable"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "busy"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "busy"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Bojack"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                },
                ListElement {
                    name: "Stuge"
                    status: "available"
                    selected: false
                    avatar: "../../icons/chat-avatar-1.png"
                }
            ]
        }
    }
}
