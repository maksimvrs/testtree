import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Dialog {
    id: inputDialog

    property alias text: text.text
    property bool isQuestion: typeInput.currentText === "Вопрос"

    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    parent: Overlay.overlay
    focus: true
    modal: true
    standardButtons: Dialog.Ok | Dialog.Cancel
    onClosed: {
        text.clear()
        typeInput.currentIndex = 0
    }

    ColumnLayout {
        spacing: 20
        anchors.fill: parent
        Label {
            elide: Label.ElideRight
            text: "Вариант ответа:"
            font.pixelSize: 22
            Layout.fillWidth: true
        }
        TextField {
            id: text
            focus: true
            placeholderText: "Введите свой вариант ответа"
            Layout.fillWidth: true
        }
        ComboBox {
            id: typeInput
            model: ["Вопрос", "Результат"]
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
