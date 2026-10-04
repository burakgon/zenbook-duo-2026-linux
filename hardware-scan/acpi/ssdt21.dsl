/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt21.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000419 (1049)
 *     Revision         0x02
 *     Checksum         0x8D
 *     OEM ID           "INTEL"
 *     OEM Table ID     "UpmpSsdt"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "UpmpSsdt", 0x00000000)
{
    External (_SB_.PC00.XHCI, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS05, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS06, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS07, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS08, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (ADBG, MethodObj)    // 1 Arguments

    OperationRegion (XHNV, SystemMemory, 0x5CA99000, 0x0078)
    Field (XHNV, AnyAcc, Lock, Preserve)
    {
        A1GP,   8, 
        A2GP,   8, 
        A3GP,   8, 
        A4GP,   8, 
        A5GP,   8, 
        A6GP,   8, 
        A7GP,   8, 
        A8GP,   8, 
        A9GP,   8, 
        AAGP,   8, 
        ABGP,   8, 
        ACGP,   8, 
        ADGP,   8, 
        AEGP,   8, 
        A1VS,   8, 
        A2VS,   8, 
        A3VS,   8, 
        A4VS,   8, 
        A5VS,   8, 
        A6VS,   8, 
        A7VS,   8, 
        A8VS,   8, 
        A9VS,   8, 
        AAVS,   8, 
        ABVS,   8, 
        ACVS,   8, 
        ADVS,   8, 
        AEVS,   8, 
        A1CN,   8, 
        A2CN,   8, 
        A3CN,   8, 
        A4CN,   8, 
        A5CN,   8, 
        A6CN,   8, 
        A7CN,   8, 
        A8CN,   8, 
        A9CN,   8, 
        AACN,   8, 
        ABCN,   8, 
        ACCN,   8, 
        ADCN,   8, 
        AECN,   8, 
        A1TP,   8, 
        A2TP,   8, 
        A3TP,   8, 
        A4TP,   8, 
        A5TP,   8, 
        A6TP,   8, 
        A7TP,   8, 
        A8TP,   8, 
        A9TP,   8, 
        AATP,   8, 
        ABTP,   8, 
        ACTP,   8, 
        ADTP,   8, 
        AETP,   8, 
        A1CP,   8, 
        A2CP,   8, 
        A3CP,   8, 
        A4CP,   8, 
        A5CP,   8, 
        A6CP,   8, 
        A7CP,   8, 
        A8CP,   8, 
        A9CP,   8, 
        AACP,   8, 
        ABCP,   8, 
        ACCP,   8, 
        ADCP,   8, 
        AECP,   8, 
        B1GP,   8, 
        B2GP,   8, 
        B3GP,   8, 
        B4GP,   8, 
        B5GP,   8, 
        B6GP,   8, 
        B7GP,   8, 
        B8GP,   8, 
        B9GP,   8, 
        BAGP,   8, 
        B1VS,   8, 
        B2VS,   8, 
        B3VS,   8, 
        B4VS,   8, 
        B5VS,   8, 
        B6VS,   8, 
        B7VS,   8, 
        B8VS,   8, 
        B9VS,   8, 
        BAVS,   8, 
        B1CN,   8, 
        B2CN,   8, 
        B3CN,   8, 
        B4CN,   8, 
        B5CN,   8, 
        B6CN,   8, 
        B7CN,   8, 
        B8CN,   8, 
        B9CN,   8, 
        BACN,   8, 
        B1TP,   8, 
        B2TP,   8, 
        B3TP,   8, 
        B4TP,   8, 
        B5TP,   8, 
        B6TP,   8, 
        B7TP,   8, 
        B8TP,   8, 
        B9TP,   8, 
        BATP,   8, 
        B1CP,   8, 
        B2CP,   8, 
        B3CP,   8, 
        B4CP,   8, 
        B5CP,   8, 
        B6CP,   8, 
        B7CP,   8, 
        B8CP,   8, 
        B9CP,   8, 
        BACP,   8
    }

    If (CondRefOf (ADBG))
    {
        ADBG ("[USB PORT MAP SSDT][AcpiTableEntry]")
    }

    If (CondRefOf (ADBG))
    {
        ADBG ("[USB PORT MAP SSDT][AcpiTableExit]")
    }
}

