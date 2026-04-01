import QtQuick 2.15
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core as PlasmaCore

PlasmoidItem {
    width: 800
    height: 250

    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    Text {
        id: referenceText
        visible: false
        text: "WEDNESDAY"
        font.family: "Anurati"
        font.pixelSize: 96
        font.letterSpacing: 40
    }

    property real dayFontSize: {
        if (referenceText.contentWidth <= 0) return 96
        return Math.floor(width * 96 / referenceText.contentWidth)
    }

    property real scaledLetterSpacing: 40 * (dayFontSize / 96)

    FontLoader { source: "../fonts/Anurati-Regular.ttf" }
    FontLoader { source: "../fonts/Quicksand-VariableFont_wght.ttf" }

    Column {
        anchors.centerIn: parent
        spacing: 8

        Text {
            id: dateText
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.family: "Quicksand"
            font.pixelSize: Math.max(10, dayFontSize * 0.22)
            font.letterSpacing: 4
        }

        Text {
            id: dayText
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.family: "Anurati"
            font.pixelSize: dayFontSize
            font.letterSpacing: scaledLetterSpacing
        }

        Text {
            id: timeText
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.family: "Quicksand"
            font.pixelSize: Math.max(10, dayFontSize * 0.22)
            font.letterSpacing: 4
        }
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: updateTime()
    }

    function updateTime() {
        var now = new Date()
        var days = ["SUNDAY","MONDAY","TUESDAY","WEDNESDAY",
                    "THURSDAY","FRIDAY","SATURDAY"]
        var months = ["JANUARY","FEBRUARY","MARCH","APRIL","MAY","JUNE",
                      "JULY","AUGUST","SEPTEMBER","OCTOBER","NOVEMBER","DECEMBER"]
        dayText.text = days[now.getDay()]
        var d = String(now.getDate()).padStart(2, "0")
        dateText.text = d + " " + months[now.getMonth()] + ", " + now.getFullYear() + "."
        var h = String(now.getHours()).padStart(2, "0")
        var m = String(now.getMinutes()).padStart(2, "0")
        timeText.text = "- " + h + ":" + m + " -"
    }

    Component.onCompleted: updateTime()
}
