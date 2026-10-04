/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A2 (162)
 *     Revision         0x02
 *     Checksum         0xFB
 *     OEM ID           "INTEL "
 *     OEM Table ID     "TxtSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "TxtSsdt", 0x00001000)
{
    External (CPID, UnknownObj)

    Scope (\_SB)
    {
        Device (ACM)
        {
            Name (_HID, "INTC1025")  // _HID: Hardware ID
            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Local0 = (CPID & 0xFFFFFFF0)
                If ((((Local0 == 0x000C06D0) || (Local0 == 0x000C06D2)) || ((Local0 == 
                    0x000C06C0) || (Local0 == 0x000C06C2))))
                {
                    Return ("INT_PTL_SINIT")
                }

                Return ("INT_UNK_SINIT")
            }
        }
    }
}

