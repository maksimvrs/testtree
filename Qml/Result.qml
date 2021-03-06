import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Page {
    id: resultPage
    title: qsTr("Результат")

    property alias text: resultText.text

    RowLayout {
        anchors.fill: parent

        Label {
            id: resultText
            Layout.fillWidth: true
            clip: true
            wrapMode: Text.WordWrap
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
