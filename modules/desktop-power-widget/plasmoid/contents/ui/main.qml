// Zenbook Duo Power: live power draw in the panel, breakdown in the popup.
// All numbers come from the org.zenbookduo.power plugin (sysfs, no helper processes).
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as QQC2
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
    function temp(t) { return t < 0 ? "–" : t.toFixed(0) + " °C" }

    readonly property double chipWatts: pm.raplAvailable ? pm.packageWatts + Math.max(0, pm.memoryWatts) : -1
    readonly property double headline: pm.onBattery ? pm.totalWatts : chipWatts
    readonly property string stateText: {
        if (pm.onBattery)
            return pm.batteryPercent + "% · " + (pm.minutesLeft >= 0 ? duration(pm.minutesLeft) + " left" : "on battery")
        if (pm.batteryStatus === "Charging")
            return pm.batteryPercent + "% · charging at " + watts(-pm.batteryWatts) + (pm.minutesLeft >= 0 ? " · full in " + duration(pm.minutesLeft) : "")
        return pm.batteryPercent + "% · plugged in"
    }
    // the four parts of the breakdown; "rest" exists only on battery
    readonly property var parts: [
        { name: "Processor cores", w: pm.coreWatts, color: "#3daee9" },
        { name: "Graphics & chip", w: pm.socWatts, color: "#a77ee6" },
        { name: "Memory", w: pm.memoryWatts, color: "#2ecc9a" },
        { name: "Screens, Wi-Fi, SSD & rest", w: pm.onBattery ? pm.restWatts : -1, color: "#8a94a0" }
    ]

    preferredRepresentation: compactRepresentation
    toolTipMainText: (pm.onBattery ? "Drawing " : "Processor + memory: ") + watts(headline)
    toolTipSubText: stateText

    compactRepresentation: MouseArea {
        Layout.minimumWidth: row.implicitWidth + Kirigami.Units.smallSpacing * 2
        Layout.preferredWidth: Layout.minimumWidth
        hoverEnabled: true
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
                text: root.watts(root.headline)
                font.features: { "tnum": 1 } // fixed-width digits: the panel does not jiggle
            }
        }
    }

    fullRepresentation: PlasmaExtras.Representation {
        Layout.minimumWidth: Kirigami.Units.gridUnit * 22
        Layout.maximumWidth: Kirigami.Units.gridUnit * 22
        Layout.minimumHeight: content.implicitHeight + Kirigami.Units.largeSpacing * 2
        Layout.maximumHeight: Layout.minimumHeight
        collapseMarginsHint: true

        ColumnLayout {
            id: content
            anchors.fill: parent
            anchors.margins: Kirigami.Units.largeSpacing
            spacing: Kirigami.Units.largeSpacing

            // ── headline ───────────────────────────────────────────────
            RowLayout {
                Layout.fillWidth: true
                spacing: Kirigami.Units.largeSpacing
                Kirigami.Icon {
                    Layout.preferredWidth: Kirigami.Units.iconSizes.large
                    Layout.preferredHeight: Kirigami.Units.iconSizes.large
                    source: pm.onBattery ? "battery-discharging" : "battery-ac-adapter"
                }
                ColumnLayout {
                    spacing: 0
                    Layout.fillWidth: true
                    PlasmaComponents.Label {
                        text: root.watts(root.headline)
                        font.pixelSize: Kirigami.Units.gridUnit * 2
                        font.weight: Font.DemiBold
                        font.features: { "tnum": 1 }
                    }
                    PlasmaComponents.Label {
                        text: pm.onBattery ? "whole laptop, measured at the battery" : "processor + memory (total needs battery power)"
                        opacity: 0.65
                        font: Kirigami.Theme.smallFont
                        Layout.fillWidth: true
                        elide: Text.ElideRight
                    }
                    PlasmaComponents.Label { text: root.stateText; Layout.fillWidth: true; elide: Text.ElideRight }
                }
            }

            // ── breakdown: one stacked bar + legend ─────────────────────
            ColumnLayout {
                Layout.fillWidth: true
                spacing: Kirigami.Units.smallSpacing
                visible: pm.raplAvailable

                Item {
                    id: bar
                    Layout.fillWidth: true
                    Layout.preferredHeight: Kirigami.Units.gridUnit * 0.6
                    readonly property double sum: root.parts.reduce((a, p) => a + Math.max(0, p.w), 0)
                    Rectangle { anchors.fill: parent; radius: height / 2; color: Kirigami.Theme.textColor; opacity: 0.08 }
                    Row {
                        anchors.fill: parent
                        Repeater {
                            model: root.parts
                            delegate: Rectangle {
                                required property var modelData
                                required property int index
                                height: bar.height
                                width: bar.sum > 0 ? bar.width * Math.max(0, modelData.w) / bar.sum : 0
                                color: modelData.color
                                radius: index === 0 || index === root.parts.length - 1 ? height / 2 : 0
                                Behavior on width { NumberAnimation { duration: Kirigami.Units.longDuration } }
                            }
                        }
                    }
                }
                GridLayout {
                    Layout.fillWidth: true
                    columns: 3
                    columnSpacing: Kirigami.Units.smallSpacing
                    rowSpacing: Math.round(Kirigami.Units.smallSpacing / 2)
                    Repeater {
                        model: root.parts
                        delegate: RowLayout {
                            required property var modelData
                            visible: modelData.w >= 0
                            Layout.columnSpan: 3
                            Layout.fillWidth: true
                            Rectangle {
                                Layout.preferredWidth: Kirigami.Units.smallSpacing * 2
                                Layout.preferredHeight: Layout.preferredWidth
                                radius: width / 2
                                color: modelData.color
                            }
                            PlasmaComponents.Label { text: modelData.name; Layout.fillWidth: true; elide: Text.ElideRight }
                            PlasmaComponents.Label {
                                text: bar.sum > 0 ? Math.round(100 * Math.max(0, modelData.w) / bar.sum) + "%" : ""
                                opacity: 0.6
                                font.features: { "tnum": 1 }
                            }
                            PlasmaComponents.Label {
                                text: root.watts(modelData.w)
                                horizontalAlignment: Text.AlignRight
                                Layout.preferredWidth: Kirigami.Units.gridUnit * 3
                                font.features: { "tnum": 1 }
                            }
                        }
                    }
                }
            }
            PlasmaComponents.Label {
                visible: !pm.raplAvailable
                text: "The breakdown needs read access to the processor's energy counters: sudo ./duo apply desktop-power-widget"
                Layout.fillWidth: true
                wrapMode: Text.Wrap
                opacity: 0.65
            }

            Kirigami.Separator { Layout.fillWidth: true }

            // ── sensors ────────────────────────────────────────────────
            GridLayout {
                Layout.fillWidth: true
                columns: 4
                columnSpacing: Kirigami.Units.largeSpacing
                rowSpacing: Kirigami.Units.smallSpacing
                Repeater {
                    model: [
                        { icon: "temperature-normal", name: "Processor", value: root.temp(pm.cpuTemp) },
                        { icon: "drive-harddisk-solidstate", name: "SSD", value: root.temp(pm.ssdTemp) },
                        { icon: "network-wireless", name: "Wi-Fi", value: root.temp(pm.wifiTemp) },
                        { icon: "fan", name: "Fans", value: pm.fanCpu < 0 ? "–" : (pm.fanCpu === 0 && pm.fanGpu === 0 ? "off" : pm.fanCpu + " · " + pm.fanGpu + " rpm") }
                    ]
                    delegate: RowLayout {
                        required property var modelData
                        Layout.columnSpan: 2
                        Layout.fillWidth: true
                        spacing: Kirigami.Units.smallSpacing
                        Kirigami.Icon {
                            Layout.preferredWidth: Kirigami.Units.iconSizes.small
                            Layout.preferredHeight: Kirigami.Units.iconSizes.small
                            source: modelData.icon
                            fallback: "temperature-normal"
                            opacity: 0.8
                        }
                        PlasmaComponents.Label { text: modelData.name; opacity: 0.7 }
                        PlasmaComponents.Label { text: modelData.value; Layout.fillWidth: true; horizontalAlignment: Text.AlignRight; font.features: { "tnum": 1 } }
                    }
                }
            }

            Kirigami.Separator { Layout.fillWidth: true }

            // ── power mode ─────────────────────────────────────────────
            RowLayout {
                Layout.fillWidth: true
                spacing: Kirigami.Units.smallSpacing
                QQC2.ButtonGroup { id: modes }
                Repeater {
                    model: [
                        { id: "power-saver", label: "Quiet", icon: "battery-profile-powersave" },
                        { id: "balanced", label: "Balanced", icon: "battery-profile-balanced" },
                        { id: "performance", label: "Performance", icon: "battery-profile-performance" }
                    ]
                    delegate: PlasmaComponents.ToolButton {
                        required property var modelData
                        Layout.fillWidth: true
                        Layout.preferredWidth: 1 // equal thirds
                        text: modelData.label
                        icon.name: modelData.icon
                        checkable: true
                        QQC2.ButtonGroup.group: modes
                        checked: pm.profile === modelData.id
                        onClicked: pm.setProfile(modelData.id)
                    }
                }
            }

            Kirigami.Separator { Layout.fillWidth: true }

            // ── battery ────────────────────────────────────────────────
            RowLayout {
                Layout.fillWidth: true
                PlasmaComponents.Label {
                    Layout.fillWidth: true
                    wrapMode: Text.Wrap
                    opacity: 0.8
                    text: "Battery health " + (pm.healthPercent < 0 ? "–" : pm.healthPercent + "%") +
                          " · " + pm.cycles + " cycles · " +
                          (pm.chargeLimit < 0 || pm.chargeLimit >= 100 ? "charges to 100%" : "stops at " + pm.chargeLimit + "%")
                }
                PlasmaComponents.ToolButton {
                    icon.name: "configure"
                    text: "Settings"
                    display: QQC2.AbstractButton.IconOnly
                    PlasmaComponents.ToolTip.text: "Power settings (charge limit, screen, sleep)"
                    PlasmaComponents.ToolTip.visible: hovered
                    onClicked: pm.openPowerSettings()
                }
            }
        }
    }
}
