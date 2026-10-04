/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt18.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002A6 (678)
 *     Revision         0x02
 *     Checksum         0xB5
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "TcssSsdt"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "_ASUS_", "TcssSsdt", 0x00000000)
{
    External (_SB_.PC00.TXHC.RHUB, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS02, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS03, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS04, DeviceObj)

    If (CondRefOf (\_SB.PC00.TXHC.RHUB))
    {
        Scope (\_SB.PC00.TXHC.RHUB)
        {
            Method (APLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x61, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // a.......
                    }
                })
                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                VISI = Arg0
                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                GPOS = Arg1
                Return (PCKG) /* \_SB_.PC00.TXHC.RHUB.APLD.PCKG */
            }

            Method (AUPC, 2, Serialized)
            {
                Name (PCKG, Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                PCKG [Zero] = Arg0
                PCKG [One] = Arg1
                Return (PCKG) /* \_SB_.PC00.TXHC.RHUB.AUPC.PCKG */
            }
        }
    }

    If (CondRefOf (\_SB.PC00.TXHC.RHUB.SS01))
    {
        Scope (\_SB.PC00.TXHC.RHUB.SS01)
        {
            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
            {
                Return (AUPC (Zero, Zero))
            }

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                Return (APLD (Zero, 0x10))
            }
        }
    }

    If (CondRefOf (\_SB.PC00.TXHC.RHUB.SS02))
    {
        Scope (\_SB.PC00.TXHC.RHUB.SS02)
        {
            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
            {
                Return (AUPC (0xFF, 0x0A))
            }

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                Return (APLD (One, One))
            }
        }
    }

    If (CondRefOf (\_SB.PC00.TXHC.RHUB.SS03))
    {
        Scope (\_SB.PC00.TXHC.RHUB.SS03)
        {
            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
            {
                Return (AUPC (Zero, Zero))
            }

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                Return (APLD (Zero, 0x10))
            }
        }
    }

    If (CondRefOf (\_SB.PC00.TXHC.RHUB.SS04))
    {
        Scope (\_SB.PC00.TXHC.RHUB.SS04)
        {
            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
            {
                Return (AUPC (0xFF, 0x0A))
            }

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                Return (APLD (One, 0x02))
            }
        }
    }
}

