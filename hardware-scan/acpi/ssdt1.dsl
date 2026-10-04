/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000076C8 (30408)
 *     Revision         0x02
 *     Checksum         0x18
 *     OEM ID           "INTEL "
 *     OEM Table ID     "PepoSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "PepoSsdt", 0x00001000)
{
    External (_SB_.PC00.BTPC, DeviceObj)
    External (_SB_.PC00.CNVW, DeviceObj)
    External (_SB_.PC00.ESE0, DeviceObj)
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.GLAN, DeviceObj)
    External (_SB_.PC00.GNA0, DeviceObj)
    External (_SB_.PC00.HDAS, DeviceObj)
    External (_SB_.PC00.HEC3, DeviceObj)
    External (_SB_.PC00.HECI, DeviceObj)
    External (_SB_.PC00.I2C0, DeviceObj)
    External (_SB_.PC00.I2C1, DeviceObj)
    External (_SB_.PC00.I2C2, DeviceObj)
    External (_SB_.PC00.I2C3, DeviceObj)
    External (_SB_.PC00.I2C4, DeviceObj)
    External (_SB_.PC00.I2C5, DeviceObj)
    External (_SB_.PC00.I2C6, DeviceObj)
    External (_SB_.PC00.I2C7, DeviceObj)
    External (_SB_.PC00.IPU0, DeviceObj)
    External (_SB_.PC00.ISHD, DeviceObj)
    External (_SB_.PC00.NPU0, DeviceObj)
    External (_SB_.PC00.OSE0, DeviceObj)
    External (_SB_.PC00.OSE1, DeviceObj)
    External (_SB_.PC00.PEMC, DeviceObj)
    External (_SB_.PC00.PUF0, DeviceObj)
    External (_SB_.PC00.PUF1, DeviceObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.PRMV, IntObj)
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.RP01.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP01.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP01.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.PRMV, IntObj)
    External (_SB_.PC00.RP02.PXSX, DeviceObj)
    External (_SB_.PC00.RP02.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP02.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP02.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.PRMV, IntObj)
    External (_SB_.PC00.RP03.PXSX, DeviceObj)
    External (_SB_.PC00.RP03.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP03.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP03.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.PRMV, IntObj)
    External (_SB_.PC00.RP04.PXSX, DeviceObj)
    External (_SB_.PC00.RP04.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP04.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP04.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PRMV, IntObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP05.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP05.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.PRMV, IntObj)
    External (_SB_.PC00.RP06.PXSX, DeviceObj)
    External (_SB_.PC00.RP06.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP06.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP06.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.PRMV, IntObj)
    External (_SB_.PC00.RP07.PXSX, DeviceObj)
    External (_SB_.PC00.RP07.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP07.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP07.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP07.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.PRMV, IntObj)
    External (_SB_.PC00.RP08.PXSX, DeviceObj)
    External (_SB_.PC00.RP08.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP08.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP08.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.PRMV, IntObj)
    External (_SB_.PC00.RP09.PXSX, DeviceObj)
    External (_SB_.PC00.RP09.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP09.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP09.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP09.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP09.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.PRMV, IntObj)
    External (_SB_.PC00.RP10.PXSX, DeviceObj)
    External (_SB_.PC00.RP10.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP10.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP10.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP10.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.PRMV, IntObj)
    External (_SB_.PC00.RP11.PXSX, DeviceObj)
    External (_SB_.PC00.RP11.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP11.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP11.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP11.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.PRMV, IntObj)
    External (_SB_.PC00.RP12.PXSX, DeviceObj)
    External (_SB_.PC00.RP12.PXSX.BCCX, FieldUnitObj)
    External (_SB_.PC00.RP12.PXSX.ISGX, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12.PXSX.PAHC, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12.PXSX.PIXX, FieldUnitObj)
    External (_SB_.PC00.RP12.PXSX.PNVM, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12.PXSX.PRES, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP12.PXSX.SCCX, FieldUnitObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.PXSX, DeviceObj)
    External (_SB_.PC00.RP13.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP14.PXSX, DeviceObj)
    External (_SB_.PC00.RP14.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP15.PXSX, DeviceObj)
    External (_SB_.PC00.RP15.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP16.PXSX, DeviceObj)
    External (_SB_.PC00.RP16.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.PXSX, DeviceObj)
    External (_SB_.PC00.RP17.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP18.PXSX, DeviceObj)
    External (_SB_.PC00.RP18.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP19.PXSX, DeviceObj)
    External (_SB_.PC00.RP19.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP20.PXSX, DeviceObj)
    External (_SB_.PC00.RP20.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.PXSX, DeviceObj)
    External (_SB_.PC00.RP21.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP22.PXSX, DeviceObj)
    External (_SB_.PC00.RP22.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP23.PXSX, DeviceObj)
    External (_SB_.PC00.RP23.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP24.PXSX, DeviceObj)
    External (_SB_.PC00.RP24.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP25.PXSX, DeviceObj)
    External (_SB_.PC00.RP25.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP26.PXSX, DeviceObj)
    External (_SB_.PC00.RP26.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP27.PXSX, DeviceObj)
    External (_SB_.PC00.RP27.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PC00.RP28.PXSX, DeviceObj)
    External (_SB_.PC00.RP28.PXSX.PRES, UnknownObj)
    External (_SB_.PC00.SAT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT0, DeviceObj)
    External (_SB_.PC00.SAT0.PRT1, DeviceObj)
    External (_SB_.PC00.SAT0.PRT2, DeviceObj)
    External (_SB_.PC00.SAT0.PRT3, DeviceObj)
    External (_SB_.PC00.SAT0.PRT4, DeviceObj)
    External (_SB_.PC00.SAT0.PRT5, DeviceObj)
    External (_SB_.PC00.SAT0.PRT6, DeviceObj)
    External (_SB_.PC00.SAT0.PRT7, DeviceObj)
    External (_SB_.PC00.SPI0, DeviceObj)
    External (_SB_.PC00.SPI1, DeviceObj)
    External (_SB_.PC00.SPI2, DeviceObj)
    External (_SB_.PC00.THC0, DeviceObj)
    External (_SB_.PC00.THC1, DeviceObj)
    External (_SB_.PC00.UA00, DeviceObj)
    External (_SB_.PC00.UA01, DeviceObj)
    External (_SB_.PC00.UA02, DeviceObj)
    External (_SB_.PC00.VMD0, DeviceObj)
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC02.BTPC, DeviceObj)
    External (_SB_.PC02.CNVW, DeviceObj)
    External (_SB_.PC02.ESE0, DeviceObj)
    External (_SB_.PC02.GFX0, DeviceObj)
    External (_SB_.PC02.GLAN, DeviceObj)
    External (_SB_.PC02.GNA0, DeviceObj)
    External (_SB_.PC02.HDAS, DeviceObj)
    External (_SB_.PC02.HEC3, DeviceObj)
    External (_SB_.PC02.HECI, DeviceObj)
    External (_SB_.PC02.I2C0, DeviceObj)
    External (_SB_.PC02.I2C1, DeviceObj)
    External (_SB_.PC02.I2C2, DeviceObj)
    External (_SB_.PC02.I2C3, DeviceObj)
    External (_SB_.PC02.I2C4, DeviceObj)
    External (_SB_.PC02.I2C5, DeviceObj)
    External (_SB_.PC02.I2C6, DeviceObj)
    External (_SB_.PC02.I2C7, DeviceObj)
    External (_SB_.PC02.IPU0, DeviceObj)
    External (_SB_.PC02.ISHD, DeviceObj)
    External (_SB_.PC02.NPU0, DeviceObj)
    External (_SB_.PC02.OSE0, DeviceObj)
    External (_SB_.PC02.OSE1, DeviceObj)
    External (_SB_.PC02.PEMC, DeviceObj)
    External (_SB_.PC02.PUF0, DeviceObj)
    External (_SB_.PC02.PUF1, DeviceObj)
    External (_SB_.PC02.RP01, DeviceObj)
    External (_SB_.PC02.RP01.PXSX, DeviceObj)
    External (_SB_.PC02.RP01.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP02, DeviceObj)
    External (_SB_.PC02.RP02.PXSX, DeviceObj)
    External (_SB_.PC02.RP02.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP03, DeviceObj)
    External (_SB_.PC02.RP03.PXSX, DeviceObj)
    External (_SB_.PC02.RP03.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP04, DeviceObj)
    External (_SB_.PC02.RP04.PXSX, DeviceObj)
    External (_SB_.PC02.RP04.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP05, DeviceObj)
    External (_SB_.PC02.RP05.PXSX, DeviceObj)
    External (_SB_.PC02.RP05.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP06, DeviceObj)
    External (_SB_.PC02.RP06.PXSX, DeviceObj)
    External (_SB_.PC02.RP06.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP07, DeviceObj)
    External (_SB_.PC02.RP07.PXSX, DeviceObj)
    External (_SB_.PC02.RP07.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP08, DeviceObj)
    External (_SB_.PC02.RP08.PXSX, DeviceObj)
    External (_SB_.PC02.RP08.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP09, DeviceObj)
    External (_SB_.PC02.RP09.PXSX, DeviceObj)
    External (_SB_.PC02.RP09.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP10, DeviceObj)
    External (_SB_.PC02.RP10.PXSX, DeviceObj)
    External (_SB_.PC02.RP10.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP11, DeviceObj)
    External (_SB_.PC02.RP11.PXSX, DeviceObj)
    External (_SB_.PC02.RP11.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP12, DeviceObj)
    External (_SB_.PC02.RP12.PXSX, DeviceObj)
    External (_SB_.PC02.RP12.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP13, DeviceObj)
    External (_SB_.PC02.RP13.PXSX, DeviceObj)
    External (_SB_.PC02.RP13.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP14, DeviceObj)
    External (_SB_.PC02.RP14.PXSX, DeviceObj)
    External (_SB_.PC02.RP14.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP15, DeviceObj)
    External (_SB_.PC02.RP15.PXSX, DeviceObj)
    External (_SB_.PC02.RP15.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP16, DeviceObj)
    External (_SB_.PC02.RP16.PXSX, DeviceObj)
    External (_SB_.PC02.RP16.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP17, DeviceObj)
    External (_SB_.PC02.RP17.PXSX, DeviceObj)
    External (_SB_.PC02.RP17.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP18, DeviceObj)
    External (_SB_.PC02.RP18.PXSX, DeviceObj)
    External (_SB_.PC02.RP18.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP19, DeviceObj)
    External (_SB_.PC02.RP19.PXSX, DeviceObj)
    External (_SB_.PC02.RP19.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP20, DeviceObj)
    External (_SB_.PC02.RP20.PXSX, DeviceObj)
    External (_SB_.PC02.RP20.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP21, DeviceObj)
    External (_SB_.PC02.RP21.PXSX, DeviceObj)
    External (_SB_.PC02.RP21.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP22, DeviceObj)
    External (_SB_.PC02.RP22.PXSX, DeviceObj)
    External (_SB_.PC02.RP22.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP23, DeviceObj)
    External (_SB_.PC02.RP23.PXSX, DeviceObj)
    External (_SB_.PC02.RP23.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP24, DeviceObj)
    External (_SB_.PC02.RP24.PXSX, DeviceObj)
    External (_SB_.PC02.RP24.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP25, DeviceObj)
    External (_SB_.PC02.RP25.PXSX, DeviceObj)
    External (_SB_.PC02.RP25.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP26, DeviceObj)
    External (_SB_.PC02.RP26.PXSX, DeviceObj)
    External (_SB_.PC02.RP26.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP27, DeviceObj)
    External (_SB_.PC02.RP27.PXSX, DeviceObj)
    External (_SB_.PC02.RP27.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.RP28, DeviceObj)
    External (_SB_.PC02.RP28.PXSX, DeviceObj)
    External (_SB_.PC02.RP28.PXSX.PRES, UnknownObj)
    External (_SB_.PC02.SAT0, DeviceObj)
    External (_SB_.PC02.SAT0.PRT0, DeviceObj)
    External (_SB_.PC02.SAT0.PRT1, DeviceObj)
    External (_SB_.PC02.SAT0.PRT2, DeviceObj)
    External (_SB_.PC02.SAT0.PRT3, DeviceObj)
    External (_SB_.PC02.SAT0.PRT4, DeviceObj)
    External (_SB_.PC02.SAT0.PRT5, DeviceObj)
    External (_SB_.PC02.SAT0.PRT6, DeviceObj)
    External (_SB_.PC02.SAT0.PRT7, DeviceObj)
    External (_SB_.PC02.SPI0, DeviceObj)
    External (_SB_.PC02.SPI1, DeviceObj)
    External (_SB_.PC02.SPI2, DeviceObj)
    External (_SB_.PC02.THC0, DeviceObj)
    External (_SB_.PC02.THC1, DeviceObj)
    External (_SB_.PC02.UA00, DeviceObj)
    External (_SB_.PC02.UA01, DeviceObj)
    External (_SB_.PC02.UA02, DeviceObj)
    External (_SB_.PC02.VMD0, DeviceObj)
    External (_SB_.PC02.XHCI, DeviceObj)
    External (_SB_.PEPD, DeviceObj)
    External (ADBG, MethodObj)    // 1 Arguments
    External (BCCX, UnknownObj)
    External (ISGX, MethodObj)    // 0 Arguments
    External (PAHC, MethodObj)    // 0 Arguments
    External (PIXX, UnknownObj)
    External (PNVM, MethodObj)    // 0 Arguments
    External (PRES, MethodObj)    // 0 Arguments
    External (PRMV, IntObj)
    External (SCCX, UnknownObj)
    External (WIST, MethodObj)    // 0 Arguments

    ADBG ("[Pep override SSDT][AcpiTableEntry]")
    OperationRegion (PTNV, SystemMemory, 0x5CB6D000, 0x0026)
    Field (PTNV, AnyAcc, Lock, Preserve)
    {
        PTPS,   8, 
        PTPL,   8, 
        PTPW,   8, 
        PTPG,   8, 
        PTPO,   8, 
        PTAO,   8, 
        PTCU,   8, 
        PTGX,   8, 
        PTIU,   8, 
        PTUT,   8, 
        PT20,   8, 
        PT21,   8, 
        PT22,   8, 
        PT23,   8, 
        PT24,   8, 
        PT25,   8, 
        PT26,   8, 
        PT27,   8, 
        PTSI,   8, 
        PTXI,   8, 
        PTCE,   8, 
        PTH3,   8, 
        PTGE,   8, 
        PTT0,   8, 
        PTT1,   8, 
        PTU0,   8, 
        PTU1,   8, 
        PTTS,   8, 
        PTVU,   8, 
        PTIH,   8, 
        PTGN,   8, 
        PTVM,   8, 
        PTSA,   8, 
        PTSE,   8, 
        PTEM,   8, 
        PTSD,   8, 
        POSE,   8, 
        PESE,   8
    }

    If (CondRefOf (\_SB.PC00.GFX0))
    {
        Scope (\_SB.PC00.GFX0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("GFX0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTGX)))
                If (((Arg0 != Zero) && (PTGX != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTGX) /* \PTGX */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.UA00))
    {
        Scope (\_SB.PC00.UA00)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("UA00")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTUT)))
                If (((Arg0 != Zero) && (PTUT != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTUT) /* \PTUT */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.UA01))
    {
        Scope (\_SB.PC00.UA01)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("UA01")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTUT)))
                If (((Arg0 != Zero) && (PTUT != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTUT) /* \PTUT */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.UA02))
    {
        Scope (\_SB.PC00.UA02)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("UA02")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTUT)))
                If (((Arg0 != Zero) && (PTUT != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTUT) /* \PTUT */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C0))
    {
        Scope (\_SB.PC00.I2C0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT20)))
                If (((Arg0 != Zero) && (PT20 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT20) /* \PT20 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C1))
    {
        Scope (\_SB.PC00.I2C1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT21)))
                If (((Arg0 != Zero) && (PT21 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT21) /* \PT21 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C2))
    {
        Scope (\_SB.PC00.I2C2)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C2")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT22)))
                If (((Arg0 != Zero) && (PT22 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT22) /* \PT22 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C3))
    {
        Scope (\_SB.PC00.I2C3)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C3")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT23)))
                If (((Arg0 != Zero) && (PT23 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT23) /* \PT23 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C4))
    {
        Scope (\_SB.PC00.I2C4)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C4")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT24)))
                If (((Arg0 != Zero) && (PT24 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT24) /* \PT24 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C5))
    {
        Scope (\_SB.PC00.I2C5)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C5")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT25)))
                If (((Arg0 != Zero) && (PT25 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT25) /* \PT25 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C6))
    {
        Scope (\_SB.PC00.I2C6)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C6")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT26)))
                If (((Arg0 != Zero) && (PT26 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT26) /* \PT26 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.I2C7))
    {
        Scope (\_SB.PC00.I2C7)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C7")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT27)))
                If (((Arg0 != Zero) && (PT27 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT27) /* \PT27 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SPI0))
    {
        Scope (\_SB.PC00.SPI0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SPI0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSI)))
                If (((Arg0 != Zero) && (PTSI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSI) /* \PTSI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SPI1))
    {
        Scope (\_SB.PC00.SPI1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SPI1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSI)))
                If (((Arg0 != Zero) && (PTSI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSI) /* \PTSI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SPI2))
    {
        Scope (\_SB.PC00.SPI2)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SPI2")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSI)))
                If (((Arg0 != Zero) && (PTSI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSI) /* \PTSI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.XHCI))
    {
        Scope (\_SB.PC00.XHCI)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("XHCI")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTXI)))
                If (((Arg0 != Zero) && (PTXI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTXI) /* \PTXI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.HDAS))
    {
        Scope (\_SB.PC00.HDAS)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("HDAS")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTAO)))
                If (((Arg0 != Zero) && (PTAO != Zero)))
                {
                    If (Ones)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTAO) /* \PTAO */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.IPU0))
    {
        Scope (\_SB.PC00.IPU0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("IPU0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTIU)))
                If (((Arg0 != Zero) && (PTIU != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTIU) /* \PTIU */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.NPU0))
    {
        Scope (\_SB.PC00.NPU0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("NPU0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTVU)))
                If (((Arg0 != Zero) && (PTVU != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTVU) /* \PTVU */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.GNA0))
    {
        Scope (\_SB.PC00.GNA0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("GNA0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTGN)))
                If (((Arg0 != Zero) && (PTGN != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTGN) /* \PTGN */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.VMD0))
    {
        Scope (\_SB.PC00.VMD0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("VMD0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTVM)))
                If (((Arg0 != Zero) && (PTVM != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTVM) /* \PTVM */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.HECI))
    {
        Scope (\_SB.PC00.HECI)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("HECI")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTCE)))
                If (((Arg0 != Zero) && (PTCE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTCE) /* \PTCE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.HEC3))
    {
        Scope (\_SB.PC00.HEC3)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("HEC3")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTH3)))
                If (((Arg0 != Zero) && (PTH3 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTH3) /* \PTH3 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.GLAN))
    {
        Scope (\_SB.PC00.GLAN)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("GLAN")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTGE)))
                If (((Arg0 != Zero) && (PTGE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTGE) /* \PTGE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.THC0))
    {
        Scope (\_SB.PC00.THC0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("THC0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTT0)))
                If (((Arg0 != Zero) && (PTT0 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTT0) /* \PTT0 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.THC1))
    {
        Scope (\_SB.PC00.THC1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("THC1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTT1)))
                If (((Arg0 != Zero) && (PTT1 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTT1) /* \PTT1 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.PUF0))
    {
        Scope (\_SB.PC00.PUF0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("PUF0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTU0)))
                If (((Arg0 != Zero) && (PTU0 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTU0) /* \PTU0 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.PUF1))
    {
        Scope (\_SB.PC00.PUF1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("PUF1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTU1)))
                If (((Arg0 != Zero) && (PTU1 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTU1) /* \PTU1 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.PEMC))
    {
        Scope (\_SB.PC00.PEMC)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("PEMC")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTEM)))
                If (((Arg0 != Zero) && (PTEM != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTEM) /* \PTEM */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0))
    {
        Scope (\_SB.PC00.SAT0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSA)))
                If (((Arg0 != Zero) && (PTSA != Zero)))
                {
                    If (Ones)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSA) /* \PTSA */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.ISHD))
    {
        Scope (\_SB.PC00.ISHD)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("ISHD")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTIH)))
                If (((Arg0 != Zero) && (PTIH != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTIH) /* \PTIH */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.OSE0))
    {
        Scope (\_SB.PC00.OSE0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("OSE0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (POSE)))
                If (((Arg0 != Zero) && (POSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (POSE) /* \POSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.OSE1))
    {
        Scope (\_SB.PC00.OSE1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("OSE1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (POSE)))
                If (((Arg0 != Zero) && (POSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (POSE) /* \POSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.ESE0))
    {
        Scope (\_SB.PC00.ESE0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("ESE0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PESE)))
                If (((Arg0 != Zero) && (PESE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PESE) /* \PESE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT0))
    {
        Scope (\_SB.PC00.SAT0.PRT0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT1))
    {
        Scope (\_SB.PC00.SAT0.PRT1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT2))
    {
        Scope (\_SB.PC00.SAT0.PRT2)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT2")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT3))
    {
        Scope (\_SB.PC00.SAT0.PRT3)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT3")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT4))
    {
        Scope (\_SB.PC00.SAT0.PRT4)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT4")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT5))
    {
        Scope (\_SB.PC00.SAT0.PRT5)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT5")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT6))
    {
        Scope (\_SB.PC00.SAT0.PRT6)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT6")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.SAT0.PRT7))
    {
        Scope (\_SB.PC00.SAT0.PRT7)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT7")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP01))
    {
        Scope (\_SB.PC00.RP01.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP01")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP02))
    {
        Scope (\_SB.PC00.RP02.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP02")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP03))
    {
        Scope (\_SB.PC00.RP03.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP03")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP04))
    {
        Scope (\_SB.PC00.RP04.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP04")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP05))
    {
        Scope (\_SB.PC00.RP05.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP05")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP06))
    {
        Scope (\_SB.PC00.RP06.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP06")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP07))
    {
        Scope (\_SB.PC00.RP07.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP07")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP08))
    {
        Scope (\_SB.PC00.RP08.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP08")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP09))
    {
        Scope (\_SB.PC00.RP09.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP09")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP10))
    {
        Scope (\_SB.PC00.RP10.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP10")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP11))
    {
        Scope (\_SB.PC00.RP11.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP11")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP12))
    {
        Scope (\_SB.PC00.RP12.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP12")
                If (PRES ())
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP13))
    {
        Scope (\_SB.PC00.RP13.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP13")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP14))
    {
        Scope (\_SB.PC00.RP14.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP14")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP15))
    {
        Scope (\_SB.PC00.RP15.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP15")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP16))
    {
        Scope (\_SB.PC00.RP16.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP16")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP17))
    {
        Scope (\_SB.PC00.RP17.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP17")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP18))
    {
        Scope (\_SB.PC00.RP18.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP18")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP19))
    {
        Scope (\_SB.PC00.RP19.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP19")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP20))
    {
        Scope (\_SB.PC00.RP20.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP20")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP21))
    {
        Scope (\_SB.PC00.RP21.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP21")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP22))
    {
        Scope (\_SB.PC00.RP22.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP22")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP23))
    {
        Scope (\_SB.PC00.RP23.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP23")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP24))
    {
        Scope (\_SB.PC00.RP24.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP24")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP25))
    {
        Scope (\_SB.PC00.RP25.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP25")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP26))
    {
        Scope (\_SB.PC00.RP26.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP26")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP27))
    {
        Scope (\_SB.PC00.RP27.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP27")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC00.RP28))
    {
        Scope (\_SB.PC00.RP28.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC00.RP28")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.GFX0))
    {
        Scope (\_SB.PC02.GFX0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("GFX0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTGX)))
                If (((Arg0 != Zero) && (PTGX != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTGX) /* \PTGX */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.UA00))
    {
        Scope (\_SB.PC02.UA00)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("UA00")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTUT)))
                If (((Arg0 != Zero) && (PTUT != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTUT) /* \PTUT */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.UA01))
    {
        Scope (\_SB.PC02.UA01)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("UA01")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTUT)))
                If (((Arg0 != Zero) && (PTUT != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTUT) /* \PTUT */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.UA02))
    {
        Scope (\_SB.PC02.UA02)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("UA02")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTUT)))
                If (((Arg0 != Zero) && (PTUT != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTUT) /* \PTUT */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C0))
    {
        Scope (\_SB.PC02.I2C0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT20)))
                If (((Arg0 != Zero) && (PT20 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT20) /* \PT20 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C1))
    {
        Scope (\_SB.PC02.I2C1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT21)))
                If (((Arg0 != Zero) && (PT21 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT21) /* \PT21 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C2))
    {
        Scope (\_SB.PC02.I2C2)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C2")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT22)))
                If (((Arg0 != Zero) && (PT22 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT22) /* \PT22 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C3))
    {
        Scope (\_SB.PC02.I2C3)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C3")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT23)))
                If (((Arg0 != Zero) && (PT23 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT23) /* \PT23 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C4))
    {
        Scope (\_SB.PC02.I2C4)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C4")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT24)))
                If (((Arg0 != Zero) && (PT24 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT24) /* \PT24 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C5))
    {
        Scope (\_SB.PC02.I2C5)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C5")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT25)))
                If (((Arg0 != Zero) && (PT25 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT25) /* \PT25 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C6))
    {
        Scope (\_SB.PC02.I2C6)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C6")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT26)))
                If (((Arg0 != Zero) && (PT26 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT26) /* \PT26 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.I2C7))
    {
        Scope (\_SB.PC02.I2C7)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("I2C7")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PT27)))
                If (((Arg0 != Zero) && (PT27 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PT27) /* \PT27 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SPI0))
    {
        Scope (\_SB.PC02.SPI0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SPI0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSI)))
                If (((Arg0 != Zero) && (PTSI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSI) /* \PTSI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SPI1))
    {
        Scope (\_SB.PC02.SPI1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SPI1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSI)))
                If (((Arg0 != Zero) && (PTSI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSI) /* \PTSI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SPI2))
    {
        Scope (\_SB.PC02.SPI2)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SPI2")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSI)))
                If (((Arg0 != Zero) && (PTSI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSI) /* \PTSI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.XHCI))
    {
        Scope (\_SB.PC02.XHCI)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("XHCI")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTXI)))
                If (((Arg0 != Zero) && (PTXI != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTXI) /* \PTXI */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.HDAS))
    {
        Scope (\_SB.PC02.HDAS)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("HDAS")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTAO)))
                If (((Arg0 != Zero) && (PTAO != Zero)))
                {
                    If (Ones)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTAO) /* \PTAO */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.IPU0))
    {
        Scope (\_SB.PC02.IPU0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("IPU0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTIU)))
                If (((Arg0 != Zero) && (PTIU != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTIU) /* \PTIU */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.NPU0))
    {
        Scope (\_SB.PC02.NPU0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("NPU0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTVU)))
                If (((Arg0 != Zero) && (PTVU != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTVU) /* \PTVU */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.GNA0))
    {
        Scope (\_SB.PC02.GNA0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("GNA0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTGN)))
                If (((Arg0 != Zero) && (PTGN != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTGN) /* \PTGN */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.VMD0))
    {
        Scope (\_SB.PC02.VMD0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("VMD0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTVM)))
                If (((Arg0 != Zero) && (PTVM != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTVM) /* \PTVM */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.HECI))
    {
        Scope (\_SB.PC02.HECI)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("HECI")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTCE)))
                If (((Arg0 != Zero) && (PTCE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTCE) /* \PTCE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.HEC3))
    {
        Scope (\_SB.PC02.HEC3)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("HEC3")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTH3)))
                If (((Arg0 != Zero) && (PTH3 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTH3) /* \PTH3 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.GLAN))
    {
        Scope (\_SB.PC02.GLAN)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("GLAN")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTGE)))
                If (((Arg0 != Zero) && (PTGE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTGE) /* \PTGE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.THC0))
    {
        Scope (\_SB.PC02.THC0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("THC0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTT0)))
                If (((Arg0 != Zero) && (PTT0 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTT0) /* \PTT0 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.THC1))
    {
        Scope (\_SB.PC02.THC1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("THC1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTT1)))
                If (((Arg0 != Zero) && (PTT1 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTT1) /* \PTT1 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.PUF0))
    {
        Scope (\_SB.PC02.PUF0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("PUF0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTU0)))
                If (((Arg0 != Zero) && (PTU0 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTU0) /* \PTU0 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.PUF1))
    {
        Scope (\_SB.PC02.PUF1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("PUF1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTU1)))
                If (((Arg0 != Zero) && (PTU1 != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTU1) /* \PTU1 */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.PEMC))
    {
        Scope (\_SB.PC02.PEMC)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("PEMC")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTEM)))
                If (((Arg0 != Zero) && (PTEM != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTEM) /* \PTEM */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0))
    {
        Scope (\_SB.PC02.SAT0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSA)))
                If (((Arg0 != Zero) && (PTSA != Zero)))
                {
                    If (Ones)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSA) /* \PTSA */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.ISHD))
    {
        Scope (\_SB.PC02.ISHD)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("ISHD")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTIH)))
                If (((Arg0 != Zero) && (PTIH != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTIH) /* \PTIH */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.OSE0))
    {
        Scope (\_SB.PC02.OSE0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("OSE0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (POSE)))
                If (((Arg0 != Zero) && (POSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (POSE) /* \POSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.OSE1))
    {
        Scope (\_SB.PC02.OSE1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("OSE1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (POSE)))
                If (((Arg0 != Zero) && (POSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (POSE) /* \POSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.ESE0))
    {
        Scope (\_SB.PC02.ESE0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("ESE0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PESE)))
                If (((Arg0 != Zero) && (PESE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PESE) /* \PESE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT0))
    {
        Scope (\_SB.PC02.SAT0.PRT0)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT0")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT1))
    {
        Scope (\_SB.PC02.SAT0.PRT1)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT1")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT2))
    {
        Scope (\_SB.PC02.SAT0.PRT2)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT2")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT3))
    {
        Scope (\_SB.PC02.SAT0.PRT3)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT3")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT4))
    {
        Scope (\_SB.PC02.SAT0.PRT4)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT4")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT5))
    {
        Scope (\_SB.PC02.SAT0.PRT5)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT5")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT6))
    {
        Scope (\_SB.PC02.SAT0.PRT6)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT6")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.SAT0.PRT7))
    {
        Scope (\_SB.PC02.SAT0.PRT7)
        {
            Method (POVR, 1, Serialized)
            {
                ADBG ("SAT0.PRT7")
                ADBG (Concatenate ("PEP default value: ", ToHexString (Arg0)))
                ADBG (Concatenate ("PEP override value: ", ToHexString (PTSE)))
                If (((Arg0 != Zero) && (PTSE != Zero)))
                {
                    If (Zero)
                    {
                        If ((Arg0 == 0x05))
                        {
                            Return (Arg0)
                        }

                        Return (PTSE) /* \PTSE */
                    }

                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP01))
    {
        Scope (\_SB.PC02.RP01.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP01")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP02))
    {
        Scope (\_SB.PC02.RP02.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP02")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP03))
    {
        Scope (\_SB.PC02.RP03.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP03")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP04))
    {
        Scope (\_SB.PC02.RP04.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP04")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP05))
    {
        Scope (\_SB.PC02.RP05.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP05")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP06))
    {
        Scope (\_SB.PC02.RP06.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP06")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP07))
    {
        Scope (\_SB.PC02.RP07.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP07")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP08))
    {
        Scope (\_SB.PC02.RP08.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP08")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP09))
    {
        Scope (\_SB.PC02.RP09.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP09")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP10))
    {
        Scope (\_SB.PC02.RP10.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP10")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP11))
    {
        Scope (\_SB.PC02.RP11.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP11")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP12))
    {
        Scope (\_SB.PC02.RP12.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP12")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP13))
    {
        Scope (\_SB.PC02.RP13.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP13")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP14))
    {
        Scope (\_SB.PC02.RP14.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP14")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP15))
    {
        Scope (\_SB.PC02.RP15.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP15")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP16))
    {
        Scope (\_SB.PC02.RP16.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP16")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP17))
    {
        Scope (\_SB.PC02.RP17.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP17")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP18))
    {
        Scope (\_SB.PC02.RP18.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP18")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP19))
    {
        Scope (\_SB.PC02.RP19.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP19")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP20))
    {
        Scope (\_SB.PC02.RP20.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP20")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP21))
    {
        Scope (\_SB.PC02.RP21.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP21")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP22))
    {
        Scope (\_SB.PC02.RP22.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP22")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP23))
    {
        Scope (\_SB.PC02.RP23.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP23")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP24))
    {
        Scope (\_SB.PC02.RP24.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP24")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP25))
    {
        Scope (\_SB.PC02.RP25.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP25")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP26))
    {
        Scope (\_SB.PC02.RP26.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP26")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP27))
    {
        Scope (\_SB.PC02.RP27.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP27")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    If (CondRefOf (\_SB.PC02.RP28))
    {
        Scope (\_SB.PC02.RP28.PXSX)
        {
            Method (ISLN, 0, Serialized)
            {
                If ((BCCX == 0x02))
                {
                    If ((SCCX == Zero))
                    {
                        If ((PIXX == Zero))
                        {
                            ADBG ("PCIe LAN!")
                            Return (One)
                        }
                    }
                }

                Return (Zero)
            }

            Method (GRPT, 0, Serialized)
            {
                ADBG ("Check Root RP: \\_SB.PC02.RP28")
                If (PRES)
                {
                    If (CondRefOf (PRMV))
                    {
                        If ((PRMV == One))
                        {
                            Return (0x63)
                        }
                    }

                    If ((PAHC () || PNVM ()))
                    {
                        Return (One)
                    }

                    If (ISGX ())
                    {
                        Return (0x04)
                    }

                    If (ISLN ())
                    {
                        Return (0x02)
                    }

                    If (CondRefOf (WIST))
                    {
                        If (WIST ())
                        {
                            Return (0x03)
                        }
                    }

                    Return (Zero)
                }

                Return (0x63)
            }
        }
    }

    Scope (\_SB.PEPD)
    {
        Method (RPCO, 2, Serialized)
        {
            If ((Arg1 == One))
            {
                ADBG ("PCIE Storage PEP OVR")
                If (((Arg0 != Zero) && (PTPS >= One)))
                {
                    If ((Arg0 != 0x05))
                    {
                        Return (PTPS) /* \PTPS */
                    }
                    Else
                    {
                        Return (Arg0)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((Arg1 == 0x02))
            {
                ADBG ("PCIE LAN PEP OVR")
                If (((Arg0 != Zero) && (PTPL >= One)))
                {
                    If ((Arg0 != 0x05))
                    {
                        Return (PTPL) /* \PTPL */
                    }
                    Else
                    {
                        Return (Arg0)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((Arg1 == 0x03))
            {
                ADBG ("PCIE WLAN PEP OVR")
                If (((Arg0 != Zero) && (PTPW >= One)))
                {
                    If ((Arg0 != 0x05))
                    {
                        Return (PTPW) /* \PTPW */
                    }
                    Else
                    {
                        Return (Arg0)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((Arg1 == 0x04))
            {
                ADBG ("PCIE Graphics PEP OVR")
                If (((Arg0 != Zero) && (PTPG >= One)))
                {
                    If ((Arg0 != 0x05))
                    {
                        Return (PTPG) /* \PTPG */
                    }
                    Else
                    {
                        Return (Arg0)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((Arg1 == 0x05))
            {
                ADBG ("PCIE DTBT PEP OVR")
                If (((Arg0 != Zero) && (PTTS == One)))
                {
                    Return (Arg0)
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((Arg1 == Zero))
            {
                ADBG ("PCIE Others OVR")
                If (((Arg0 != Zero) && (PTPO != Zero)))
                {
                    If ((Arg0 != 0x05))
                    {
                        Return (PTPO) /* \PTPO */
                    }
                    Else
                    {
                        Return (Arg0)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            ADBG ("PCIE EP NOT present")
            Return (Arg0)
        }

        Method (CUCO, 1, Serialized)
        {
            ADBG ("CPU PEP OVR")
            Return (PTCU) /* \PTCU */
        }

        Method (TSCO, 1, Serialized)
        {
            ADBG ("TCSS PEP OVR")
            If (((Arg0 != Zero) && (PTTS == One)))
            {
                Return (Arg0)
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    ADBG ("[Pep override SSDT][AcpiTableExit]")
}

