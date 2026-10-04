/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt6.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000791 (1937)
 *     Revision         0x02
 *     Checksum         0x96
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR00)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_SB.CPPC) /* External reference */
        }

        Name (_PCT, Package (0x02)  // _PCT: Performance Control
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If ((\_SB.OSCP & 0x0400))
            {
                Return (TPSS) /* \_SB_.PR00.TPSS */
            }
            Else
            {
                Return (LPSS) /* \_SB_.PR00.LPSS */
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x00000ED9, 
                0x000061A8, 
                0x0000000A, 
                0x0000000A, 
                0x00003200, 
                0x00003200
            }, 

            Package (0x06)
            {
                0x00000ED8, 
                0x000061A8, 
                0x0000000A, 
                0x0000000A, 
                0x00002600, 
                0x00002600
            }, 

            Package (0x06)
            {
                0x00000E10, 
                0x000059B7, 
                0x0000000A, 
                0x0000000A, 
                0x00002400, 
                0x00002400
            }, 

            Package (0x06)
            {
                0x00000CE4, 
                0x00004F43, 
                0x0000000A, 
                0x0000000A, 
                0x00002100, 
                0x00002100
            }, 

            Package (0x06)
            {
                0x00000C1C, 
                0x000048EE, 
                0x0000000A, 
                0x0000000A, 
                0x00001F00, 
                0x00001F00
            }, 

            Package (0x06)
            {
                0x00000AF0, 
                0x00003F68, 
                0x0000000A, 
                0x0000000A, 
                0x00001C00, 
                0x00001C00
            }, 

            Package (0x06)
            {
                0x00000A28, 
                0x000039A8, 
                0x0000000A, 
                0x0000000A, 
                0x00001A00, 
                0x00001A00
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00003106, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x000028EC, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x000026D9, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00001F67, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00001A38, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x0000044C, 
                0x00001397, 
                0x0000000A, 
                0x0000000A, 
                0x00000B00, 
                0x00000B00
            }, 

            Package (0x06)
            {
                0x00000384, 
                0x00000FAA, 
                0x0000000A, 
                0x0000000A, 
                0x00000900, 
                0x00000900
            }, 

            Package (0x06)
            {
                0x00000258, 
                0x000009CD, 
                0x0000000A, 
                0x0000000A, 
                0x00000600, 
                0x00000600
            }, 

            Package (0x06)
            {
                0x00000190, 
                0x0000065B, 
                0x0000000A, 
                0x0000000A, 
                0x00000400, 
                0x00000400
            }
        })
        Name (TPSS, Package (0x24)
        {
            Package (0x06)
            {
                0x00000ED9, 
                0x000061A8, 
                0x0000000A, 
                0x0000000A, 
                0x00003200, 
                0x00003200
            }, 

            Package (0x06)
            {
                0x00000ED8, 
                0x000061A8, 
                0x0000000A, 
                0x0000000A, 
                0x00002600, 
                0x00002600
            }, 

            Package (0x06)
            {
                0x00000E74, 
                0x00005DA6, 
                0x0000000A, 
                0x0000000A, 
                0x00002500, 
                0x00002500
            }, 

            Package (0x06)
            {
                0x00000E10, 
                0x000059B7, 
                0x0000000A, 
                0x0000000A, 
                0x00002400, 
                0x00002400
            }, 

            Package (0x06)
            {
                0x00000DAC, 
                0x000056CC, 
                0x0000000A, 
                0x0000000A, 
                0x00002300, 
                0x00002300
            }, 

            Package (0x06)
            {
                0x00000D48, 
                0x000052FE, 
                0x0000000A, 
                0x0000000A, 
                0x00002200, 
                0x00002200
            }, 

            Package (0x06)
            {
                0x00000CE4, 
                0x00004F43, 
                0x0000000A, 
                0x0000000A, 
                0x00002100, 
                0x00002100
            }, 

            Package (0x06)
            {
                0x00000C80, 
                0x00004C88, 
                0x0000000A, 
                0x0000000A, 
                0x00002000, 
                0x00002000
            }, 

            Package (0x06)
            {
                0x00000C1C, 
                0x000048EE, 
                0x0000000A, 
                0x0000000A, 
                0x00001F00, 
                0x00001F00
            }, 

            Package (0x06)
            {
                0x00000BB8, 
                0x00004565, 
                0x0000000A, 
                0x0000000A, 
                0x00001E00, 
                0x00001E00
            }, 

            Package (0x06)
            {
                0x00000B54, 
                0x000042D0, 
                0x0000000A, 
                0x0000000A, 
                0x00001D00, 
                0x00001D00
            }, 

            Package (0x06)
            {
                0x00000AF0, 
                0x00003F68, 
                0x0000000A, 
                0x0000000A, 
                0x00001C00, 
                0x00001C00
            }, 

            Package (0x06)
            {
                0x00000A8C, 
                0x00003CF0, 
                0x0000000A, 
                0x0000000A, 
                0x00001B00, 
                0x00001B00
            }, 

            Package (0x06)
            {
                0x00000A28, 
                0x000039A8, 
                0x0000000A, 
                0x0000000A, 
                0x00001A00, 
                0x00001A00
            }, 

            Package (0x06)
            {
                0x000009C4, 
                0x00003670, 
                0x0000000A, 
                0x0000000A, 
                0x00001900, 
                0x00001900
            }, 

            Package (0x06)
            {
                0x00000960, 
                0x0000341E, 
                0x0000000A, 
                0x0000000A, 
                0x00001800, 
                0x00001800
            }, 

            Package (0x06)
            {
                0x000008FC, 
                0x00003106, 
                0x0000000A, 
                0x0000000A, 
                0x00001700, 
                0x00001700
            }, 

            Package (0x06)
            {
                0x00000898, 
                0x00002DFE, 
                0x0000000A, 
                0x0000000A, 
                0x00001600, 
                0x00001600
            }, 

            Package (0x06)
            {
                0x00000834, 
                0x00002BD5, 
                0x0000000A, 
                0x0000000A, 
                0x00001500, 
                0x00001500
            }, 

            Package (0x06)
            {
                0x000007D0, 
                0x000028EC, 
                0x0000000A, 
                0x0000000A, 
                0x00001400, 
                0x00001400
            }, 

            Package (0x06)
            {
                0x0000076C, 
                0x000026D9, 
                0x0000000A, 
                0x0000000A, 
                0x00001300, 
                0x00001300
            }, 

            Package (0x06)
            {
                0x00000708, 
                0x0000240D, 
                0x0000000A, 
                0x0000000A, 
                0x00001200, 
                0x00001200
            }, 

            Package (0x06)
            {
                0x000006A4, 
                0x00002152, 
                0x0000000A, 
                0x0000000A, 
                0x00001100, 
                0x00001100
            }, 

            Package (0x06)
            {
                0x00000640, 
                0x00001F67, 
                0x0000000A, 
                0x0000000A, 
                0x00001000, 
                0x00001000
            }, 

            Package (0x06)
            {
                0x000005DC, 
                0x00001CC7, 
                0x0000000A, 
                0x0000000A, 
                0x00000F00, 
                0x00000F00
            }, 

            Package (0x06)
            {
                0x00000578, 
                0x00001A38, 
                0x0000000A, 
                0x0000000A, 
                0x00000E00, 
                0x00000E00
            }, 

            Package (0x06)
            {
                0x00000514, 
                0x0000186F, 
                0x0000000A, 
                0x0000000A, 
                0x00000D00, 
                0x00000D00
            }, 

            Package (0x06)
            {
                0x000004B0, 
                0x000015FC, 
                0x0000000A, 
                0x0000000A, 
                0x00000C00, 
                0x00000C00
            }, 

            Package (0x06)
            {
                0x0000044C, 
                0x00001397, 
                0x0000000A, 
                0x0000000A, 
                0x00000B00, 
                0x00000B00
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x000011F4, 
                0x0000000A, 
                0x0000000A, 
                0x00000A00, 
                0x00000A00
            }, 

            Package (0x06)
            {
                0x00000384, 
                0x00000FAA, 
                0x0000000A, 
                0x0000000A, 
                0x00000900, 
                0x00000900
            }, 

            Package (0x06)
            {
                0x00000320, 
                0x00000E1C, 
                0x0000000A, 
                0x0000000A, 
                0x00000800, 
                0x00000800
            }, 

            Package (0x06)
            {
                0x000002BC, 
                0x00000BED, 
                0x0000000A, 
                0x0000000A, 
                0x00000700, 
                0x00000700
            }, 

            Package (0x06)
            {
                0x00000258, 
                0x000009CD, 
                0x0000000A, 
                0x0000000A, 
                0x00000600, 
                0x00000600
            }, 

            Package (0x06)
            {
                0x000001F4, 
                0x00000861, 
                0x0000000A, 
                0x0000000A, 
                0x00000500, 
                0x00000500
            }, 

            Package (0x06)
            {
                0x00000190, 
                0x0000065B, 
                0x0000000A, 
                0x0000000A, 
                0x00000400, 
                0x00000400
            }
        })
    }
}

