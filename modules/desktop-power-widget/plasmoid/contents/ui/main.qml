// Zenbook Duo Power: live power draw in the panel, breakdown in the popup.
// All numbers come from the org.zenbookduo.power plugin (sysfs, no helper processes).
import QtQuick
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.extras as PlasmaExtras
import org.kde.plasma.plasmoid
import org.zenbookduo.power

PlasmoidItem {
    id: root

    PowerMonitor {
        id: pm
        // slow in the panel, faster while the popup is open
        interval: root.expanded ? 1000 : 2000
    }

    function watts(w) { return w < 0 ? "–" : (w < 10 ? w.toFixed(1) : w.toFixed(0)) + " W" }
    function duration(min) {
        if (min < 0) return ""
        const h = Math.floor(min / 60), m = min % 60
        return h > 0 ? h + " h " + m + " min" : m + " min"
    }
    readonly property double socWatts: pm.raplAvailable ? pm.packageWatts + Math.max(0, pm.memoryWatts) : -1
    readonly property string panelText: pm.onBattery ? watts(pm.totalWatts) : watts(socWatts)
    readonly property string stateText: {
        if (pm.onBattery)
            return "On battery · " + pm.batteryPercent + "%" + (pm.minutesLeft >= 0 ? " · " + duration(pm.minutesLeft) + " left" : "")
        if (pm.batteryStatus === "Charging")
            return "Plugged in · charging " + watts(-pm.batteryWatts) + (pm.minutesLeft >= 0 ? " · full in " + duration(pm.minutesLeft) : "")
        return "Plugged in · " + pm.batteryPercent + "%"
    }

    preferredRepresentation: compactRepresentation
    toolTipMainText: pm.onBattery ? "Laptop draws " + panelText : "Processor + memory: " + panelText
    toolTipSubText: stateText

    compactRepresentation: MouseArea {
        Layout.minimumWidth: row.implicitWidth + Kirigami.Units.smallSpacing * 2
        Layout.preferredWidth: Layout.minimumWidth
        onClicked: root.expanded = !root.expanded
        RowLayout {
            id: row
            anchors.centerIn: parent
            spacing: Kirigami.Units.smallSpacing
            Kirigami.Icon {
                Layout.preferredWidth: Kirigami.Units.iconSizes.small
                Layout.preferredHeight: Kirigami.Units.iconSizes.small
                source: pm.onBattery ? "battery-discharging" : "battery-ac-adapter"
            }
            PlasmaComponents.Label {
                text: root.panelText
                font.features: { "tnum": 1 } // fixed-width digits: the panel does not jiggle
            }
        }
    }

    fullRepresentation: PlasmaExtras.Representation {
        Layout.minimumWidth: Kirigami.Units.gridUnit * 20
        Layout.minimumHeight: content.implicitHeight + Kirigami.Units.largeSpacing * 2
        collapseMarginsHint: true

        ColumnLayout {
            id: content
            anchors.fill: parent
            anchors.margins: Kirigami.Units.largeSpacing
            spacing: Kirigami.Units.smallSpacing

            // headline
            Kirigami.Heading {
                level: 1
                text: pm.onBattery ? root.watts(pm.totalWatts) : root.watts(root.socWatts)
                font.features: { "tnum": 1 }
            }
            PlasmaComponents.Label {
                text: pm.onBattery ? "the whole laptop, measured at the battery" : "processor + memory (total is only measurable on battery)"
                opacity: 0.7
                Layout.fillWidth: true
                wrapMode: Text.Wrap
            }
            PlasmaComponents.Label { text: root.stateText; Layout.fillWidth: true; wrapMode: Text.Wrap }

            // breakdown
            Kirigami.Heading { level: 4; text: "Where it goes"; Layout.topMargin: Kirigami.Units.largeSpacing }
            Repeater {
                model: [
                    { name: "Processor cores", w: pm.coreWatts, show: pm.raplAvailable },
                    { name: "Graphics & rest of the chip", w: pm.socWatts, show: pm.raplAvailable },
                    { name: "Memory", w: pm.memoryWatts, show: pm.raplAvailable },
                    { name: "Screens, Wi-Fi, SSD, keyboard & losses", w: pm.restWatts, show: pm.onBattery && pm.raplAvailable }
                ]
                delegate: ColumnLayout {
                    required property var modelData
                    visible: modelData.show
                    Layout.fillWidth: true
                    spacing: 0
                    RowLayout {
                        Layout.fillWidth: true
                        PlasmaComponents.Label { text: modelData.name; Layout.fillWidth: true; elide: Text.ElideRight }
                        PlasmaComponents.Label { text: root.watts(modelData.w); font.features: { "tnum": 1 } }
                    }
                    PlasmaComponents.ProgressBar {
                        Layout.fillWidth: true
                        from: 0
                        to: Math.max(1, pm.onBattery ? pm.totalWatts : root.socWatts)
                        value: Math.max(0, modelData.w)
                    }
                }
            }
            PlasmaComponents.Label {
                visible: !pm.raplAvailable
                text: "The breakdown needs read access to the processor's energy counters: sudo ./duo apply desktop-power-widget, then log in again."
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                opacity: 0.7
            }

            // temperatures and fans
            Kirigami.Heading { level: 4; text: "Temperatures & fans"; Layout.topMargin: Kirigami.Units.largeSpacing }
            GridLayout {
                columns: 2
                Layout.fillWidth: true
                PlasmaComponents.Label { text: "Processor"; Layout.fillWidth: true }
                PlasmaComponents.Label { text: pm.cpuTemp < 0 ? "–" : pm.cpuTemp.toFixed(0) + " °C" }
                PlasmaComponents.Label { text: "SSD"; Layout.fillWidth: true }
                PlasmaComponents.Label { text: pm.ssdTemp < 0 ? "–" : pm.ssdTemp.toFixed(0) + " °C" }
                PlasmaComponents.Label { text: "Wi-Fi"; Layout.fillWidth: true }
                PlasmaComponents.Label { text: pm.wifiTemp < 0 ? "–" : pm.wifiTemp.toFixed(0) + " °C" }
                PlasmaComponents.Label { text: "Fans"; Layout.fillWidth: true }
                PlasmaComponents.Label {
                    text: pm.fanCpu < 0 ? "–" : (pm.fanCpu === 0 && pm.fanGpu === 0 ? "off" : pm.fanCpu + " / " + pm.fanGpu + " rpm")
                }
            }

            // power profile
            Kirigami.Heading { level: 4; text: "Power mode"; Layout.topMargin: Kirigami.Units.largeSpacing }
            RowLayout {
                Layout.fillWidth: true
                Repeater {
                    model: [
                        { id: "power-saver", label: "Quiet", icon: "battery-profile-powersave" },
                        { id: "balanced", label: "Balanced", icon: "battery-profile-balanced" },
                        { id: "performance", label: "Performance", icon: "battery-profile-performance" }
                    ]
                    delegate: PlasmaComponents.ToolButton {
                        required property var modelData
                        Layout.fillWidth: true
                        text: modelData.label
                        icon.name: modelData.icon
                        checkable: true
                        checked: pm.profile === modelData.id
                        onClicked: pm.setProfile(modelData.id)
                    }
                }
            }

            // battery
            Kirigami.Heading { level: 4; text: "Battery"; Layout.topMargin: Kirigami.Units.largeSpacing }
            GridLayout {
                columns: 2
                Layout.fillWidth: true
                PlasmaComponents.Label { text: "Health"; Layout.fillWidth: true }
                PlasmaComponents.Label { text: pm.healthPercent < 0 ? "–" : pm.healthPercent + "% · " + pm.cycles + " cycles" }
                PlasmaComponents.Label { text: "Charge limit"; Layout.fillWidth: true }
                PlasmaComponents.Label { text: pm.chargeLimit < 0 || pm.chargeLimit >= 100 ? "none (charges to 100%)" : pm.chargeLimit + "%" }
            }
            PlasmaComponents.Button {
                text: "Power settings…"
                icon.name: "configure"
                onClicked: pm.openPowerSettings()
            }
        }
    }
}
