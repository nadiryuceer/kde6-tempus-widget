import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0
import org.kde.kirigami 2.4 as Kirigami
import org.kde.kquickcontrols 2.0 as KQControls

Kirigami.FormLayout {
    id: page

    property alias cfg_textColor: colorButton.color

    KQControls.ColorButton {
        id: colorButton
        Kirigami.FormData.label: "Text color:"
        showAlphaChannel: false
    }
}