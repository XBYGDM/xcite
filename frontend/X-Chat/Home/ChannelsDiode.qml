import QtQuick 2.7
import QtQuick.Layouts 1.3
import "../../Controls" as Controls
import "../../Theme" 1.0

Controls.Diode {
    id: channelsDiode
    color: cDiodeBackground
    radius: 5
    Layout.preferredHeight: 843
    Layout.preferredWidth: 257
    Layout.fillHeight: true
    Controls.DiodeHeader {
        id: channelHeader
        text: "CHANNELS"
        iconSource: "../../icons/menu-settings.svg"
        iconOnly: true
        iconSize: 20
    }

    ColumnLayout {
        anchors.top: channelHeader.bottom
        anchors.left: parent.left
        width: 257

        //signal channelSelected(int index)
        ListView {
            id: channelList
            //interactive: false
            model: groupModel
            anchors.left: parent.left
            clip: true
            height: 500
            width: parent.width
            signal updateAllChannels(int index)

            function updateChannels(index) {}

            delegate: ChannelGroup {
                anchors.left: parent.left
                groupText: model.groupName
                groupIndex: index
                iconSource: "../../icons/circle-cross.svg"
                items: model.channels
                iconSize: 19
                groupHeight: 47
                groupWidth: parent.width
                Component.onCompleted: {
                    channelSelected.connect(channelList.updateSelection)
                }
            }

            //Keeps all the groups and repeaters in sync so only one channel is selected
            function updateSelection(index) {
                for (var i = 0; i < groupModel.count; i++) {
                    for (var j = 0; j < groupModel.get(i).channels.count; j++) {

                        if (groupModel.get(i).channels.get(
                                    j).channelId !== index) {
                            groupModel.get(i).channels.set(j, {
                                                               selected: false
                                                           })
                        }
                    }
                }
            }
        }

        //Representation of all the channel groups and channels
        ListModel {
            id: groupModel

            ListElement {
                groupName: "MAIN"
                channels: [
                    ListElement {
                        channelId: 1
                        name: "announcements"
                        selected: false
                    },
                    ListElement {
                        channelId: 2
                        name: "price-spam"
                        selected: false
                    },
                    ListElement {
                        channelId: 3
                        name: "off-topic"
                        selected: false
                    },
                    ListElement {
                        channelId: 4
                        name: "general"
                        selected: false
                    },
                    ListElement {
                        channelId: 5
                        name: "community"
                        selected: false
                    }
                ]
            }
            ListElement {
                groupName: "TOPICS"
                channels: [
                    ListElement {
                        channelId: 6
                        name: "announcements"
                        selected: false
                    },
                    ListElement {
                        channelId: 7
                        name: "price-spam"
                        selected: false
                    },
                    ListElement {
                        channelId: 8
                        name: "off-topic"
                        selected: false
                    },
                    ListElement {
                        channelId: 9
                        name: "general"
                        selected: false
                    },
                    ListElement {
                        channelId: 10
                        name: "community"
                        selected: false
                    }
                ]
            }
        }
    }
}
