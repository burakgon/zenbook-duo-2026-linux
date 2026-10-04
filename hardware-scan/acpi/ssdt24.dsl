/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt24.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000C219 (49689)
 *     Revision         0x02
 *     Checksum         0x5A
 *     OEM ID           "INTEL "
 *     OEM Table ID     "Cnv_Ssdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "Cnv_Ssdt", 0x00001000)
{
    External (_SB_.BTRK, MethodObj)    // 1 Arguments
    External (_SB_.PC00.BTPC, DeviceObj)
    External (_SB_.PC00.BTPC._DSM.BRMT, IntObj)
    External (_SB_.PC00.BTPC._DSM.BTDL, IntObj)
    External (_SB_.PC00.BTPC._DSM.CBTI, IntObj)
    External (_SB_.PC00.BTPC._DSM.RDLY, IntObj)
    External (_SB_.PC00.BTPC.CBOI, IntObj)
    External (_SB_.PC00.BTPC.CBTA, IntObj)
    External (_SB_.PC00.BTPC.CRFP, IntObj)
    External (_SB_.PC00.BTPC.HDBO, IntObj)
    External (_SB_.PC00.BTPC.PRRS, IntObj)
    External (_SB_.PC00.BTPC.RSTT, IntObj)
    External (_SB_.PC00.CNVW, DeviceObj)
    External (_SB_.PC00.CNVW.IFUN.BOFC, IntObj)
    External (_SB_.PC00.CNVW.IFUN.CVPR, IntObj)
    External (_SB_.PC00.CNVW.IFUN.DPRS, IntObj)
    External (_SB_.PC00.CNVW.IFUN.FLRC, IntObj)
    External (_SB_.PC00.CNVW.IFUN.RSTY, IntObj)
    External (_SB_.PC00.CNVW.IFUN.WFDL, IntObj)
    External (_SB_.PC00.CNVW.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.CNVW.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.CNVW.PRRS, IntObj)
    External (_SB_.PC00.CNVW.RSTT, IntObj)
    External (_SB_.PC00.RP01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PBNU, IntObj)
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.RP01.PXSX._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PXSX.BRMT, IntObj)
    External (_SB_.PC00.RP01.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.FDEL, IntObj)
    External (_SB_.PC00.RP01.PXSX.FLDR, OpRegionObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.BOFC, IntObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.CVPR, IntObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.DPRS, IntObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.FLRC, IntObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.RSTY, IntObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.WFDL, IntObj)
    External (_SB_.PC00.RP01.PXSX.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PXSX.L1C1, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.L1C2, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.MSNL, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.RP01.PXSX.PBRR, OpRegionObj)
    External (_SB_.PC00.RP01.PXSX.PDEL, IntObj)
    External (_SB_.PC00.RP01.PXSX.PTMR, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.RDLY, IntObj)
    External (_SB_.PC00.RP01.PXSX.RPXX, OpRegionObj)
    External (_SB_.PC00.RP01.PXSX.VDEL, IntObj)
    External (_SB_.PC00.RP01.PXSX.VSEC, OpRegionObj)
    External (_SB_.PC00.RP01.PXSX.WDCO, IntObj)
    External (_SB_.PC00.RP01.SLOT, IntObj)
    External (_SB_.PC00.RP02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PBNU, IntObj)
    External (_SB_.PC00.RP02.PXSX, DeviceObj)
    External (_SB_.PC00.RP02.PXSX._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PXSX.BRMT, IntObj)
    External (_SB_.PC00.RP02.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.FDEL, IntObj)
    External (_SB_.PC00.RP02.PXSX.FLDR, OpRegionObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.BOFC, IntObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.CVPR, IntObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.DPRS, IntObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.FLRC, IntObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.RSTY, IntObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.WFDL, IntObj)
    External (_SB_.PC00.RP02.PXSX.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PXSX.L1C1, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.L1C2, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.MSNL, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.RP02.PXSX.PBRR, OpRegionObj)
    External (_SB_.PC00.RP02.PXSX.PDEL, IntObj)
    External (_SB_.PC00.RP02.PXSX.PTMR, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.RDLY, IntObj)
    External (_SB_.PC00.RP02.PXSX.RPXX, OpRegionObj)
    External (_SB_.PC00.RP02.PXSX.VDEL, IntObj)
    External (_SB_.PC00.RP02.PXSX.VSEC, OpRegionObj)
    External (_SB_.PC00.RP02.PXSX.WDCO, IntObj)
    External (_SB_.PC00.RP02.SLOT, IntObj)
    External (_SB_.PC00.RP03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PBNU, IntObj)
    External (_SB_.PC00.RP03.PXSX, DeviceObj)
    External (_SB_.PC00.RP03.PXSX._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PXSX.BRMT, IntObj)
    External (_SB_.PC00.RP03.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.FDEL, IntObj)
    External (_SB_.PC00.RP03.PXSX.FLDR, OpRegionObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.BOFC, IntObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.CVPR, IntObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.DPRS, IntObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.FLRC, IntObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.RSTY, IntObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.WFDL, IntObj)
    External (_SB_.PC00.RP03.PXSX.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PXSX.L1C1, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.L1C2, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.MSNL, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.RP03.PXSX.PBRR, OpRegionObj)
    External (_SB_.PC00.RP03.PXSX.PDEL, IntObj)
    External (_SB_.PC00.RP03.PXSX.PTMR, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.RDLY, IntObj)
    External (_SB_.PC00.RP03.PXSX.RPXX, OpRegionObj)
    External (_SB_.PC00.RP03.PXSX.VDEL, IntObj)
    External (_SB_.PC00.RP03.PXSX.VSEC, OpRegionObj)
    External (_SB_.PC00.RP03.PXSX.WDCO, IntObj)
    External (_SB_.PC00.RP03.SLOT, IntObj)
    External (_SB_.PC00.RP04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PBNU, IntObj)
    External (_SB_.PC00.RP04.PXSX, DeviceObj)
    External (_SB_.PC00.RP04.PXSX._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PXSX.BRMT, IntObj)
    External (_SB_.PC00.RP04.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.FDEL, IntObj)
    External (_SB_.PC00.RP04.PXSX.FLDR, OpRegionObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.BOFC, IntObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.CVPR, IntObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.DPRS, IntObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.FLRC, IntObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.RSTY, IntObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.WFDL, IntObj)
    External (_SB_.PC00.RP04.PXSX.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PXSX.L1C1, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.L1C2, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.MSNL, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.RP04.PXSX.PBRR, OpRegionObj)
    External (_SB_.PC00.RP04.PXSX.PDEL, IntObj)
    External (_SB_.PC00.RP04.PXSX.PTMR, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.RDLY, IntObj)
    External (_SB_.PC00.RP04.PXSX.RPXX, OpRegionObj)
    External (_SB_.PC00.RP04.PXSX.VDEL, IntObj)
    External (_SB_.PC00.RP04.PXSX.VSEC, OpRegionObj)
    External (_SB_.PC00.RP04.PXSX.WDCO, IntObj)
    External (_SB_.PC00.RP04.SLOT, IntObj)
    External (_SB_.PC00.RP05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PBNU, IntObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.PXSX._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.BRMT, IntObj)
    External (_SB_.PC00.RP05.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.FDEL, IntObj)
    External (_SB_.PC00.RP05.PXSX.FLDR, OpRegionObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.BOFC, IntObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.CVPR, IntObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.DPRS, IntObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.FLRC, IntObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.RSTY, IntObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.WFDL, IntObj)
    External (_SB_.PC00.RP05.PXSX.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.L1C1, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.L1C2, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.MSNL, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.RP05.PXSX.PBRR, OpRegionObj)
    External (_SB_.PC00.RP05.PXSX.PDEL, IntObj)
    External (_SB_.PC00.RP05.PXSX.PTMR, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.RDLY, IntObj)
    External (_SB_.PC00.RP05.PXSX.RPXX, OpRegionObj)
    External (_SB_.PC00.RP05.PXSX.VDEL, IntObj)
    External (_SB_.PC00.RP05.PXSX.VSEC, OpRegionObj)
    External (_SB_.PC00.RP05.PXSX.WDCO, IntObj)
    External (_SB_.PC00.RP05.SLOT, IntObj)
    External (_SB_.PC00.RP06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PBNU, IntObj)
    External (_SB_.PC00.RP06.PXSX, DeviceObj)
    External (_SB_.PC00.RP06.PXSX._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PXSX.BRMT, IntObj)
    External (_SB_.PC00.RP06.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.FDEL, IntObj)
    External (_SB_.PC00.RP06.PXSX.FLDR, OpRegionObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.BOFC, IntObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.CVPR, IntObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.DPRS, IntObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.FLRC, IntObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.RSTY, IntObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.WFDL, IntObj)
    External (_SB_.PC00.RP06.PXSX.IFUN.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PXSX.L1C1, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.L1C2, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.MSNL, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.OFUN.CRFI, UnknownObj)
    External (_SB_.PC00.RP06.PXSX.PBRR, OpRegionObj)
    External (_SB_.PC00.RP06.PXSX.PDEL, IntObj)
    External (_SB_.PC00.RP06.PXSX.PTMR, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.RDLY, IntObj)
    External (_SB_.PC00.RP06.PXSX.RPXX, OpRegionObj)
    External (_SB_.PC00.RP06.PXSX.VDEL, IntObj)
    External (_SB_.PC00.RP06.PXSX.VSEC, OpRegionObj)
    External (_SB_.PC00.RP06.PXSX.WDCO, IntObj)
    External (_SB_.PC00.RP06.SLOT, IntObj)
    External (_SB_.PC00.RP07.PXSX, DeviceObj)
    External (_SB_.PC00.RP07.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP07.SLOT, IntObj)
    External (_SB_.PC00.RP08.PXSX, DeviceObj)
    External (_SB_.PC00.RP08.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP08.SLOT, IntObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP09.SLOT, IntObj)
    External (_SB_.PC00.RP10.PXSX, DeviceObj)
    External (_SB_.PC00.RP10.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP10.SLOT, IntObj)
    External (_SB_.PC00.RP11.PXSX, DeviceObj)
    External (_SB_.PC00.RP11.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP11.SLOT, IntObj)
    External (_SB_.PC00.RP12.PXSX, DeviceObj)
    External (_SB_.PC00.RP12.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP12.SLOT, IntObj)
    External (_SB_.PC00.RP13.PXSX, DeviceObj)
    External (_SB_.PC00.RP13.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP13.SLOT, IntObj)
    External (_SB_.PC00.RP14.PXSX, DeviceObj)
    External (_SB_.PC00.RP14.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP14.SLOT, IntObj)
    External (_SB_.PC00.RP15.PXSX, DeviceObj)
    External (_SB_.PC00.RP15.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP15.SLOT, IntObj)
    External (_SB_.PC00.RP16.PXSX, DeviceObj)
    External (_SB_.PC00.RP16.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP16.SLOT, IntObj)
    External (_SB_.PC00.RP17.PXSX, DeviceObj)
    External (_SB_.PC00.RP17.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP17.SLOT, IntObj)
    External (_SB_.PC00.RP18.PXSX, DeviceObj)
    External (_SB_.PC00.RP18.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP18.SLOT, IntObj)
    External (_SB_.PC00.RP19.PXSX, DeviceObj)
    External (_SB_.PC00.RP19.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP19.SLOT, IntObj)
    External (_SB_.PC00.RP20.PXSX, DeviceObj)
    External (_SB_.PC00.RP20.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP20.SLOT, IntObj)
    External (_SB_.PC00.RP21.PXSX, DeviceObj)
    External (_SB_.PC00.RP21.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP21.SLOT, IntObj)
    External (_SB_.PC00.RP22.PXSX, DeviceObj)
    External (_SB_.PC00.RP22.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP22.SLOT, IntObj)
    External (_SB_.PC00.RP23.PXSX, DeviceObj)
    External (_SB_.PC00.RP23.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP23.SLOT, IntObj)
    External (_SB_.PC00.RP24.PXSX, DeviceObj)
    External (_SB_.PC00.RP24.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP24.SLOT, IntObj)
    External (_SB_.PC00.RP25.PXSX, DeviceObj)
    External (_SB_.PC00.RP25.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP25.SLOT, IntObj)
    External (_SB_.PC00.RP26.PXSX, DeviceObj)
    External (_SB_.PC00.RP26.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP26.SLOT, IntObj)
    External (_SB_.PC00.RP27.PXSX, DeviceObj)
    External (_SB_.PC00.RP27.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP27.SLOT, IntObj)
    External (_SB_.PC00.RP28.PXSX, DeviceObj)
    External (_SB_.PC00.RP28.PXSX.BTIE, FieldUnitObj)
    External (_SB_.PC00.RP28.SLOT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS01.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS02.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS03._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS03.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS04._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS04.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS05._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS05.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS06._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS06.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS07._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS07.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS08._DSM.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08._DSM.BTDL, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08._DSM.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08._DSM.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.BRMT, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.CBOI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.CBTA, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.CBTC, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.CBTI, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.CRFP, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.HDBO, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS08.RDLY, IntObj)
    External (_SB_.PC00.XHCI.RHUB.HS09, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS11, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS12, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS13, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS14, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS15, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS16, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (BRMT, IntObj)
    External (CBTC, IntObj)
    External (CBTI, IntObj)
    External (CNMT, MutexObj)
    External (CRFP, IntObj)
    External (CWFC, IntObj)
    External (DPRS, IntObj)
    External (GMIO, MethodObj)    // 3 Arguments
    External (RDLY, IntObj)
    External (RSTY, IntObj)
    External (SLOT, IntObj)

    OperationRegion (CNNV, SystemMemory, 0x5CA97000, 0x0041)
    Field (CNNV, AnyAcc, Lock, Preserve)
    {
        BTSE,   8, 
        BTBR,   8, 
        BED2,   8, 
        BED3,   8, 
        BTLE,   8, 
        BTL2,   8, 
        BTLL,   8, 
        WLWK,   32, 
        WLRP,   8, 
        DUBP,   8, 
        IUBP,   8, 
        GBTK,   32, 
        GBTI,   32, 
        SVDC,   8, 
        CDRM,   8, 
        WLRT,   32, 
        WDCO,   64, 
        WVHO,   64, 
        DWRK,   32, 
        CGLS,   8, 
        DR01,   32, 
        DR02,   32, 
        DR03,   32, 
        DR04,   32
    }

    If ((CondRefOf (CRFP) && (CRFP == One)))
    {
        If ((CondRefOf (CWFC) && (CWFC == One)))
        {
            If (CondRefOf (\_SB.PC00.CNVW))
            {
                Scope (\_SB.PC00.CNVW)
                {
                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.CNVW.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.CNVW.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.CNVW.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.CNVW.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.CNVW.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.CNVW.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.CNVW.GLAX */
                    }
                }
            }
        }

        If ((CondRefOf (CBTC) && CondRefOf (CBTI)))
        {
            If ((CBTC == One))
            {
                If ((CBTI == 0x02))
                {
                    If (CondRefOf (\_SB.PC00.BTPC))
                    {
                        Scope (\_SB.PC00.BTPC)
                        {
                            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                            {
                                If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        If ((Arg1 == Zero))
                                        {
                                            Name (BDSF, Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                            BDSF [Zero] = 0xFF
                                            Return (BDSF) /* \_SB_.PC00.BTPC._DSM.BDSF */
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }

                                    If ((Arg2 == One))
                                    {
                                        If (CondRefOf (RDLY))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                            }

                                            RDLY = Arg3
                                        }
                                    }

                                    If ((Arg2 == 0x02))
                                    {
                                        If (CondRefOf (RDLY))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                            }

                                            Return (RDLY) /* External reference */
                                        }
                                    }

                                    If ((Arg2 == 0x03))
                                    {
                                        CreateWordField (Arg3, Zero, CMDT)
                                        CreateWordField (Arg3, 0x02, CMDP)
                                        If (CondRefOf (BRMT))
                                        {
                                            If ((CMDT == One))
                                            {
                                                BRMT = CMDP /* \_SB_.PC00.BTPC._DSM.CMDP */
                                            }
                                        }
                                    }

                                    If ((Arg2 == 0x04))
                                    {
                                        If (CondRefOf (BRMT))
                                        {
                                            Return (BRMT) /* External reference */
                                        }
                                    }

                                    If ((Arg2 == 0x05))
                                    {
                                        CreateWordField (Arg3, Zero, BCMT)
                                        CreateWordField (Arg3, 0x02, BCMP)
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG ("BT PRR for IOSF - Dynamic PLDR")
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                                        }

                                        If ((BCMT == One))
                                        {
                                            If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                            {
                                                If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                                {
                                                    If (CondRefOf (ADBG))
                                                    {
                                                        ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                                    }

                                                    \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.BTPC._DSM.BCMP */
                                                }
                                            }
                                            ElseIf (CondRefOf (ADBG))
                                            {
                                                ADBG ("BT interface is not PCI (IOSF)")
                                            }
                                        }

                                        Return (Zero)
                                    }

                                    If ((Arg2 == 0x07))
                                    {
                                        If (CondRefOf (BTDL))
                                        {
                                            BTDL = Arg3
                                        }
                                    }

                                    If ((Arg2 == 0x06))
                                    {
                                        If (CondRefOf (CBTI))
                                        {
                                            If ((CBTI == 0x02))
                                            {
                                                If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                                {
                                                    If (CondRefOf (ADBG))
                                                    {
                                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                                    }

                                                    If (CondRefOf (ADBG))
                                                    {
                                                        ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                                    }

                                                    Return (Package (0x02)
                                                    {
                                                        \_SB.PC00.BTPC.RSTT, 
                                                        \_SB.PC00.BTPC.PRRS
                                                    })
                                                }
                                            }
                                            ElseIf (CondRefOf (ADBG))
                                            {
                                                ADBG ("BT interface is not PCI (IOSF)")
                                            }
                                        }

                                        Return (Zero)
                                    }

                                    Return (Zero)
                                }
                                ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                                {
                                    If ((Arg2 == Zero))
                                    {
                                        If ((Arg1 == Zero))
                                        {
                                            Name (TDSF, Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                            TDSF [Zero] = 0x03
                                            Return (TDSF) /* \_SB_.PC00.BTPC._DSM.TDSF */
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }

                                    If ((Arg2 == One))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                                        }
                                    }

                                    Return (Zero)
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }
                            }

                            Method (AOLX, 0, NotSerialized)
                            {
                                Name (AODS, Package (0x03)
                                {
                                    Zero, 
                                    0x12, 
                                    Zero
                                })
                                If ((CondRefOf (CBTA) && (CBTA == One)))
                                {
                                    If ((CondRefOf (CRFP) && (CRFP == One)))
                                    {
                                        If ((CondRefOf (CBOI) && (CBOI == One)))
                                        {
                                            AODS [0x02] = 0x05
                                        }
                                        Else
                                        {
                                            AODS [0x02] = 0x03
                                        }
                                    }
                                    ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                                    {
                                        AODS [0x02] = 0x03
                                    }
                                }

                                Return (AODS) /* \_SB_.PC00.BTPC.AOLX.AODS */
                            }

                            Method (AOLD, 0, NotSerialized)
                            {
                                Return (AOLX ())
                            }

                            Name (GLAX, Package (0x03)
                            {
                                Zero, 
                                Package (0x02)
                                {
                                    0x07, 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    0x12, 
                                    Zero
                                }
                            })
                            Method (GLAI, 0, Serialized)
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                                }

                                DerefOf (GLAX [One]) [One] = \CGLS
                                DerefOf (GLAX [0x02]) [One] = \CGLS
                                Return (GLAX) /* \_SB_.PC00.BTPC.GLAX */
                            }
                        }
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP01.PXSX))
    {
        Scope (\_SB.PC00.RP01.PXSX)
        {
            If (CondRefOf (\_SB.PC00.RP01.SLOT))
            {
                If ((WLRP == \_SB.PC00.RP01.SLOT))
                {
                    If ((CondRefOf (RPXX) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP01.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP01._ADR) && CondRefOf (\_SB.PC00.RP01.PXSX._ADR)))
                            {
                                OperationRegion (RPXX, SystemMemory, GMIO (\_SB.PC00.RP01.PBNU, \_SB.PC00.RP01._ADR (), \_SB.PC00.RP01.PXSX._ADR ()), 0x30)
                                Field (RPXX, AnyAcc, NoLock, Preserve)
                                {
                                    VDID,   32, 
                                    Offset (0x2C), 
                                    SVID,   16
                                }
                            }
                        }
                    }

                    If ((CondRefOf (FLDR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP01.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP01._ADR) && CondRefOf (\_SB.PC00.RP01.PXSX._ADR)))
                            {
                                If (CondRefOf (WDCO))
                                {
                                    OperationRegion (FLDR, SystemMemory, (GMIO (\_SB.PC00.RP01.PBNU, \_SB.PC00.RP01._ADR (), \_SB.PC00.RP01.PXSX._ADR ()) + WDCO), 0x06)
                                    Field (FLDR, ByteAcc, NoLock, Preserve)
                                    {
                                        DCAP,   32, 
                                        DCTR,   16
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (PBRR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP01.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP01._ADR) && CondRefOf (\_SB.PC00.RP01.PXSX._ADR)))
                            {
                                OperationRegion (PBRR, SystemMemory, GMIO (\_SB.PC00.RP01.PBNU, \_SB.PC00.RP01._ADR (), \_SB.PC00.RP01.PXSX._ADR ()), 0x02B8)
                                Field (PBRR, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x18C), 
                                    MSNL,   32, 
                                    Offset (0x198), 
                                    L1C1,   32, 
                                    L1C2,   32, 
                                    Offset (0x2B4), 
                                    PTMR,   32
                                }
                            }
                        }
                    }

                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.RP01.PXSX.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.RP01.PXSX.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.RP01.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.RP01.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.RP01.PXSX.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.RP01.PXSX.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (RSTY, Zero)
                    Name (FLRC, Zero)
                    Name (BOFC, Zero)
                    Name (DPRS, Zero)
                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _STA")
                            }

                            Return (One)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _ON")
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _OFF")
                            }
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((RSTY == One))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Product RST")
                                }

                                If (CondRefOf (\CNMT))
                                {
                                    Local0 = Acquire (\CNMT, 0x03E8)
                                }

                                If ((Local0 == Zero))
                                {
                                    If ((FLRC == One))
                                    {
                                        Local0 = DCTR /* \_SB_.PC00.RP01.PXSX.DCTR */
                                        Local0 |= 0x8000
                                        DCTR = Local0
                                        If (CondRefOf (FDEL))
                                        {
                                            Sleep (FDEL)
                                        }
                                    }

                                    DPRS = One
                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (Zero)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = Zero
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    PDRC = One
                                    If (CondRefOf (VDEL))
                                    {
                                        Sleep (VDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, Zero)
                                    }

                                    If (CondRefOf (PDEL))
                                    {
                                        Sleep (PDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, One)
                                    }

                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (One)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = One
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    DPRS = 0x02
                                    If (CondRefOf (\CNMT))
                                    {
                                        Release (\CNMT)
                                    }
                                }
                            }
                            Else
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Core RST")
                                }

                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PC00.RP01.PXSX.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }

                                DPRS = One
                            }

                            Sleep (0x01F4)
                            If (CondRefOf (MSNL))
                            {
                                MSNL = DR01 /* \DR01 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore MSNL ", ToDecimalString (MSNL)))
                                }
                            }

                            If (CondRefOf (L1C1))
                            {
                                L1C1 = DR02 /* \DR02 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C1)))
                                }
                            }

                            If (CondRefOf (L1C2))
                            {
                                L1C2 = DR03 /* \DR03 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C2)))
                                }
                            }

                            If (CondRefOf (PTMR))
                            {
                                PTMR = DR04 /* \DR04 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (PTMR)))
                                }
                            }

                            Sleep (0x01F4)
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }

                    If ((CondRefOf (VSEC) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP01.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP01._ADR) && CondRefOf (\_SB.PC00.RP01.PXSX._ADR)))
                            {
                                OperationRegion (VSEC, SystemMemory, (GMIO (\_SB.PC00.RP01.PBNU, \_SB.PC00.RP01._ADR (), \_SB.PC00.RP01.PXSX._ADR ()) + WVHO), 0x10)
                                Field (VSEC, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x0C), 
                                        ,   1, 
                                    BTIE,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                    Offset (0x0D), 
                                    PDRC,   1
                                }
                            }
                        }
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.RP01.PXSX.GLAX */
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP02.PXSX))
    {
        Scope (\_SB.PC00.RP02.PXSX)
        {
            If (CondRefOf (\_SB.PC00.RP02.SLOT))
            {
                If ((WLRP == \_SB.PC00.RP02.SLOT))
                {
                    If ((CondRefOf (RPXX) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP02.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP02._ADR) && CondRefOf (\_SB.PC00.RP02.PXSX._ADR)))
                            {
                                OperationRegion (RPXX, SystemMemory, GMIO (\_SB.PC00.RP02.PBNU, \_SB.PC00.RP02._ADR (), \_SB.PC00.RP02.PXSX._ADR ()), 0x30)
                                Field (RPXX, AnyAcc, NoLock, Preserve)
                                {
                                    VDID,   32, 
                                    Offset (0x2C), 
                                    SVID,   16
                                }
                            }
                        }
                    }

                    If ((CondRefOf (FLDR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP02.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP02._ADR) && CondRefOf (\_SB.PC00.RP02.PXSX._ADR)))
                            {
                                If (CondRefOf (WDCO))
                                {
                                    OperationRegion (FLDR, SystemMemory, (GMIO (\_SB.PC00.RP02.PBNU, \_SB.PC00.RP02._ADR (), \_SB.PC00.RP02.PXSX._ADR ()) + WDCO), 0x06)
                                    Field (FLDR, ByteAcc, NoLock, Preserve)
                                    {
                                        DCAP,   32, 
                                        DCTR,   16
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (PBRR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP02.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP02._ADR) && CondRefOf (\_SB.PC00.RP02.PXSX._ADR)))
                            {
                                OperationRegion (PBRR, SystemMemory, GMIO (\_SB.PC00.RP02.PBNU, \_SB.PC00.RP02._ADR (), \_SB.PC00.RP02.PXSX._ADR ()), 0x02B8)
                                Field (PBRR, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x18C), 
                                    MSNL,   32, 
                                    Offset (0x198), 
                                    L1C1,   32, 
                                    L1C2,   32, 
                                    Offset (0x2B4), 
                                    PTMR,   32
                                }
                            }
                        }
                    }

                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.RP02.PXSX.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.RP02.PXSX.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.RP02.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.RP02.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.RP02.PXSX.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.RP02.PXSX.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (RSTY, Zero)
                    Name (FLRC, Zero)
                    Name (BOFC, Zero)
                    Name (DPRS, Zero)
                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _STA")
                            }

                            Return (One)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _ON")
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _OFF")
                            }
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((RSTY == One))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Product RST")
                                }

                                If (CondRefOf (\CNMT))
                                {
                                    Local0 = Acquire (\CNMT, 0x03E8)
                                }

                                If ((Local0 == Zero))
                                {
                                    If ((FLRC == One))
                                    {
                                        Local0 = DCTR /* \_SB_.PC00.RP02.PXSX.DCTR */
                                        Local0 |= 0x8000
                                        DCTR = Local0
                                        If (CondRefOf (FDEL))
                                        {
                                            Sleep (FDEL)
                                        }
                                    }

                                    DPRS = One
                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (Zero)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = Zero
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    PDRC = One
                                    If (CondRefOf (VDEL))
                                    {
                                        Sleep (VDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, Zero)
                                    }

                                    If (CondRefOf (PDEL))
                                    {
                                        Sleep (PDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, One)
                                    }

                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (One)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = One
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    DPRS = 0x02
                                    If (CondRefOf (\CNMT))
                                    {
                                        Release (\CNMT)
                                    }
                                }
                            }
                            Else
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Core RST")
                                }

                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PC00.RP02.PXSX.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }

                                DPRS = One
                            }

                            Sleep (0x01F4)
                            If (CondRefOf (MSNL))
                            {
                                MSNL = DR01 /* \DR01 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore MSNL ", ToDecimalString (MSNL)))
                                }
                            }

                            If (CondRefOf (L1C1))
                            {
                                L1C1 = DR02 /* \DR02 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C1)))
                                }
                            }

                            If (CondRefOf (L1C2))
                            {
                                L1C2 = DR03 /* \DR03 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C2)))
                                }
                            }

                            If (CondRefOf (PTMR))
                            {
                                PTMR = DR04 /* \DR04 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (PTMR)))
                                }
                            }

                            Sleep (0x01F4)
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }

                    If ((CondRefOf (VSEC) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP02.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP02._ADR) && CondRefOf (\_SB.PC00.RP02.PXSX._ADR)))
                            {
                                OperationRegion (VSEC, SystemMemory, (GMIO (\_SB.PC00.RP02.PBNU, \_SB.PC00.RP02._ADR (), \_SB.PC00.RP02.PXSX._ADR ()) + WVHO), 0x10)
                                Field (VSEC, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x0C), 
                                        ,   1, 
                                    BTIE,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                    Offset (0x0D), 
                                    PDRC,   1
                                }
                            }
                        }
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.RP02.PXSX.GLAX */
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP03.PXSX))
    {
        Scope (\_SB.PC00.RP03.PXSX)
        {
            If (CondRefOf (\_SB.PC00.RP03.SLOT))
            {
                If ((WLRP == \_SB.PC00.RP03.SLOT))
                {
                    If ((CondRefOf (RPXX) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP03.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP03._ADR) && CondRefOf (\_SB.PC00.RP03.PXSX._ADR)))
                            {
                                OperationRegion (RPXX, SystemMemory, GMIO (\_SB.PC00.RP03.PBNU, \_SB.PC00.RP03._ADR (), \_SB.PC00.RP03.PXSX._ADR ()), 0x30)
                                Field (RPXX, AnyAcc, NoLock, Preserve)
                                {
                                    VDID,   32, 
                                    Offset (0x2C), 
                                    SVID,   16
                                }
                            }
                        }
                    }

                    If ((CondRefOf (FLDR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP03.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP03._ADR) && CondRefOf (\_SB.PC00.RP03.PXSX._ADR)))
                            {
                                If (CondRefOf (WDCO))
                                {
                                    OperationRegion (FLDR, SystemMemory, (GMIO (\_SB.PC00.RP03.PBNU, \_SB.PC00.RP03._ADR (), \_SB.PC00.RP03.PXSX._ADR ()) + WDCO), 0x06)
                                    Field (FLDR, ByteAcc, NoLock, Preserve)
                                    {
                                        DCAP,   32, 
                                        DCTR,   16
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (PBRR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP03.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP03._ADR) && CondRefOf (\_SB.PC00.RP03.PXSX._ADR)))
                            {
                                OperationRegion (PBRR, SystemMemory, GMIO (\_SB.PC00.RP03.PBNU, \_SB.PC00.RP03._ADR (), \_SB.PC00.RP03.PXSX._ADR ()), 0x02B8)
                                Field (PBRR, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x18C), 
                                    MSNL,   32, 
                                    Offset (0x198), 
                                    L1C1,   32, 
                                    L1C2,   32, 
                                    Offset (0x2B4), 
                                    PTMR,   32
                                }
                            }
                        }
                    }

                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.RP03.PXSX.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.RP03.PXSX.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.RP03.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.RP03.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.RP03.PXSX.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.RP03.PXSX.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (RSTY, Zero)
                    Name (FLRC, Zero)
                    Name (BOFC, Zero)
                    Name (DPRS, Zero)
                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _STA")
                            }

                            Return (One)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _ON")
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _OFF")
                            }
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((RSTY == One))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Product RST")
                                }

                                If (CondRefOf (\CNMT))
                                {
                                    Local0 = Acquire (\CNMT, 0x03E8)
                                }

                                If ((Local0 == Zero))
                                {
                                    If ((FLRC == One))
                                    {
                                        Local0 = DCTR /* \_SB_.PC00.RP03.PXSX.DCTR */
                                        Local0 |= 0x8000
                                        DCTR = Local0
                                        If (CondRefOf (FDEL))
                                        {
                                            Sleep (FDEL)
                                        }
                                    }

                                    DPRS = One
                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (Zero)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = Zero
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    PDRC = One
                                    If (CondRefOf (VDEL))
                                    {
                                        Sleep (VDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, Zero)
                                    }

                                    If (CondRefOf (PDEL))
                                    {
                                        Sleep (PDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, One)
                                    }

                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (One)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = One
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    DPRS = 0x02
                                    If (CondRefOf (\CNMT))
                                    {
                                        Release (\CNMT)
                                    }
                                }
                            }
                            Else
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Core RST")
                                }

                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PC00.RP03.PXSX.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }

                                DPRS = One
                            }

                            Sleep (0x01F4)
                            If (CondRefOf (MSNL))
                            {
                                MSNL = DR01 /* \DR01 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore MSNL ", ToDecimalString (MSNL)))
                                }
                            }

                            If (CondRefOf (L1C1))
                            {
                                L1C1 = DR02 /* \DR02 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C1)))
                                }
                            }

                            If (CondRefOf (L1C2))
                            {
                                L1C2 = DR03 /* \DR03 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C2)))
                                }
                            }

                            If (CondRefOf (PTMR))
                            {
                                PTMR = DR04 /* \DR04 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (PTMR)))
                                }
                            }

                            Sleep (0x01F4)
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }

                    If ((CondRefOf (VSEC) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP03.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP03._ADR) && CondRefOf (\_SB.PC00.RP03.PXSX._ADR)))
                            {
                                OperationRegion (VSEC, SystemMemory, (GMIO (\_SB.PC00.RP03.PBNU, \_SB.PC00.RP03._ADR (), \_SB.PC00.RP03.PXSX._ADR ()) + WVHO), 0x10)
                                Field (VSEC, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x0C), 
                                        ,   1, 
                                    BTIE,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                    Offset (0x0D), 
                                    PDRC,   1
                                }
                            }
                        }
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.RP03.PXSX.GLAX */
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP04.PXSX))
    {
        Scope (\_SB.PC00.RP04.PXSX)
        {
            If (CondRefOf (\_SB.PC00.RP04.SLOT))
            {
                If ((WLRP == \_SB.PC00.RP04.SLOT))
                {
                    If ((CondRefOf (RPXX) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP04.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP04._ADR) && CondRefOf (\_SB.PC00.RP04.PXSX._ADR)))
                            {
                                OperationRegion (RPXX, SystemMemory, GMIO (\_SB.PC00.RP04.PBNU, \_SB.PC00.RP04._ADR (), \_SB.PC00.RP04.PXSX._ADR ()), 0x30)
                                Field (RPXX, AnyAcc, NoLock, Preserve)
                                {
                                    VDID,   32, 
                                    Offset (0x2C), 
                                    SVID,   16
                                }
                            }
                        }
                    }

                    If ((CondRefOf (FLDR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP04.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP04._ADR) && CondRefOf (\_SB.PC00.RP04.PXSX._ADR)))
                            {
                                If (CondRefOf (WDCO))
                                {
                                    OperationRegion (FLDR, SystemMemory, (GMIO (\_SB.PC00.RP04.PBNU, \_SB.PC00.RP04._ADR (), \_SB.PC00.RP04.PXSX._ADR ()) + WDCO), 0x06)
                                    Field (FLDR, ByteAcc, NoLock, Preserve)
                                    {
                                        DCAP,   32, 
                                        DCTR,   16
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (PBRR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP04.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP04._ADR) && CondRefOf (\_SB.PC00.RP04.PXSX._ADR)))
                            {
                                OperationRegion (PBRR, SystemMemory, GMIO (\_SB.PC00.RP04.PBNU, \_SB.PC00.RP04._ADR (), \_SB.PC00.RP04.PXSX._ADR ()), 0x02B8)
                                Field (PBRR, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x18C), 
                                    MSNL,   32, 
                                    Offset (0x198), 
                                    L1C1,   32, 
                                    L1C2,   32, 
                                    Offset (0x2B4), 
                                    PTMR,   32
                                }
                            }
                        }
                    }

                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.RP04.PXSX.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.RP04.PXSX.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.RP04.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.RP04.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.RP04.PXSX.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.RP04.PXSX.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (RSTY, Zero)
                    Name (FLRC, Zero)
                    Name (BOFC, Zero)
                    Name (DPRS, Zero)
                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _STA")
                            }

                            Return (One)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _ON")
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _OFF")
                            }
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((RSTY == One))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Product RST")
                                }

                                If (CondRefOf (\CNMT))
                                {
                                    Local0 = Acquire (\CNMT, 0x03E8)
                                }

                                If ((Local0 == Zero))
                                {
                                    If ((FLRC == One))
                                    {
                                        Local0 = DCTR /* \_SB_.PC00.RP04.PXSX.DCTR */
                                        Local0 |= 0x8000
                                        DCTR = Local0
                                        If (CondRefOf (FDEL))
                                        {
                                            Sleep (FDEL)
                                        }
                                    }

                                    DPRS = One
                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (Zero)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = Zero
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    PDRC = One
                                    If (CondRefOf (VDEL))
                                    {
                                        Sleep (VDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, Zero)
                                    }

                                    If (CondRefOf (PDEL))
                                    {
                                        Sleep (PDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, One)
                                    }

                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (One)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = One
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    DPRS = 0x02
                                    If (CondRefOf (\CNMT))
                                    {
                                        Release (\CNMT)
                                    }
                                }
                            }
                            Else
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Core RST")
                                }

                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PC00.RP04.PXSX.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }

                                DPRS = One
                            }

                            Sleep (0x01F4)
                            If (CondRefOf (MSNL))
                            {
                                MSNL = DR01 /* \DR01 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore MSNL ", ToDecimalString (MSNL)))
                                }
                            }

                            If (CondRefOf (L1C1))
                            {
                                L1C1 = DR02 /* \DR02 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C1)))
                                }
                            }

                            If (CondRefOf (L1C2))
                            {
                                L1C2 = DR03 /* \DR03 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C2)))
                                }
                            }

                            If (CondRefOf (PTMR))
                            {
                                PTMR = DR04 /* \DR04 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (PTMR)))
                                }
                            }

                            Sleep (0x01F4)
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }

                    If ((CondRefOf (VSEC) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP04.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP04._ADR) && CondRefOf (\_SB.PC00.RP04.PXSX._ADR)))
                            {
                                OperationRegion (VSEC, SystemMemory, (GMIO (\_SB.PC00.RP04.PBNU, \_SB.PC00.RP04._ADR (), \_SB.PC00.RP04.PXSX._ADR ()) + WVHO), 0x10)
                                Field (VSEC, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x0C), 
                                        ,   1, 
                                    BTIE,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                    Offset (0x0D), 
                                    PDRC,   1
                                }
                            }
                        }
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.RP04.PXSX.GLAX */
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP05.PXSX))
    {
        Scope (\_SB.PC00.RP05.PXSX)
        {
            If (CondRefOf (\_SB.PC00.RP05.SLOT))
            {
                If ((WLRP == \_SB.PC00.RP05.SLOT))
                {
                    If ((CondRefOf (RPXX) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP05.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP05._ADR) && CondRefOf (\_SB.PC00.RP05.PXSX._ADR)))
                            {
                                OperationRegion (RPXX, SystemMemory, GMIO (\_SB.PC00.RP05.PBNU, \_SB.PC00.RP05._ADR (), \_SB.PC00.RP05.PXSX._ADR ()), 0x30)
                                Field (RPXX, AnyAcc, NoLock, Preserve)
                                {
                                    VDID,   32, 
                                    Offset (0x2C), 
                                    SVID,   16
                                }
                            }
                        }
                    }

                    If ((CondRefOf (FLDR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP05.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP05._ADR) && CondRefOf (\_SB.PC00.RP05.PXSX._ADR)))
                            {
                                If (CondRefOf (WDCO))
                                {
                                    OperationRegion (FLDR, SystemMemory, (GMIO (\_SB.PC00.RP05.PBNU, \_SB.PC00.RP05._ADR (), \_SB.PC00.RP05.PXSX._ADR ()) + WDCO), 0x06)
                                    Field (FLDR, ByteAcc, NoLock, Preserve)
                                    {
                                        DCAP,   32, 
                                        DCTR,   16
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (PBRR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP05.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP05._ADR) && CondRefOf (\_SB.PC00.RP05.PXSX._ADR)))
                            {
                                OperationRegion (PBRR, SystemMemory, GMIO (\_SB.PC00.RP05.PBNU, \_SB.PC00.RP05._ADR (), \_SB.PC00.RP05.PXSX._ADR ()), 0x02B8)
                                Field (PBRR, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x18C), 
                                    MSNL,   32, 
                                    Offset (0x198), 
                                    L1C1,   32, 
                                    L1C2,   32, 
                                    Offset (0x2B4), 
                                    PTMR,   32
                                }
                            }
                        }
                    }

                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.RP05.PXSX.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.RP05.PXSX.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.RP05.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.RP05.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.RP05.PXSX.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.RP05.PXSX.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (RSTY, Zero)
                    Name (FLRC, Zero)
                    Name (BOFC, Zero)
                    Name (DPRS, Zero)
                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _STA")
                            }

                            Return (One)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _ON")
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _OFF")
                            }
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((RSTY == One))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Product RST")
                                }

                                If (CondRefOf (\CNMT))
                                {
                                    Local0 = Acquire (\CNMT, 0x03E8)
                                }

                                If ((Local0 == Zero))
                                {
                                    If ((FLRC == One))
                                    {
                                        Local0 = DCTR /* \_SB_.PC00.RP05.PXSX.DCTR */
                                        Local0 |= 0x8000
                                        DCTR = Local0
                                        If (CondRefOf (FDEL))
                                        {
                                            Sleep (FDEL)
                                        }
                                    }

                                    DPRS = One
                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (Zero)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = Zero
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    PDRC = One
                                    If (CondRefOf (VDEL))
                                    {
                                        Sleep (VDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, Zero)
                                    }

                                    If (CondRefOf (PDEL))
                                    {
                                        Sleep (PDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, One)
                                    }

                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (One)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = One
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    DPRS = 0x02
                                    If (CondRefOf (\CNMT))
                                    {
                                        Release (\CNMT)
                                    }
                                }
                            }
                            Else
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Core RST")
                                }

                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PC00.RP05.PXSX.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }

                                DPRS = One
                            }

                            Sleep (0x01F4)
                            If (CondRefOf (MSNL))
                            {
                                MSNL = DR01 /* \DR01 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore MSNL ", ToDecimalString (MSNL)))
                                }
                            }

                            If (CondRefOf (L1C1))
                            {
                                L1C1 = DR02 /* \DR02 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C1)))
                                }
                            }

                            If (CondRefOf (L1C2))
                            {
                                L1C2 = DR03 /* \DR03 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C2)))
                                }
                            }

                            If (CondRefOf (PTMR))
                            {
                                PTMR = DR04 /* \DR04 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (PTMR)))
                                }
                            }

                            Sleep (0x01F4)
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }

                    If ((CondRefOf (VSEC) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP05.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP05._ADR) && CondRefOf (\_SB.PC00.RP05.PXSX._ADR)))
                            {
                                OperationRegion (VSEC, SystemMemory, (GMIO (\_SB.PC00.RP05.PBNU, \_SB.PC00.RP05._ADR (), \_SB.PC00.RP05.PXSX._ADR ()) + WVHO), 0x10)
                                Field (VSEC, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x0C), 
                                        ,   1, 
                                    BTIE,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                    Offset (0x0D), 
                                    PDRC,   1
                                }
                            }
                        }
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.RP05.PXSX.GLAX */
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP06.PXSX))
    {
        Scope (\_SB.PC00.RP06.PXSX)
        {
            If (CondRefOf (\_SB.PC00.RP06.SLOT))
            {
                If ((WLRP == \_SB.PC00.RP06.SLOT))
                {
                    If ((CondRefOf (RPXX) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP06.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP06._ADR) && CondRefOf (\_SB.PC00.RP06.PXSX._ADR)))
                            {
                                OperationRegion (RPXX, SystemMemory, GMIO (\_SB.PC00.RP06.PBNU, \_SB.PC00.RP06._ADR (), \_SB.PC00.RP06.PXSX._ADR ()), 0x30)
                                Field (RPXX, AnyAcc, NoLock, Preserve)
                                {
                                    VDID,   32, 
                                    Offset (0x2C), 
                                    SVID,   16
                                }
                            }
                        }
                    }

                    If ((CondRefOf (FLDR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP06.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP06._ADR) && CondRefOf (\_SB.PC00.RP06.PXSX._ADR)))
                            {
                                If (CondRefOf (WDCO))
                                {
                                    OperationRegion (FLDR, SystemMemory, (GMIO (\_SB.PC00.RP06.PBNU, \_SB.PC00.RP06._ADR (), \_SB.PC00.RP06.PXSX._ADR ()) + WDCO), 0x06)
                                    Field (FLDR, ByteAcc, NoLock, Preserve)
                                    {
                                        DCAP,   32, 
                                        DCTR,   16
                                    }
                                }
                            }
                        }
                    }

                    If ((CondRefOf (PBRR) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP06.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP06._ADR) && CondRefOf (\_SB.PC00.RP06.PXSX._ADR)))
                            {
                                OperationRegion (PBRR, SystemMemory, GMIO (\_SB.PC00.RP06.PBNU, \_SB.PC00.RP06._ADR (), \_SB.PC00.RP06.PXSX._ADR ()), 0x02B8)
                                Field (PBRR, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x18C), 
                                    MSNL,   32, 
                                    Offset (0x198), 
                                    L1C1,   32, 
                                    L1C2,   32, 
                                    Offset (0x2B4), 
                                    PTMR,   32
                                }
                            }
                        }
                    }

                    Method (IFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (IDSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                IDSF [Zero] = 0x37
                                IDSF [One] = Zero
                                Return (IDSF) /* \_SB_.PC00.RP06.PXSX.IFUN.IDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("vPro: ", CVPR))
                            }

                            If (CondRefOf (CVPR))
                            {
                                Local0 = (CVPR << Zero)
                            }

                            Return (Local0)
                        }

                        If ((Arg2 == 0x02))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (CMDT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (CMDP)))
                            }

                            If ((CMDT == One))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.CNVW.RSTT)))
                                    }

                                    Return (\_SB.PC00.CNVW.RSTT) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (RSTY))
                                        {
                                            Return (RSTY) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x02))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.RSTT))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                    }

                                    \_SB.PC00.CNVW.RSTT = CMDP /* \_SB_.PC00.RP06.PXSX.IFUN.CMDP */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set _PRR Mode = ", ToHexString (CMDP)))
                                        }

                                        Local0 = (CMDP & One)
                                        If (CondRefOf (RSTY))
                                        {
                                            RSTY = Local0
                                        }

                                        Local1 = (CMDP & 0x02)
                                        Local1 >>= One
                                        If (CondRefOf (FLRC))
                                        {
                                            FLRC = Local1
                                        }

                                        Local2 = (CMDP & 0x04)
                                        Local2 >>= 0x02
                                        If (CondRefOf (BOFC))
                                        {
                                            BOFC = Local2
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            If ((CMDT == 0x03))
                            {
                                If (CondRefOf (\_SB.PC00.CNVW.PRRS))
                                {
                                    If (CondRefOf (ADBG))
                                    {
                                        ADBG (Concatenate ("Get Last_PRR status PRRS = ", ToHexString (\_SB.PC00.CNVW.PRRS)))
                                    }

                                    Return (\_SB.PC00.CNVW.PRRS) /* External reference */
                                }
                                ElseIf (CondRefOf (WIST))
                                {
                                    If (WIST ())
                                    {
                                        If (CondRefOf (DPRS))
                                        {
                                            If (CondRefOf (ADBG))
                                            {
                                                ADBG (Concatenate ("Get Last_PRR status DPRS = ", ToHexString (DPRS)))
                                            }

                                            Return (DPRS) /* External reference */
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Return (Zero)
                        }

                        Name (FDEL, Zero)
                        Name (PDEL, Zero)
                        Name (VDEL, Zero)
                        If ((Arg2 == 0x04))
                        {
                            CreateWordField (Arg3, Zero, PRTT)
                            CreateWordField (Arg3, 0x02, PRTD)
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerType = ", ToHexString (PRTT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("TimerDuration (ms) = ", ToDecimalString (PRTD)))
                            }

                            If ((PRTT == One))
                            {
                                FDEL = PRTD /* \_SB_.PC00.RP06.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x02))
                            {
                                PDEL = PRTD /* \_SB_.PC00.RP06.PXSX.IFUN.PRTD */
                            }
                            ElseIf ((PRTT == 0x03))
                            {
                                VDEL = PRTD /* \_SB_.PC00.RP06.PXSX.IFUN.PRTD */
                            }
                            ElseIf (CondRefOf (ADBG))
                            {
                                ADBG ("TimerDuration not set")
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            If (CondRefOf (WFDL))
                            {
                                WFDL = Arg3
                            }
                        }

                        Return (Zero)
                    }

                    Method (IDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("7266172c-220b-4b29-814f-75e4dd26b5fd") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (OFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (ODSF, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                ODSF [Zero] = One
                                ODSF [One] = 0x08
                                Return (ODSF) /* \_SB_.PC00.RP06.PXSX.OFUN.ODSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x0B))
                        {
                            If (CondRefOf (CDRM))
                            {
                                If (CondRefOf (CRFI))
                                {
                                    If ((CDRM == One))
                                    {
                                        If ((CRFI == One))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (0x02)
                                        }
                                    }
                                    ElseIf ((CRFI == One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        Return (0x03)
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Method (ODSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (ODSM (Arg0))
                        {
                            Return (OFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (IDSM (Arg0))
                        {
                            Return (IFUN (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Name (RSTY, Zero)
                    Name (FLRC, Zero)
                    Name (BOFC, Zero)
                    Name (DPRS, Zero)
                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _STA")
                            }

                            Return (One)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _ON")
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("Wifi PR _OFF")
                            }
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If ((RSTY == One))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Product RST")
                                }

                                If (CondRefOf (\CNMT))
                                {
                                    Local0 = Acquire (\CNMT, 0x03E8)
                                }

                                If ((Local0 == Zero))
                                {
                                    If ((FLRC == One))
                                    {
                                        Local0 = DCTR /* \_SB_.PC00.RP06.PXSX.DCTR */
                                        Local0 |= 0x8000
                                        DCTR = Local0
                                        If (CondRefOf (FDEL))
                                        {
                                            Sleep (FDEL)
                                        }
                                    }

                                    DPRS = One
                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (Zero)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = Zero
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    PDRC = One
                                    If (CondRefOf (VDEL))
                                    {
                                        Sleep (VDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, Zero)
                                    }

                                    If (CondRefOf (PDEL))
                                    {
                                        Sleep (PDEL)
                                    }

                                    If (CondRefOf (\_SB.SGOV))
                                    {
                                        \_SB.SGOV (WLRT, One)
                                    }

                                    If ((BOFC == One))
                                    {
                                        If ((CondRefOf (BRMT) && (BRMT == Zero)))
                                        {
                                            \_SB.BTRK (One)
                                        }
                                        ElseIf ((WVHO != Zero))
                                        {
                                            BTIE = One
                                        }

                                        If (CondRefOf (RDLY))
                                        {
                                            Sleep (RDLY)
                                        }
                                    }

                                    DPRS = 0x02
                                    If (CondRefOf (\CNMT))
                                    {
                                        Release (\CNMT)
                                    }
                                }
                            }
                            Else
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG ("Wifi Core RST")
                                }

                                If ((DCAP & 0x10000000))
                                {
                                    Local0 = DCTR /* \_SB_.PC00.RP06.PXSX.DCTR */
                                    Local0 |= 0x8000
                                    DCTR = Local0
                                }

                                DPRS = One
                            }

                            Sleep (0x01F4)
                            If (CondRefOf (MSNL))
                            {
                                MSNL = DR01 /* \DR01 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore MSNL ", ToDecimalString (MSNL)))
                                }
                            }

                            If (CondRefOf (L1C1))
                            {
                                L1C1 = DR02 /* \DR02 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C1)))
                                }
                            }

                            If (CondRefOf (L1C2))
                            {
                                L1C2 = DR03 /* \DR03 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (L1C2)))
                                }
                            }

                            If (CondRefOf (PTMR))
                            {
                                PTMR = DR04 /* \DR04 */
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Restore L1C1 ", ToDecimalString (PTMR)))
                                }
                            }

                            Sleep (0x01F4)
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }

                    If ((CondRefOf (VSEC) == Zero))
                    {
                        If ((CondRefOf (\GMIO) && CondRefOf (\_SB.PC00.RP06.PBNU)))
                        {
                            If ((CondRefOf (\_SB.PC00.RP06._ADR) && CondRefOf (\_SB.PC00.RP06.PXSX._ADR)))
                            {
                                OperationRegion (VSEC, SystemMemory, (GMIO (\_SB.PC00.RP06.PBNU, \_SB.PC00.RP06._ADR (), \_SB.PC00.RP06.PXSX._ADR ()) + WVHO), 0x10)
                                Field (VSEC, AnyAcc, NoLock, Preserve)
                                {
                                    Offset (0x0C), 
                                        ,   1, 
                                    BTIE,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                        ,   1, 
                                    Offset (0x0D), 
                                    PDRC,   1
                                }
                            }
                        }
                    }

                    Name (GLAX, Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0x07, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x12, 
                            Zero
                        }
                    })
                    Method (GLAI, 0, Serialized)
                    {
                        If (CondRefOf (ADBG))
                        {
                            ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                        }

                        DerefOf (GLAX [One]) [One] = \CGLS
                        DerefOf (GLAX [0x02]) [One] = \CGLS
                        Return (GLAX) /* \_SB_.PC00.RP06.PXSX.GLAX */
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS01))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS01)
        {
            If (((DUBP == One) || (IUBP == One)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS01._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS01._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS01._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS01._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS01.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS01.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS02))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS02)
        {
            If (((DUBP == 0x02) || (IUBP == 0x02)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS02._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS02._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS02._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS02._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS02.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS02.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS03))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS03)
        {
            If (((DUBP == 0x03) || (IUBP == 0x03)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS03._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS03._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS03._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS03._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS03.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS03.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS04))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS04)
        {
            If (((DUBP == 0x04) || (IUBP == 0x04)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS04._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS04._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS04._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS04._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS04.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS04.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS05))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS05)
        {
            If (((DUBP == 0x05) || (IUBP == 0x05)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS05._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS05._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS05._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS05._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS05.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS05.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS06))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS06)
        {
            If (((DUBP == 0x06) || (IUBP == 0x06)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS06._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS06._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS06._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS06._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS06.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS06.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS07))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS07)
        {
            If (((DUBP == 0x07) || (IUBP == 0x07)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS07._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS07._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS07._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS07._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS07.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS07.GLAX */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI.RHUB.HS08))
    {
        Scope (\_SB.PC00.XHCI.RHUB.HS08)
        {
            If (((DUBP == 0x08) || (IUBP == 0x08)))
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (BDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                BDSF [Zero] = 0xFF
                                Return (BDSF) /* \_SB_.PC00.XHCI.RHUB.HS08._DSM.BDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Set RDLY ", ToDecimalString (Arg3)))
                                }

                                RDLY = Arg3
                            }
                        }

                        If ((Arg2 == 0x02))
                        {
                            If (CondRefOf (RDLY))
                            {
                                If (CondRefOf (ADBG))
                                {
                                    ADBG (Concatenate ("Get RDLY ", ToDecimalString (RDLY)))
                                }

                                Return (RDLY) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            CreateWordField (Arg3, Zero, CMDT)
                            CreateWordField (Arg3, 0x02, CMDP)
                            If (CondRefOf (BRMT))
                            {
                                If ((CMDT == One))
                                {
                                    BRMT = CMDP /* \_SB_.PC00.XHCI.RHUB.HS08._DSM.CMDP */
                                }
                            }
                        }

                        If ((Arg2 == 0x04))
                        {
                            If (CondRefOf (BRMT))
                            {
                                Return (BRMT) /* External reference */
                            }
                        }

                        If ((Arg2 == 0x05))
                        {
                            CreateWordField (Arg3, Zero, BCMT)
                            CreateWordField (Arg3, 0x02, BCMP)
                            If (CondRefOf (ADBG))
                            {
                                ADBG ("BT PRR for IOSF - Dynamic PLDR")
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdType = ", ToHexString (BCMT)))
                            }

                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("CmdPayload = ", ToHexString (BCMP)))
                            }

                            If ((BCMT == One))
                            {
                                If ((CondRefOf (CBTI) && (CBTI == 0x02)))
                                {
                                    If (CondRefOf (\_SB.PC00.BTPC.RSTT))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Set BT _PRR Mode for IOSF = ", ToHexString (BCMP)))
                                        }

                                        \_SB.PC00.BTPC.RSTT = BCMP /* \_SB_.PC00.XHCI.RHUB.HS08._DSM.BCMP */
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg2 == 0x07))
                        {
                            If (CondRefOf (BTDL))
                            {
                                BTDL = Arg3
                            }
                        }

                        If ((Arg2 == 0x06))
                        {
                            If (CondRefOf (CBTI))
                            {
                                If ((CBTI == 0x02))
                                {
                                    If ((CondRefOf (\_SB.PC00.BTPC.RSTT) && CondRefOf (\_SB.PC00.BTPC.PRRS)))
                                    {
                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get _PRR Mode = ", ToHexString (\_SB.PC00.BTPC.RSTT)))
                                        }

                                        If (CondRefOf (ADBG))
                                        {
                                            ADBG (Concatenate ("Get Last_PRR status = ", ToHexString (\_SB.PC00.BTPC.PRRS)))
                                        }

                                        Return (Package (0x02)
                                        {
                                            \_SB.PC00.BTPC.RSTT, 
                                            \_SB.PC00.BTPC.PRRS
                                        })
                                    }
                                }
                                ElseIf (CondRefOf (ADBG))
                                {
                                    ADBG ("BT interface is not PCI (IOSF)")
                                }
                            }

                            Return (Zero)
                        }

                        Return (Zero)
                    }
                    ElseIf ((Arg0 == ToUUID ("2d19d3e1-5708-4696-bd5b-2c3dbae2d6a9") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Name (TDSF, Buffer (One)
                                {
                                     0x00                                             // .
                                })
                                TDSF [Zero] = 0x03
                                Return (TDSF) /* \_SB_.PC00.XHCI.RHUB.HS08._DSM.TDSF */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            If (CondRefOf (ADBG))
                            {
                                ADBG (Concatenate ("Tile Activation ", ToDecimalString (Arg3)))
                            }
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (AOLX, 0, NotSerialized)
                {
                    Name (AODS, Package (0x03)
                    {
                        Zero, 
                        0x12, 
                        Zero
                    })
                    If ((CondRefOf (CBTA) && (CBTA == One)))
                    {
                        If ((CondRefOf (CRFP) && (CRFP == One)))
                        {
                            If ((CondRefOf (CBOI) && (CBOI == One)))
                            {
                                AODS [0x02] = 0x05
                            }
                            Else
                            {
                                AODS [0x02] = 0x03
                            }
                        }
                        ElseIf ((CondRefOf (HDBO) && (HDBO & One)))
                        {
                            AODS [0x02] = 0x03
                        }
                    }

                    Return (AODS) /* \_SB_.PC00.XHCI.RHUB.HS08.AOLX.AODS */
                }

                Method (AOLD, 0, NotSerialized)
                {
                    Return (AOLX ())
                }

                Name (GLAX, Package (0x03)
                {
                    Zero, 
                    Package (0x02)
                    {
                        0x07, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x12, 
                        Zero
                    }
                })
                Method (GLAI, 0, Serialized)
                {
                    If (CondRefOf (ADBG))
                    {
                        ADBG (Concatenate ("GLAI method. CGLS = ", ToHexString (\CGLS)))
                    }

                    DerefOf (GLAX [One]) [One] = \CGLS
                    DerefOf (GLAX [0x02]) [One] = \CGLS
                    Return (GLAX) /* \_SB_.PC00.XHCI.RHUB.HS08.GLAX */
                }
            }
        }
    }
}

