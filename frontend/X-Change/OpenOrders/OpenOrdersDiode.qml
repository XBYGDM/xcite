import QtQuick 2.7
import QtQuick.Layouts 1.3

import "../../Controls" as Controls

Controls.Diode {
    id: openOrders
    width: parent.width - 100
    height: parent.height - 500
    Layout.minimumHeight: 100
    radius: 5
    anchors.fill: parent
    Controls.DiodeHeader {
        text: "OPEN ORDERS"
        menuLabelText: "XBY"
    }
}
