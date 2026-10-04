/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt19.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000AF1C (44828)
 *     Revision         0x02
 *     Checksum         0xE4
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "PtlRvp34"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "_ASUS_", "PtlRvp34", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HDAS.VDID, UnknownObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C0.TPD0, DeviceObj)
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C1.TPL1, DeviceObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP01.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PDOD, UnknownObj)
    External (_SB_.PC00.RP01.PGRT, UnknownObj)
    External (_SB_.PC00.RP01.PRMV, IntObj)
    External (_SB_.PC00.RP01.PRTP, IntObj)
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.RP01.RD3C, IntObj)
    External (_SB_.PC00.RP01.SLOT, IntObj)
    External (_SB_.PC00.RP01.VDID, UnknownObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.PRMV, IntObj)
    External (_SB_.PC00.RP02.PRTP, IntObj)
    External (_SB_.PC00.RP02.RD3C, IntObj)
    External (_SB_.PC00.RP02.SLOT, IntObj)
    External (_SB_.PC00.RP02.VDID, UnknownObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.PRMV, IntObj)
    External (_SB_.PC00.RP03.PRTP, IntObj)
    External (_SB_.PC00.RP03.RD3C, IntObj)
    External (_SB_.PC00.RP03.SLOT, IntObj)
    External (_SB_.PC00.RP03.VDID, UnknownObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.PRMV, IntObj)
    External (_SB_.PC00.RP04.PRTP, IntObj)
    External (_SB_.PC00.RP04.RD3C, IntObj)
    External (_SB_.PC00.RP04.SLOT, IntObj)
    External (_SB_.PC00.RP04.VDID, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP05.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PDOD, UnknownObj)
    External (_SB_.PC00.RP05.PGRT, UnknownObj)
    External (_SB_.PC00.RP05.PRMV, IntObj)
    External (_SB_.PC00.RP05.PRTP, IntObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.RD3C, IntObj)
    External (_SB_.PC00.RP05.SLOT, IntObj)
    External (_SB_.PC00.RP05.VDID, UnknownObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.PRMV, IntObj)
    External (_SB_.PC00.RP06.PRTP, IntObj)
    External (_SB_.PC00.RP06.RD3C, IntObj)
    External (_SB_.PC00.RP06.SLOT, IntObj)
    External (_SB_.PC00.RP06.VDID, UnknownObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.PRMV, IntObj)
    External (_SB_.PC00.RP07.PRTP, IntObj)
    External (_SB_.PC00.RP07.RD3C, IntObj)
    External (_SB_.PC00.RP07.SLOT, IntObj)
    External (_SB_.PC00.RP07.VDID, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.PRMV, IntObj)
    External (_SB_.PC00.RP08.PRTP, IntObj)
    External (_SB_.PC00.RP08.RD3C, IntObj)
    External (_SB_.PC00.RP08.SLOT, IntObj)
    External (_SB_.PC00.RP08.VDID, UnknownObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP09.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PDOD, UnknownObj)
    External (_SB_.PC00.RP09.PGRT, UnknownObj)
    External (_SB_.PC00.RP09.PRMV, IntObj)
    External (_SB_.PC00.RP09.PRTP, IntObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.RD3C, IntObj)
    External (_SB_.PC00.RP09.SLOT, IntObj)
    External (_SB_.PC00.RP09.VDID, UnknownObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.PRMV, IntObj)
    External (_SB_.PC00.RP10.PRTP, IntObj)
    External (_SB_.PC00.RP10.RD3C, IntObj)
    External (_SB_.PC00.RP10.SLOT, IntObj)
    External (_SB_.PC00.RP10.VDID, UnknownObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP11.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.PDOD, UnknownObj)
    External (_SB_.PC00.RP11.PGRT, UnknownObj)
    External (_SB_.PC00.RP11.PRMV, IntObj)
    External (_SB_.PC00.RP11.PRTP, IntObj)
    External (_SB_.PC00.RP11.RD3C, IntObj)
    External (_SB_.PC00.RP11.SLOT, IntObj)
    External (_SB_.PC00.RP11.VDID, UnknownObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.D3HT, FieldUnitObj)
    External (_SB_.PC00.RP12.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12.PDOD, UnknownObj)
    External (_SB_.PC00.RP12.PGRT, UnknownObj)
    External (_SB_.PC00.RP12.PRMV, IntObj)
    External (_SB_.PC00.RP12.PRTP, IntObj)
    External (_SB_.PC00.RP12.RD3C, IntObj)
    External (_SB_.PC00.RP12.SLOT, IntObj)
    External (_SB_.PC00.RP12.VDID, UnknownObj)
    External (_SB_.PC00.RP13.VDID, UnknownObj)
    External (_SB_.PC00.RP17.VDID, UnknownObj)
    External (_SB_.PC00.RP21.VDID, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT6, DeviceObj)
    External (_SB_.PC00.SAT0.PRT7, DeviceObj)
    External (_SB_.PC00.VMD0, DeviceObj)
    External (_SB_.PC00.VMD0.PP01, DeviceObj)
    External (_SB_.PC00.VMD0.PP01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP01.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP01.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP01.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP02, DeviceObj)
    External (_SB_.PC00.VMD0.PP02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP02.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP02.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP02.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP03, DeviceObj)
    External (_SB_.PC00.VMD0.PP03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP03.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP03.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP03.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP04, DeviceObj)
    External (_SB_.PC00.VMD0.PP04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP04.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP04.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP04.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP05, DeviceObj)
    External (_SB_.PC00.VMD0.PP05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP05.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP05.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP05.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP06, DeviceObj)
    External (_SB_.PC00.VMD0.PP06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP06.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP06.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP06.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP07, DeviceObj)
    External (_SB_.PC00.VMD0.PP07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP07.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP07.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP07.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP08, DeviceObj)
    External (_SB_.PC00.VMD0.PP08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP08.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP08.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP08.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP09, DeviceObj)
    External (_SB_.PC00.VMD0.PP09._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP09.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP09.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP09.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP10, DeviceObj)
    External (_SB_.PC00.VMD0.PP10._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP10.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP10.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP10.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP11, DeviceObj)
    External (_SB_.PC00.VMD0.PP11._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP11.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP11.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP11.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP12, DeviceObj)
    External (_SB_.PC00.VMD0.PP12._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP12.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP12.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP12.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP13, DeviceObj)
    External (_SB_.PC00.VMD0.PP13._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP13.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP13.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP13.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP14, DeviceObj)
    External (_SB_.PC00.VMD0.PP14._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP14.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP14.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP14.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP15, DeviceObj)
    External (_SB_.PC00.VMD0.PP15._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP15.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP15.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP15.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP16, DeviceObj)
    External (_SB_.PC00.VMD0.PP16._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP16.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP16.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP16.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP17, DeviceObj)
    External (_SB_.PC00.VMD0.PP17._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP17.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP17.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP17.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP18, DeviceObj)
    External (_SB_.PC00.VMD0.PP18._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP18.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP18.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP18.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP19, DeviceObj)
    External (_SB_.PC00.VMD0.PP19._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP19.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP19.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP19.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP20, DeviceObj)
    External (_SB_.PC00.VMD0.PP20._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP20.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP20.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP20.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP21, DeviceObj)
    External (_SB_.PC00.VMD0.PP21._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP21.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP21.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP21.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP22, DeviceObj)
    External (_SB_.PC00.VMD0.PP22._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP22.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP22.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP22.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP23, DeviceObj)
    External (_SB_.PC00.VMD0.PP23._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP23.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP23.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP23.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP24, DeviceObj)
    External (_SB_.PC00.VMD0.PP24._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP24.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP24.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PP24.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.PRT0, DeviceObj)
    External (_SB_.PC00.VMD0.PRT1, DeviceObj)
    External (_SB_.PC00.VMD0.PRT2, DeviceObj)
    External (_SB_.PC00.VMD0.PRT3, DeviceObj)
    External (_SB_.PC00.VMD0.PRT4, DeviceObj)
    External (_SB_.PC00.VMD0.PRT5, DeviceObj)
    External (_SB_.PC00.VMD0.PRT6, DeviceObj)
    External (_SB_.PC00.VMD0.PRT7, DeviceObj)
    External (_SB_.PC00.VMD0.SP01, DeviceObj)
    External (_SB_.PC00.VMD0.SP01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP01.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP01.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP01.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP02, DeviceObj)
    External (_SB_.PC00.VMD0.SP02._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP02.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP02.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP02.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP03, DeviceObj)
    External (_SB_.PC00.VMD0.SP03._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP03.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP03.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP03.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP04, DeviceObj)
    External (_SB_.PC00.VMD0.SP04._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP04.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP04.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP04.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP05, DeviceObj)
    External (_SB_.PC00.VMD0.SP05._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP05.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP05.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP05.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP06, DeviceObj)
    External (_SB_.PC00.VMD0.SP06._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP06.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP06.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP06.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP07, DeviceObj)
    External (_SB_.PC00.VMD0.SP07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP07.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP07.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP07.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP08, DeviceObj)
    External (_SB_.PC00.VMD0.SP08._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP08.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP08.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP08.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP09, DeviceObj)
    External (_SB_.PC00.VMD0.SP09._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP09.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP09.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP09.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP10, DeviceObj)
    External (_SB_.PC00.VMD0.SP10._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP10.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP10.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP10.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP11, DeviceObj)
    External (_SB_.PC00.VMD0.SP11._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP11.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP11.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP11.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP12, DeviceObj)
    External (_SB_.PC00.VMD0.SP12._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP12.VPOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP12.VPON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP12.VR3D, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.SP13, DeviceObj)
    External (_SB_.PC00.VMD0.SP17, DeviceObj)
    External (_SB_.PC00.VMD0.SP21, DeviceObj)
    External (_SB_.PC00.VMD0.VD3A, MethodObj)    // 0 Arguments
    External (_SB_.PC00.VMD0.VLOF, MethodObj)    // 2 Arguments
    External (_SB_.PC00.VMD0.VLON, MethodObj)    // 2 Arguments
    External (_SB_.PC00.VMD0.VMPP, UnknownObj)
    External (_SB_.PC00.VMD0.VMSP, UnknownObj)
    External (_SB_.PC00.VMD0.VV0D, UnknownObj)
    External (_SB_.PC00.VMD0.VV0S, UnknownObj)
    External (_SB_.PC00.VMD0.VV1D, UnknownObj)
    External (_SB_.PC00.VMD0.VV1S, UnknownObj)
    External (_SB_.PC00.VMD0.VV2D, UnknownObj)
    External (_SB_.PC00.VMD0.VV2S, UnknownObj)
    External (_SB_.PC00.VMD0.VV3D, UnknownObj)
    External (_SB_.PC00.VMD0.VV3S, UnknownObj)
    External (_SB_.PC00.XDCI, DeviceObj)
    External (_SB_.PC00.XDCI.D0I3, UnknownObj)
    External (_SB_.PC00.XDCI.DVID, UnknownObj)
    External (_SB_.PC00.XDCI.XDCB, UnknownObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.MEMB, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PC02, DeviceObj)
    External (_SB_.PC02.GBES, UnknownObj)
    External (_SB_.PC02.GLAN, DeviceObj)
    External (_SB_.PC02.RP01, DeviceObj)
    External (_SB_.PC02.RP01.PRTP, IntObj)
    External (_SB_.PC02.RP01.SLOT, IntObj)
    External (_SB_.PC02.RP01.VDID, UnknownObj)
    External (_SB_.PC02.RP05, DeviceObj)
    External (_SB_.PC02.RP05.PRTP, IntObj)
    External (_SB_.PC02.RP05.SLOT, IntObj)
    External (_SB_.PC02.RP05.VDID, UnknownObj)
    External (_SB_.PC02.RP08, DeviceObj)
    External (_SB_.PC02.RP08.PRTP, IntObj)
    External (_SB_.PC02.RP08.SLOT, IntObj)
    External (_SB_.PC02.RP09, DeviceObj)
    External (_SB_.PC02.RP09.PRTP, IntObj)
    External (_SB_.PC02.RP09.SLOT, IntObj)
    External (_SB_.PC02.RP09.VDID, UnknownObj)
    External (_SB_.PC02.RP13, DeviceObj)
    External (_SB_.PC02.RP13.PRTP, IntObj)
    External (_SB_.PC02.RP13.SLOT, IntObj)
    External (_SB_.PC02.RP13.VDID, UnknownObj)
    External (_SB_.PC02.RP21, DeviceObj)
    External (_SB_.PC02.RP21.PRTP, IntObj)
    External (_SB_.PC02.RP21.SLOT, IntObj)
    External (_SB_.PC02.RP21.VDID, UnknownObj)
    External (_SB_.PC02.SAT0, DeviceObj)
    External (_SB_.PC02.SAT0.PRT0, DeviceObj)
    External (_SB_.PC02.SAT0.PRT1, DeviceObj)
    External (_SB_.PC02.SAT0.PRT2, DeviceObj)
    External (_SB_.PC02.SAT0.PRT3, DeviceObj)
    External (_SB_.PC02.SAT0.PRT4, DeviceObj)
    External (_SB_.PC02.SAT0.PRT5, DeviceObj)
    External (_SB_.PC02.SAT0.PRT6, DeviceObj)
    External (_SB_.PC02.SAT0.PRT7, DeviceObj)
    External (_SB_.PC02.XDCI, DeviceObj)
    External (_SB_.PC02.XDCI.D0I3, UnknownObj)
    External (_SB_.PC02.XDCI.DVID, UnknownObj)
    External (_SB_.PC02.XDCI.XDCB, UnknownObj)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (AUDD, FieldUnitObj)
    External (DTFS, IntObj)
    External (DTRC, IntObj)
    External (DTRD, IntObj)
    External (DTRO, IntObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (P1EP, UnknownObj)
    External (P1PG, UnknownObj)
    External (P1RG, UnknownObj)
    External (P1RN, UnknownObj)
    External (P1RP, UnknownObj)
    External (P2EP, UnknownObj)
    External (P2PG, UnknownObj)
    External (P2RG, UnknownObj)
    External (P2RN, UnknownObj)
    External (P2RP, UnknownObj)
    External (P3EP, UnknownObj)
    External (P3PG, UnknownObj)
    External (P3RG, UnknownObj)
    External (P3RN, UnknownObj)
    External (P3RP, UnknownObj)
    External (PEP0, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PRST, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RTD3, FieldUnitObj)
    External (RW01, UnknownObj)
    External (RW02, UnknownObj)
    External (RW03, UnknownObj)
    External (RW04, UnknownObj)
    External (RW05, UnknownObj)
    External (RW09, UnknownObj)
    External (RW11, UnknownObj)
    External (RW12, UnknownObj)
    External (SCED, IntObj)
    External (SD2P, UnknownObj)
    External (SD2R, UnknownObj)
    External (SDP1, UnknownObj)
    External (SDPP, UnknownObj)
    External (SDR1, UnknownObj)
    External (SDRP, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SSDP, UnknownObj)
    External (SSDR, UnknownObj)
    External (STD3, FieldUnitObj)
    External (UAMS, UnknownObj)
    External (VMDE, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (XDCE, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    Debug = "[PTL UH LP5 RVP3 and RVP4 RTD3 SSDT][AcpiTableEntry]"
    Debug = Timer
    ADBG ("[PTL UH LP5 RVP1 RTD3 SSDT][AcpiTableEntry]")
    Name (\_SB.PC00.RP03.WAKG, Zero)
    If ((GBES != Zero)){}
    If ((P1RN == One))
    {
        If (CondRefOf (\_SB.PC00.RP01))
        {
            Scope (\_SB.PC00.RP01)
            {
                Name (RSTG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                RSTG [Zero] = P1RG /* External reference */
                RSTG [One] = P1RP /* External reference */
                Name (PWRG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PWRG [Zero] = P1PG /* External reference */
                PWRG [One] = P1EP /* External reference */
                Name (WAKG, Zero)
                WAKG = RW01 /* External reference */
                Name (SCLK, Zero)
                SCLK = 0x02
                Name (WAKP, Zero)
                Name (WKEN, Zero)
                Name (WOFF, Zero)
                Name (LNRD, Zero)
                Name (PWRR, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    ADBG (Concatenate ("_S0W For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C == 0x02))
                        {
                            ADBG (Concatenate ("_S0W - D3 Cold Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (0x04)
                        }
                    }

                    ADBG (Concatenate ("_S0W - D0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (Zero)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("_DSW For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (Arg1)
                    {
                        WKEN = One
                        ADBG (Concatenate ("_DSW Sx Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                        ADBG (Concatenate ("_DSW D3 Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                    Else
                    {
                        WKEN = Zero
                        ADBG (Concatenate ("_DSW D0 Wake Disable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                Method (PPS0, 0, Serialized)
                {
                    ADBG (Concatenate ("PPS0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                    ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
                }

                Method (PPS3, 0, Serialized)
                {
                    ADBG (Concatenate ("PPS3 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                    ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ADBG (Concatenate ("PXP _STA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_STA return 0 as VDID = 0xFFFFFFFF")
                            Return (Zero)
                        }

                        If ((GPRS () == Zero))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        ADBG (Concatenate ("PXP _ON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_ON return as VDID = 0xFFFFFFFF")
                        }
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            PON ()
                            L23D ()
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        ADBG (Concatenate ("PXP _OFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_OFF return as VDID = 0xFFFFFFFF")
                        }
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            DL23 ()
                            POFF ()
                        }
                    }
                }

                Method (GPPR, 0, NotSerialized)
                {
                    ADBG (Concatenate ("GPPR Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (WAKP))
                    {
                        If (((WAKP != Zero) && (WKEN == Zero)))
                        {
                            ADBG (Concatenate ("WAKE enable and keep CIO power on for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PWRR))
                    {
                        If ((PWRR != Zero))
                        {
                            ADBG (Concatenate ("PCIe slot power removal blocked For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (GPRS, 0, NotSerialized)
                {
                    ADBG (Concatenate ("GPRS Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (PGRT))
                    {
                        If ((PGRT == Zero))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C != 0x02))
                        {
                            ADBG (Concatenate ("Skiping D3 Flow as D3Cold support is Disable for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            ADBG (Concatenate ("Skiping D3 Flow for Storage Device Mapped under VMD connected to ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (PSTA, 0, NotSerialized)
                {
                    ADBG (Concatenate ("PSTA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (\PIN.STA (RSTG))
                    {
                        ADBG (Concatenate ("PSTA OFF For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                    Else
                    {
                        ADBG (Concatenate ("PSTA ON For", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (One)
                    }
                }

                Method (PON, 0, NotSerialized)
                {
                    ADBG (Concatenate ("PON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (WAKG))
                    {
                        If ((WAKG != Zero))
                        {
                            \_SB.SHPO (WAKG, One)
                            \_SB.CAGS (WAKG)
                            ADBG (Concatenate ("WAKG: set GPIO mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                        }
                    }

                    If (CondRefOf (PWRG))
                    {
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < PDOD))
                                {
                                    Sleep ((PDOD - Local0))
                                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Sleep time : ", ToHexString ((PDOD - Local0))))
                                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Local0 time : ", ToHexString (Local0)))
                                }

                                WOFF = Zero
                            }
                        }

                        ADBG (Concatenate ("Rtd3Pcie Generic _ON PDOD time : ", ToHexString (PDOD)))
                        ADBG (Concatenate ("Rtd3Pcie Generic _ON Current time : ", ToHexString (Timer)))
                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POFF, 0, NotSerialized)
                {
                    ADBG (Concatenate ("POFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Local1 = (LNRD / 0x03E8)
                    Sleep (Local1)
                    \PIN.ON (RSTG)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                    }

                    If (CondRefOf (PWRG))
                    {
                        If ((GPPR () == One))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                            ADBG (Concatenate ("WAKG: set ACPI mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                        }
                    }

                    ADBG (Concatenate ("Rtd3Pcie _OFF TOFF time : ", ToHexString (WOFF)))
                }

                Method (PRST, 1, Serialized)
                {
                    ADBG (Concatenate ("PRST Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((Arg0 == One))
                    {
                        \PIN.ON (RSTG)
                    }
                    Else
                    {
                        \PIN.OFF (RSTG)
                    }
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (UPRD, 1, Serialized)
                {
                    If ((Arg0 <= 0x2710))
                    {
                        LNRD = Arg0
                    }

                    Return (LNRD) /* \_SB_.PC00.RP01.LNRD */
                }

                Method (PCPR, 1, Serialized)
                {
                    If ((Arg0 == 0x80000000))
                    {
                        PWRR = One
                        Return (0x02)
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        PWRR = Zero
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (\SCED))
                {
                    If ((\SCED == One))
                    {
                        Method (ADSD, 0, NotSerialized)
                        {
                            ADBG ("Hot Plug Support Enable for SD Card Reader and SD Host Controller")
                            Return (Package (0x04)
                            {
                                ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4") /* Unknown UUID */, 
                                Package (0x01)
                                {
                                    Package (0x02)
                                    {
                                        "HotPlugSupportInD3", 
                                        One
                                    }
                                }, 

                                ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389") /* Unknown UUID */, 
                                Package (0x02)
                                {
                                    Package (0x02)
                                    {
                                        "ExternalFacingPort", 
                                        One
                                    }, 

                                    Package (0x02)
                                    {
                                        "UID", 
                                        Zero
                                    }
                                }
                            })
                        }

                        Scope (\_SB.PC00.RP01.PXSX)
                        {
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                ADBG ("_RMV method called for SD Host Controller")
                                Return (One)
                            }
                        }
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP05))
    {
        Scope (\_SB.PC00.RP05)
        {
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = SSDR /* External reference */
            RSTG [One] = SDRP /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = SSDP /* External reference */
            PWRG [One] = SDPP /* External reference */
            Name (WAKG, Zero)
            WAKG = RW05 /* External reference */
            Name (SCLK, Zero)
            SCLK = 0x06
            Name (WAKP, Zero)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (LNRD, Zero)
            Name (PWRR, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                ADBG (Concatenate ("_S0W For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (RD3C))
                {
                    If ((RD3C == 0x02))
                    {
                        ADBG (Concatenate ("_S0W - D3 Cold Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (0x04)
                    }
                }

                ADBG (Concatenate ("_S0W - D0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                Return (Zero)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                ADBG (Concatenate ("_DSW For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (Arg1)
                {
                    WKEN = One
                    ADBG (Concatenate ("_DSW Sx Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                    ADBG (Concatenate ("_DSW D3 Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                }
                Else
                {
                    WKEN = Zero
                    ADBG (Concatenate ("_DSW D0 Wake Disable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                }
            }

            Method (PPS0, 0, Serialized)
            {
                ADBG (Concatenate ("PPS0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
            }

            Method (PPS3, 0, Serialized)
            {
                ADBG (Concatenate ("PPS3 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("PXP _STA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((VDID == 0xFFFFFFFF))
                    {
                        ADBG ("_STA return 0 as VDID = 0xFFFFFFFF")
                        Return (Zero)
                    }

                    If ((GPRS () == Zero))
                    {
                        Return (Zero)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    ADBG (Concatenate ("PXP _ON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((VDID == 0xFFFFFFFF))
                    {
                        ADBG ("_ON return as VDID = 0xFFFFFFFF")
                    }
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        PON ()
                        L23D ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    ADBG (Concatenate ("PXP _OFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((VDID == 0xFFFFFFFF))
                    {
                        ADBG ("_OFF return as VDID = 0xFFFFFFFF")
                    }
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        DL23 ()
                        POFF ()
                    }
                }
            }

            Method (GPPR, 0, NotSerialized)
            {
                ADBG (Concatenate ("GPPR Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (WAKP))
                {
                    If (((WAKP != Zero) && (WKEN == Zero)))
                    {
                        ADBG (Concatenate ("WAKE enable and keep CIO power on for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                If (CondRefOf (PWRR))
                {
                    If ((PWRR != Zero))
                    {
                        ADBG (Concatenate ("PCIe slot power removal blocked For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (GPRS, 0, NotSerialized)
            {
                ADBG (Concatenate ("GPRS Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (PGRT))
                {
                    If ((PGRT == Zero))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (RD3C))
                {
                    If ((RD3C != 0x02))
                    {
                        ADBG (Concatenate ("Skiping D3 Flow as D3Cold support is Disable for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        ADBG (Concatenate ("Skiping D3 Flow for Storage Device Mapped under VMD connected to ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (PSTA, 0, NotSerialized)
            {
                ADBG (Concatenate ("PSTA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (\PIN.STA (RSTG))
                {
                    ADBG (Concatenate ("PSTA OFF For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (Zero)
                }
                Else
                {
                    ADBG (Concatenate ("PSTA ON For", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                ADBG (Concatenate ("PON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (WAKG))
                {
                    If ((WAKG != Zero))
                    {
                        \_SB.SHPO (WAKG, One)
                        \_SB.CAGS (WAKG)
                        ADBG (Concatenate ("WAKG: set GPIO mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                If (CondRefOf (PWRG))
                {
                    If (CondRefOf (WOFF))
                    {
                        If ((WOFF != Zero))
                        {
                            Local0 = ((Timer - WOFF) / 0x2710)
                            If ((Local0 < PDOD))
                            {
                                Sleep ((PDOD - Local0))
                                ADBG (Concatenate ("Rtd3Pcie Generic _ON Sleep time : ", ToHexString ((PDOD - Local0))))
                                ADBG (Concatenate ("Rtd3Pcie Generic _ON Local0 time : ", ToHexString (Local0)))
                            }

                            WOFF = Zero
                        }
                    }

                    ADBG (Concatenate ("Rtd3Pcie Generic _ON PDOD time : ", ToHexString (PDOD)))
                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Current time : ", ToHexString (Timer)))
                    \PIN.ON (PWRG)
                    Sleep (PEP0)
                }

                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, One)
                }

                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                ADBG (Concatenate ("POFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                Local1 = (LNRD / 0x03E8)
                Sleep (Local1)
                \PIN.ON (RSTG)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                }

                If (CondRefOf (PWRG))
                {
                    If ((GPPR () == One))
                    {
                        \PIN.OFF (PWRG)
                    }

                    If (CondRefOf (WOFF))
                    {
                        WOFF = Timer
                    }
                }

                If (CondRefOf (WAKG))
                {
                    If (((WAKG != Zero) && WKEN))
                    {
                        \_SB.SHPO (WAKG, Zero)
                        ADBG (Concatenate ("WAKG: set ACPI mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                ADBG (Concatenate ("Rtd3Pcie _OFF TOFF time : ", ToHexString (WOFF)))
            }

            Method (PRST, 1, Serialized)
            {
                ADBG (Concatenate ("PRST Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If ((Arg0 == One))
                {
                    \PIN.ON (RSTG)
                }
                Else
                {
                    \PIN.OFF (RSTG)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (UPRD, 1, Serialized)
            {
                If ((Arg0 <= 0x2710))
                {
                    LNRD = Arg0
                }

                Return (LNRD) /* \_SB_.PC00.RP05.LNRD */
            }

            Method (PCPR, 1, Serialized)
            {
                If ((Arg0 == 0x80000000))
                {
                    PWRR = One
                    Return (0x02)
                }
                ElseIf ((Arg0 == Zero))
                {
                    PWRR = Zero
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((\_SB.PC00.RP05.PXSX.PNVM () || \_SB.PC00.RP05.PXSX.PAHC ()))
            {
                Scope (\_SB.PC00.RP05.PXSX)
                {
                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        ADBG (Concatenate ("_S0W For Child Storage Device Of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If (CondRefOf (^^RD3C))
                        {
                            If ((^^RD3C == 0x02))
                            {
                                ADBG (Concatenate ("_S0W - D3 Cold Enable For Child Device of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                                Return (0x04)
                            }
                            ElseIf ((^^RD3C == Zero))
                            {
                                ADBG (Concatenate ("_S0W - D3 Disable For Child Device of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                                Return (Zero)
                            }
                        }

                        ADBG (Concatenate ("_S0W - D3 Hot Enable For Child Device of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (0x03)
                    }

                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (^^_PR0 ())
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (^^_PR3 ())
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        ADBG (Concatenate ("Storage Child Device _PS0 for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        ADBG (Concatenate ("Storage Child Device _PS3 for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP09))
    {
        Scope (\_SB.PC00.RP09)
        {
            Name (RSTG, Package (0x02)
            {
                Zero, 
                Zero
            })
            RSTG [Zero] = SD2R /* External reference */
            RSTG [One] = SDR1 /* External reference */
            Name (PWRG, Package (0x02)
            {
                Zero, 
                Zero
            })
            PWRG [Zero] = SD2P /* External reference */
            PWRG [One] = SDP1 /* External reference */
            Name (WAKG, Zero)
            WAKG = RW09 /* External reference */
            Name (SCLK, Zero)
            SCLK = One
            Name (WAKP, Zero)
            Name (WKEN, Zero)
            Name (WOFF, Zero)
            Name (LNRD, Zero)
            Name (PWRR, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                ADBG (Concatenate ("_S0W For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (RD3C))
                {
                    If ((RD3C == 0x02))
                    {
                        ADBG (Concatenate ("_S0W - D3 Cold Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (0x04)
                    }
                }

                ADBG (Concatenate ("_S0W - D0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                Return (Zero)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                ADBG (Concatenate ("_DSW For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (Arg1)
                {
                    WKEN = One
                    ADBG (Concatenate ("_DSW Sx Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = One
                    ADBG (Concatenate ("_DSW D3 Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                }
                Else
                {
                    WKEN = Zero
                    ADBG (Concatenate ("_DSW D0 Wake Disable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                }
            }

            Method (PPS0, 0, Serialized)
            {
                ADBG (Concatenate ("PPS0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
            }

            Method (PPS3, 0, Serialized)
            {
                ADBG (Concatenate ("PPS3 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    ADBG (Concatenate ("PXP _STA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((VDID == 0xFFFFFFFF))
                    {
                        ADBG ("_STA return 0 as VDID = 0xFFFFFFFF")
                        Return (Zero)
                    }

                    If ((GPRS () == Zero))
                    {
                        Return (Zero)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    ADBG (Concatenate ("PXP _ON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((VDID == 0xFFFFFFFF))
                    {
                        ADBG ("_ON return as VDID = 0xFFFFFFFF")
                    }
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        PON ()
                        L23D ()
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    ADBG (Concatenate ("PXP _OFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((VDID == 0xFFFFFFFF))
                    {
                        ADBG ("_OFF return as VDID = 0xFFFFFFFF")
                    }
                    ElseIf ((GPRS () == Zero)){}
                    Else
                    {
                        DL23 ()
                        POFF ()
                    }
                }
            }

            Method (GPPR, 0, NotSerialized)
            {
                ADBG (Concatenate ("GPPR Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (WAKP))
                {
                    If (((WAKP != Zero) && (WKEN == Zero)))
                    {
                        ADBG (Concatenate ("WAKE enable and keep CIO power on for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                If (CondRefOf (PWRR))
                {
                    If ((PWRR != Zero))
                    {
                        ADBG (Concatenate ("PCIe slot power removal blocked For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (GPRS, 0, NotSerialized)
            {
                ADBG (Concatenate ("GPRS Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (PGRT))
                {
                    If ((PGRT == Zero))
                    {
                        Return (Zero)
                    }
                }

                If (CondRefOf (RD3C))
                {
                    If ((RD3C != 0x02))
                    {
                        ADBG (Concatenate ("Skiping D3 Flow as D3Cold support is Disable for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                If (CondRefOf (PRMV))
                {
                    If ((PRMV == One))
                    {
                        ADBG (Concatenate ("Skiping D3 Flow for Storage Device Mapped under VMD connected to ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (PSTA, 0, NotSerialized)
            {
                ADBG (Concatenate ("PSTA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (\PIN.STA (RSTG))
                {
                    ADBG (Concatenate ("PSTA OFF For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (Zero)
                }
                Else
                {
                    ADBG (Concatenate ("PSTA ON For", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (One)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                ADBG (Concatenate ("PON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If (CondRefOf (WAKG))
                {
                    If ((WAKG != Zero))
                    {
                        \_SB.SHPO (WAKG, One)
                        \_SB.CAGS (WAKG)
                        ADBG (Concatenate ("WAKG: set GPIO mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                If (CondRefOf (PWRG))
                {
                    If (CondRefOf (WOFF))
                    {
                        If ((WOFF != Zero))
                        {
                            Local0 = ((Timer - WOFF) / 0x2710)
                            If ((Local0 < PDOD))
                            {
                                Sleep ((PDOD - Local0))
                                ADBG (Concatenate ("Rtd3Pcie Generic _ON Sleep time : ", ToHexString ((PDOD - Local0))))
                                ADBG (Concatenate ("Rtd3Pcie Generic _ON Local0 time : ", ToHexString (Local0)))
                            }

                            WOFF = Zero
                        }
                    }

                    ADBG (Concatenate ("Rtd3Pcie Generic _ON PDOD time : ", ToHexString (PDOD)))
                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Current time : ", ToHexString (Timer)))
                    \PIN.ON (PWRG)
                    Sleep (PEP0)
                }

                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, One)
                }

                \PIN.OFF (RSTG)
            }

            Method (POFF, 0, NotSerialized)
            {
                ADBG (Concatenate ("POFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                Local1 = (LNRD / 0x03E8)
                Sleep (Local1)
                \PIN.ON (RSTG)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, Zero)
                }

                If (CondRefOf (PWRG))
                {
                    If ((GPPR () == One))
                    {
                        \PIN.OFF (PWRG)
                    }

                    If (CondRefOf (WOFF))
                    {
                        WOFF = Timer
                    }
                }

                If (CondRefOf (WAKG))
                {
                    If (((WAKG != Zero) && WKEN))
                    {
                        \_SB.SHPO (WAKG, Zero)
                        ADBG (Concatenate ("WAKG: set ACPI mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                ADBG (Concatenate ("Rtd3Pcie _OFF TOFF time : ", ToHexString (WOFF)))
            }

            Method (PRST, 1, Serialized)
            {
                ADBG (Concatenate ("PRST Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                If ((Arg0 == One))
                {
                    \PIN.ON (RSTG)
                }
                Else
                {
                    \PIN.OFF (RSTG)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (UPRD, 1, Serialized)
            {
                If ((Arg0 <= 0x2710))
                {
                    LNRD = Arg0
                }

                Return (LNRD) /* \_SB_.PC00.RP09.LNRD */
            }

            Method (PCPR, 1, Serialized)
            {
                If ((Arg0 == 0x80000000))
                {
                    PWRR = One
                    Return (0x02)
                }
                ElseIf ((Arg0 == Zero))
                {
                    PWRR = Zero
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((\_SB.PC00.RP09.PXSX.PNVM () || \_SB.PC00.RP09.PXSX.PAHC ()))
            {
                Scope (\_SB.PC00.RP09.PXSX)
                {
                    Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                    {
                        ADBG (Concatenate ("_S0W For Child Storage Device Of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If (CondRefOf (^^RD3C))
                        {
                            If ((^^RD3C == 0x02))
                            {
                                ADBG (Concatenate ("_S0W - D3 Cold Enable For Child Device of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                                Return (0x04)
                            }
                            ElseIf ((^^RD3C == Zero))
                            {
                                ADBG (Concatenate ("_S0W - D3 Disable For Child Device of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                    Concatenate (" And Index : ", ToHexString (SLOT))))))
                                Return (Zero)
                            }
                        }

                        ADBG (Concatenate ("_S0W - D3 Hot Enable For Child Device of ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (0x03)
                    }

                    Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                    {
                        Return (^^_PR0 ())
                    }

                    Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                    {
                        Return (^^_PR3 ())
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        ADBG (Concatenate ("Storage Child Device _PS0 for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        ADBG (Concatenate ("Storage Child Device _PS3 for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }
            }
        }
    }

    If ((P2RN == 0x0B))
    {
        If (CondRefOf (\_SB.PC00.RP11))
        {
            Scope (\_SB.PC00.RP11)
            {
                Name (RSTG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                RSTG [Zero] = P2RG /* External reference */
                RSTG [One] = P2RP /* External reference */
                Name (PWRG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PWRG [Zero] = P2PG /* External reference */
                PWRG [One] = P2EP /* External reference */
                Name (WAKG, Zero)
                WAKG = RW11 /* External reference */
                Name (SCLK, Zero)
                SCLK = Zero
                Name (WAKP, Zero)
                Name (WKEN, Zero)
                Name (WOFF, Zero)
                Name (LNRD, Zero)
                Name (PWRR, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    ADBG (Concatenate ("_S0W For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C == 0x02))
                        {
                            ADBG (Concatenate ("_S0W - D3 Cold Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (0x04)
                        }
                    }

                    ADBG (Concatenate ("_S0W - D0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (Zero)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("_DSW For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (Arg1)
                    {
                        WKEN = One
                        ADBG (Concatenate ("_DSW Sx Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                        ADBG (Concatenate ("_DSW D3 Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                    Else
                    {
                        WKEN = Zero
                        ADBG (Concatenate ("_DSW D0 Wake Disable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                Method (PPS0, 0, Serialized)
                {
                    ADBG (Concatenate ("PPS0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                    ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
                }

                Method (PPS3, 0, Serialized)
                {
                    ADBG (Concatenate ("PPS3 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                    ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ADBG (Concatenate ("PXP _STA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_STA return 0 as VDID = 0xFFFFFFFF")
                            Return (Zero)
                        }

                        If ((GPRS () == Zero))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        ADBG (Concatenate ("PXP _ON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_ON return as VDID = 0xFFFFFFFF")
                        }
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            PON ()
                            L23D ()
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        ADBG (Concatenate ("PXP _OFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_OFF return as VDID = 0xFFFFFFFF")
                        }
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            DL23 ()
                            POFF ()
                        }
                    }
                }

                Method (GPPR, 0, NotSerialized)
                {
                    ADBG (Concatenate ("GPPR Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (WAKP))
                    {
                        If (((WAKP != Zero) && (WKEN == Zero)))
                        {
                            ADBG (Concatenate ("WAKE enable and keep CIO power on for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PWRR))
                    {
                        If ((PWRR != Zero))
                        {
                            ADBG (Concatenate ("PCIe slot power removal blocked For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (GPRS, 0, NotSerialized)
                {
                    ADBG (Concatenate ("GPRS Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (PGRT))
                    {
                        If ((PGRT == Zero))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C != 0x02))
                        {
                            ADBG (Concatenate ("Skiping D3 Flow as D3Cold support is Disable for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            ADBG (Concatenate ("Skiping D3 Flow for Storage Device Mapped under VMD connected to ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (PSTA, 0, NotSerialized)
                {
                    ADBG (Concatenate ("PSTA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (\PIN.STA (RSTG))
                    {
                        ADBG (Concatenate ("PSTA OFF For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                    Else
                    {
                        ADBG (Concatenate ("PSTA ON For", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (One)
                    }
                }

                Method (PON, 0, NotSerialized)
                {
                    ADBG (Concatenate ("PON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (WAKG))
                    {
                        If ((WAKG != Zero))
                        {
                            \_SB.SHPO (WAKG, One)
                            \_SB.CAGS (WAKG)
                            ADBG (Concatenate ("WAKG: set GPIO mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                        }
                    }

                    If (CondRefOf (PWRG))
                    {
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < PDOD))
                                {
                                    Sleep ((PDOD - Local0))
                                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Sleep time : ", ToHexString ((PDOD - Local0))))
                                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Local0 time : ", ToHexString (Local0)))
                                }

                                WOFF = Zero
                            }
                        }

                        ADBG (Concatenate ("Rtd3Pcie Generic _ON PDOD time : ", ToHexString (PDOD)))
                        ADBG (Concatenate ("Rtd3Pcie Generic _ON Current time : ", ToHexString (Timer)))
                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POFF, 0, NotSerialized)
                {
                    ADBG (Concatenate ("POFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Local1 = (LNRD / 0x03E8)
                    Sleep (Local1)
                    \PIN.ON (RSTG)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                    }

                    If (CondRefOf (PWRG))
                    {
                        If ((GPPR () == One))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                            ADBG (Concatenate ("WAKG: set ACPI mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                        }
                    }

                    ADBG (Concatenate ("Rtd3Pcie _OFF TOFF time : ", ToHexString (WOFF)))
                }

                Method (PRST, 1, Serialized)
                {
                    ADBG (Concatenate ("PRST Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((Arg0 == One))
                    {
                        \PIN.ON (RSTG)
                    }
                    Else
                    {
                        \PIN.OFF (RSTG)
                    }
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (UPRD, 1, Serialized)
                {
                    If ((Arg0 <= 0x2710))
                    {
                        LNRD = Arg0
                    }

                    Return (LNRD) /* \_SB_.PC00.RP11.LNRD */
                }

                Method (PCPR, 1, Serialized)
                {
                    If ((Arg0 == 0x80000000))
                    {
                        PWRR = One
                        Return (0x02)
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        PWRR = Zero
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }

    If ((P3RN == 0x0C))
    {
        If (CondRefOf (\_SB.PC00.RP12))
        {
            Scope (\_SB.PC00.RP12)
            {
                Name (RSTG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                RSTG [Zero] = P3RG /* External reference */
                RSTG [One] = P3RP /* External reference */
                Name (PWRG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                PWRG [Zero] = P3PG /* External reference */
                PWRG [One] = P3EP /* External reference */
                Name (WAKG, Zero)
                WAKG = RW12 /* External reference */
                Name (SCLK, Zero)
                SCLK = 0x07
                Name (WAKP, Zero)
                Name (WKEN, Zero)
                Name (WOFF, Zero)
                Name (LNRD, Zero)
                Name (PWRR, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    ADBG (Concatenate ("_S0W For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C == 0x02))
                        {
                            ADBG (Concatenate ("_S0W - D3 Cold Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (0x04)
                        }
                    }

                    ADBG (Concatenate ("_S0W - D0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Return (Zero)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    ADBG (Concatenate ("_DSW For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (Arg1)
                    {
                        WKEN = One
                        ADBG (Concatenate ("_DSW Sx Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                        ADBG (Concatenate ("_DSW D3 Wake Enable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                    Else
                    {
                        WKEN = Zero
                        ADBG (Concatenate ("_DSW D0 Wake Disable For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                    }
                }

                Method (PPS0, 0, Serialized)
                {
                    ADBG (Concatenate ("PPS0 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                    ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
                }

                Method (PPS3, 0, Serialized)
                {
                    ADBG (Concatenate ("PPS3 For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    ADBG (Concatenate ("VDID - ", ToHexString (VDID)))
                    ADBG (Concatenate ("Power Stat: ", ToHexString (D3HT)))
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ADBG (Concatenate ("PXP _STA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_STA return 0 as VDID = 0xFFFFFFFF")
                            Return (Zero)
                        }

                        If ((GPRS () == Zero))
                        {
                            Return (Zero)
                        }

                        Return (PSTA ())
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        ADBG (Concatenate ("PXP _ON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_ON return as VDID = 0xFFFFFFFF")
                        }
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            PON ()
                            L23D ()
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        ADBG (Concatenate ("PXP _OFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        If ((VDID == 0xFFFFFFFF))
                        {
                            ADBG ("_OFF return as VDID = 0xFFFFFFFF")
                        }
                        ElseIf ((GPRS () == Zero)){}
                        Else
                        {
                            DL23 ()
                            POFF ()
                        }
                    }
                }

                Method (GPPR, 0, NotSerialized)
                {
                    ADBG (Concatenate ("GPPR Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (WAKP))
                    {
                        If (((WAKP != Zero) && (WKEN == Zero)))
                        {
                            ADBG (Concatenate ("WAKE enable and keep CIO power on for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PWRR))
                    {
                        If ((PWRR != Zero))
                        {
                            ADBG (Concatenate ("PCIe slot power removal blocked For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (GPRS, 0, NotSerialized)
                {
                    ADBG (Concatenate ("GPRS Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (PGRT))
                    {
                        If ((PGRT == Zero))
                        {
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (RD3C))
                    {
                        If ((RD3C != 0x02))
                        {
                            ADBG (Concatenate ("Skiping D3 Flow as D3Cold support is Disable for ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            ADBG (Concatenate ("Skiping D3 Flow for Storage Device Mapped under VMD connected to ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (PSTA, 0, NotSerialized)
                {
                    ADBG (Concatenate ("PSTA Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (\PIN.STA (RSTG))
                    {
                        ADBG (Concatenate ("PSTA OFF For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (Zero)
                    }
                    Else
                    {
                        ADBG (Concatenate ("PSTA ON For", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                            Concatenate (" And Index : ", ToHexString (SLOT))))))
                        Return (One)
                    }
                }

                Method (PON, 0, NotSerialized)
                {
                    ADBG (Concatenate ("PON Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If (CondRefOf (WAKG))
                    {
                        If ((WAKG != Zero))
                        {
                            \_SB.SHPO (WAKG, One)
                            \_SB.CAGS (WAKG)
                            ADBG (Concatenate ("WAKG: set GPIO mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                        }
                    }

                    If (CondRefOf (PWRG))
                    {
                        If (CondRefOf (WOFF))
                        {
                            If ((WOFF != Zero))
                            {
                                Local0 = ((Timer - WOFF) / 0x2710)
                                If ((Local0 < PDOD))
                                {
                                    Sleep ((PDOD - Local0))
                                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Sleep time : ", ToHexString ((PDOD - Local0))))
                                    ADBG (Concatenate ("Rtd3Pcie Generic _ON Local0 time : ", ToHexString (Local0)))
                                }

                                WOFF = Zero
                            }
                        }

                        ADBG (Concatenate ("Rtd3Pcie Generic _ON PDOD time : ", ToHexString (PDOD)))
                        ADBG (Concatenate ("Rtd3Pcie Generic _ON Current time : ", ToHexString (Timer)))
                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, One)
                    }

                    \PIN.OFF (RSTG)
                }

                Method (POFF, 0, NotSerialized)
                {
                    ADBG (Concatenate ("POFF Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    Local1 = (LNRD / 0x03E8)
                    Sleep (Local1)
                    \PIN.ON (RSTG)
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, Zero)
                    }

                    If (CondRefOf (PWRG))
                    {
                        If ((GPPR () == One))
                        {
                            \PIN.OFF (PWRG)
                        }

                        If (CondRefOf (WOFF))
                        {
                            WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (((WAKG != Zero) && WKEN))
                        {
                            \_SB.SHPO (WAKG, Zero)
                            ADBG (Concatenate ("WAKG: set ACPI mode ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                                Concatenate (" And Index : ", ToHexString (SLOT))))))
                        }
                    }

                    ADBG (Concatenate ("Rtd3Pcie _OFF TOFF time : ", ToHexString (WOFF)))
                }

                Method (PRST, 1, Serialized)
                {
                    ADBG (Concatenate ("PRST Entry For ", Concatenate ("PCIE RP", Concatenate (Concatenate (" Type (2: PCH, 4: CPU) : ", ToHexString (PRTP)), 
                        Concatenate (" And Index : ", ToHexString (SLOT))))))
                    If ((Arg0 == One))
                    {
                        \PIN.ON (RSTG)
                    }
                    Else
                    {
                        \PIN.OFF (RSTG)
                    }
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        PXP
                    })
                }

                Method (UPRD, 1, Serialized)
                {
                    If ((Arg0 <= 0x2710))
                    {
                        LNRD = Arg0
                    }

                    Return (LNRD) /* \_SB_.PC00.RP12.LNRD */
                }

                Method (PCPR, 1, Serialized)
                {
                    If ((Arg0 == 0x80000000))
                    {
                        PWRR = One
                        Return (0x02)
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        PWRR = Zero
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }

    If ((CondRefOf (VMDE) && CondRefOf (\_SB.PC00.VMD0)))
    {
        Scope (\_SB.PC00)
        {
            If ((VMDE == One))
            {
                ADBG ("VMD is Enabled")
                Scope (VMD0)
                {
                    If (CondRefOf (VMPP))
                    {
                        If ((VMPP & One))
                        {
                            Scope (PP01)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x02))
                        {
                            Scope (PP02)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x04))
                        {
                            Scope (PP03)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x08))
                        {
                            Scope (PP04)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x10))
                        {
                            Scope (PP05)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x20))
                        {
                            Scope (PP06)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x40))
                        {
                            Scope (PP07)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x80))
                        {
                            Scope (PP08)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x0100))
                        {
                            Scope (PP09)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x0200))
                        {
                            Scope (PP10)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x0400))
                        {
                            Scope (PP11)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x0800))
                        {
                            Scope (PP12)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x1000))
                        {
                            Scope (PP13)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x2000))
                        {
                            Scope (PP14)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x4000))
                        {
                            Scope (PP15)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x8000))
                        {
                            Scope (PP16)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00010000))
                        {
                            Scope (PP17)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00020000))
                        {
                            Scope (PP18)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00040000))
                        {
                            Scope (PP19)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00080000))
                        {
                            Scope (PP20)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00100000))
                        {
                            Scope (PP21)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00200000))
                        {
                            Scope (PP22)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00400000))
                        {
                            Scope (PP23)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMPP & 0x00800000))
                        {
                            Scope (PP24)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (CondRefOf (VMSP))
                    {
                        If ((VMSP & 0x0100))
                        {
                            Scope (SP01)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x0200))
                        {
                            Scope (SP02)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x0400))
                        {
                            Scope (SP03)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x0800))
                        {
                            Scope (SP04)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x1000))
                        {
                            Scope (SP05)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x2000))
                        {
                            Scope (SP06)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x4000))
                        {
                            Scope (SP07)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x8000))
                        {
                            Scope (SP08)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & One))
                        {
                            Scope (SP09)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x02))
                        {
                            Scope (SP10)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x04))
                        {
                            Scope (SP11)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        If ((VMSP & 0x08))
                        {
                            Scope (SP12)
                            {
                                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                                {
                                    If (CondRefOf (\STD3))
                                    {
                                        If ((\STD3 == 0x02))
                                        {
                                            ADBG (Concatenate ("_S0W - Storage D3 Status : ", ToHexString (\STD3)))
                                            Return (0x04)
                                        }

                                        Return (0x03)
                                    }

                                    Return (0x03)
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }

                                        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                        {
                                            Return (Package (0x01)
                                            {
                                                NVPR
                                            })
                                        }
                                    }
                                }

                                If (CondRefOf (\STD3))
                                {
                                    If ((\STD3 == 0x02))
                                    {
                                        PowerResource (NVPR, 0x04, 0x0000)
                                        {
                                            Name (_STA, One)  // _STA: Status
                                            Method (_ON, 0, Serialized)  // _ON_: Power On
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe ONr:", ToHexString (_ADR ())))
                                                    VPON ()
                                                    _STA = One
                                                }
                                            }

                                            Method (_OFF, 0, Serialized)  // _OFF: Power Off
                                            {
                                                If (!VR3D ())
                                                {
                                                    ADBG (Concatenate ("VMD PCIe OFFr:", ToHexString (_ADR ())))
                                                    VPOF ()
                                                    _STA = Zero
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (VOL0)
                    {
                        Name (_ADR, 0x0080FFFF)  // _ADR: Address
                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                {
                                    Return (Package (0x01)
                                    {
                                        V0PR
                                    })
                                }

                                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                {
                                    Return (Package (0x01)
                                    {
                                        V0PR
                                    })
                                }
                            }
                        }

                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                PowerResource (V0PR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                                    {
                                        ADBG ("VMD VOL0._ON")
                                        If (VD3A ())
                                        {
                                            ^^^VLON (VV0S, VV0D)
                                            _STA = One
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }

                                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                                    {
                                        ADBG ("VMD VOL0._OFF")
                                        If (VD3A ())
                                        {
                                            ^^^VLOF (VV0S, VV0D)
                                            _STA = Zero
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (VOL1)
                    {
                        Name (_ADR, 0x0081FFFF)  // _ADR: Address
                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                {
                                    Return (Package (0x01)
                                    {
                                        V1PR
                                    })
                                }

                                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                {
                                    Return (Package (0x01)
                                    {
                                        V1PR
                                    })
                                }
                            }
                        }

                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                PowerResource (V1PR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                                    {
                                        ADBG ("VMD VOL1._ON")
                                        If (VD3A ())
                                        {
                                            ^^^VLON (VV1S, VV1D)
                                            _STA = One
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }

                                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                                    {
                                        ADBG ("VMD VOL1._OFF")
                                        If (VD3A ())
                                        {
                                            ^^^VLOF (VV1S, VV1D)
                                            _STA = Zero
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (VOL2)
                    {
                        Name (_ADR, 0x0082FFFF)  // _ADR: Address
                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                {
                                    Return (Package (0x01)
                                    {
                                        V2PR
                                    })
                                }

                                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                {
                                    Return (Package (0x01)
                                    {
                                        V2PR
                                    })
                                }
                            }
                        }

                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                PowerResource (V2PR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                                    {
                                        ADBG ("VMD VOL2._ON")
                                        If (VD3A ())
                                        {
                                            ^^^VLON (VV2S, VV2D)
                                            _STA = One
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }

                                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                                    {
                                        ADBG ("VMD VOL2._OFF")
                                        If (VD3A ())
                                        {
                                            ^^^VLOF (VV2S, VV2D)
                                            _STA = Zero
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Device (VOL3)
                    {
                        Name (_ADR, 0x0083FFFF)  // _ADR: Address
                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                                {
                                    Return (Package (0x01)
                                    {
                                        V3PR
                                    })
                                }

                                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                                {
                                    Return (Package (0x01)
                                    {
                                        V3PR
                                    })
                                }
                            }
                        }

                        If ((CondRefOf (\RTD3) && CondRefOf (\STD3)))
                        {
                            If (((\RTD3 != Zero) && (\STD3 == 0x02)))
                            {
                                PowerResource (V3PR, 0x04, 0x0000)
                                {
                                    Name (_STA, One)  // _STA: Status
                                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                                    {
                                        ADBG ("VMD VOL3._ON")
                                        If (VD3A ())
                                        {
                                            ^^^VLON (VV3S, VV3D)
                                            _STA = One
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }

                                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                                    {
                                        ADBG ("VMD VOL3._OFF")
                                        If (VD3A ())
                                        {
                                            ^^^VLOF (VV3S, VV3D)
                                            _STA = Zero
                                        }
                                        Else
                                        {
                                            ADBG ("Global RTD3 lock")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (\_GPE)
    {
        If (CondRefOf (\_SB.PC00.RP11.WAKG))
        {
            If ((\_SB.PC00.RP11.WAKG != Zero))
            {
                Method (_L38, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                {
                    ADBG ("_L38 RP11 SLOT")
                    \_SB.SHPO (\_SB.PC00.RP11.WAKG, One)
                    Notify (\_SB.PC00.RP11, 0x02) // Device Wake
                }
            }
        }

        If (CondRefOf (\_SB.PC00.RP12.WAKG))
        {
            If ((\_SB.PC00.RP12.WAKG != Zero))
            {
                Method (_L39, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                {
                    ADBG ("_L39 RP12 SLOT")
                    \_SB.SHPO (\_SB.PC00.RP12.WAKG, One)
                    Notify (\_SB.PC00.RP12, 0x02) // Device Wake
                }
            }
        }

        Method (AL6F, 0, NotSerialized)
        {
            ADBG ("AL6F Start!")
            If (CondRefOf (\_SB.PC00.RP01.WAKG))
            {
                If ((\_SB.PC00.RP01.WAKG != Zero))
                {
                    If (\_SB.ISME (\_SB.PC00.RP01.WAKG))
                    {
                        ADBG (Concatenate (" Wake event  ", \_SB.PC00.RP01.WAKG))
                        \_SB.SHPO (\_SB.PC00.RP01.WAKG, One)
                        Notify (\_SB.PC00.RP01, 0x02) // Device Wake
                        \_SB.CAGS (\_SB.PC00.RP01.WAKG)
                    }
                }
            }

            ADBG ("AL6F End!")
        }
    }

    ADBG ("[PTL UH LP5 RVP3 and RVP4 RTD3 SSDT][AcpiTableExit]")
    Debug = "[PTL UH LP5 RVP3 and RVP4 RTD3 SSDT][AcpiTableExit]"
    Debug = Timer
}

