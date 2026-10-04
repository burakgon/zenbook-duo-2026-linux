/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt23.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001DA3 (7587)
 *     Revision         0x02
 *     Checksum         0x0D
 *     OEM ID           "SocCmn"
 *     OEM Table ID     "SocCmn "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "SocCmn", "SocCmn ", 0x00003000)
{
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.ISEN, FieldUnitObj)
    External (_SB_.LL1E, FieldUnitObj)
    External (_SB_.LL2E, FieldUnitObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP01.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP01.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP01.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP01.VDID, FieldUnitObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP02.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP02.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP02.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP02.VDID, FieldUnitObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP03.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP03.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP03.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP03.VDID, FieldUnitObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP04.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP04.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP04.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP04.VDID, FieldUnitObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP05.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP05.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP05.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP05.VDID, FieldUnitObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP06.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP06.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP06.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP06.VDID, FieldUnitObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP07.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP07.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP07.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP07.VDID, FieldUnitObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP08.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP08.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP08.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP08.VDID, FieldUnitObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP09.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP09.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP09.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP09.VDID, FieldUnitObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP10.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP10.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP10.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP10.VDID, FieldUnitObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP11.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP11.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP11.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP11.VDID, FieldUnitObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP12.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP12.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP12.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP12.VDID, FieldUnitObj)
    External (_SB_.PC00.TCON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TG0N, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TG1N, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0.HPEX, IntObj)
    External (_SB_.PC00.TRP0.HPSX, IntObj)
    External (_SB_.PC00.TRP0.PMEX, IntObj)
    External (_SB_.PC00.TRP0.PMSX, IntObj)
    External (_SB_.PC00.TRP1.HPEX, IntObj)
    External (_SB_.PC00.TRP1.HPSX, IntObj)
    External (_SB_.PC00.TRP1.PMEX, IntObj)
    External (_SB_.PC00.TRP1.PMSX, IntObj)
    External (_SB_.PC00.TRP2.HPEX, IntObj)
    External (_SB_.PC00.TRP2.HPSX, IntObj)
    External (_SB_.PC00.TRP2.PMEX, IntObj)
    External (_SB_.PC00.TRP2.PMSX, IntObj)
    External (_SB_.PC00.TRP3.HPEX, IntObj)
    External (_SB_.PC00.TRP3.HPSX, IntObj)
    External (_SB_.PC00.TRP3.PMEX, IntObj)
    External (_SB_.PC00.TRP3.PMSX, IntObj)
    External (_SB_.PC00.TXHC, DeviceObj)
    External (_SB_.PR00, DeviceObj)
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR01, DeviceObj)
    External (_SB_.PR02, DeviceObj)
    External (_SB_.PR03, DeviceObj)
    External (_SB_.PR04, DeviceObj)
    External (_SB_.PR05, DeviceObj)
    External (_SB_.PR06, DeviceObj)
    External (_SB_.PR07, DeviceObj)
    External (_SB_.PR08, DeviceObj)
    External (_SB_.PR09, DeviceObj)
    External (_SB_.PR10, DeviceObj)
    External (_SB_.PR11, DeviceObj)
    External (_SB_.PR12, DeviceObj)
    External (_SB_.PR13, DeviceObj)
    External (_SB_.PR14, DeviceObj)
    External (_SB_.PR15, DeviceObj)
    External (_SB_.TBMD, FieldUnitObj)
    External (_SB_.TCWK, MethodObj)    // 1 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (ISCL, FieldUnitObj)
    External (ITRT, FieldUnitObj)
    External (NEXP, FieldUnitObj)
    External (OSCC, FieldUnitObj)
    External (PCHH, IntObj)
    External (PCHS, FieldUnitObj)
    External (PCHX, IntObj)
    External (PF00, IntObj)
    External (PF01, IntObj)
    External (PF02, IntObj)
    External (PF03, IntObj)
    External (PF04, IntObj)
    External (PF05, IntObj)
    External (PF06, IntObj)
    External (PF07, IntObj)
    External (PF08, IntObj)
    External (PF09, IntObj)
    External (PF10, IntObj)
    External (PF11, IntObj)
    External (PF12, IntObj)
    External (PF13, IntObj)
    External (PF14, IntObj)
    External (PF15, IntObj)
    External (TCNT, FieldUnitObj)
    External (TRTD, FieldUnitObj)

    Debug = "[SocCommon SocCmn SSDT][AcpiTableEntry]"
    Debug = Timer
    ADBG ("[SocCommon SocCmn SSDT][AcpiTableEntry]")
    If ((PCHS == PCHH)){}
    Method (NHPG, 0, Serialized)
    {
        If (CondRefOf (\_SB.PC00.RP01.HPEX))
        {
            \_SB.PC00.RP01.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP02.HPEX))
        {
            \_SB.PC00.RP02.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP03.HPEX))
        {
            \_SB.PC00.RP03.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP04.HPEX))
        {
            \_SB.PC00.RP04.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP05.HPEX))
        {
            \_SB.PC00.RP05.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP06.HPEX))
        {
            \_SB.PC00.RP06.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP07.HPEX))
        {
            \_SB.PC00.RP07.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP08.HPEX))
        {
            \_SB.PC00.RP08.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP09.HPEX))
        {
            \_SB.PC00.RP09.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP10.HPEX))
        {
            \_SB.PC00.RP10.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP11.HPEX))
        {
            \_SB.PC00.RP11.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP12.HPEX))
        {
            \_SB.PC00.RP12.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            \_SB.PC00.TRP0.HPEX = Zero
            \_SB.PC00.TRP1.HPEX = Zero
            \_SB.PC00.TRP2.HPEX = Zero
            \_SB.PC00.TRP3.HPEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP01.HPSX))
        {
            \_SB.PC00.RP01.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP02.HPSX))
        {
            \_SB.PC00.RP02.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP03.HPSX))
        {
            \_SB.PC00.RP03.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP04.HPSX))
        {
            \_SB.PC00.RP04.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP05.HPSX))
        {
            \_SB.PC00.RP05.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP06.HPSX))
        {
            \_SB.PC00.RP06.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP07.HPSX))
        {
            \_SB.PC00.RP07.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP08.HPSX))
        {
            \_SB.PC00.RP08.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP09.HPSX))
        {
            \_SB.PC00.RP09.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP10.HPSX))
        {
            \_SB.PC00.RP10.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP11.HPSX))
        {
            \_SB.PC00.RP11.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.RP12.HPSX))
        {
            \_SB.PC00.RP12.HPSX = One
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            \_SB.PC00.TRP0.HPSX = One
            \_SB.PC00.TRP1.HPSX = One
            \_SB.PC00.TRP2.HPSX = One
            \_SB.PC00.TRP3.HPSX = One
        }
    }

    Method (NPME, 0, Serialized)
    {
        If (CondRefOf (\_SB.PC00.RP01.PMEX))
        {
            \_SB.PC00.RP01.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP02.PMEX))
        {
            \_SB.PC00.RP02.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP03.PMEX))
        {
            \_SB.PC00.RP03.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP04.PMEX))
        {
            \_SB.PC00.RP04.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP05.PMEX))
        {
            \_SB.PC00.RP05.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP06.PMEX))
        {
            \_SB.PC00.RP06.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP07.PMEX))
        {
            \_SB.PC00.RP07.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP08.PMEX))
        {
            \_SB.PC00.RP08.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP09.PMEX))
        {
            \_SB.PC00.RP09.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP10.PMEX))
        {
            \_SB.PC00.RP10.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP11.PMEX))
        {
            \_SB.PC00.RP11.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP12.PMEX))
        {
            \_SB.PC00.RP12.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            \_SB.PC00.TRP0.PMEX = Zero
            \_SB.PC00.TRP1.PMEX = Zero
            \_SB.PC00.TRP2.PMEX = Zero
            \_SB.PC00.TRP3.PMEX = Zero
        }

        If (CondRefOf (\_SB.PC00.RP01.PMSX))
        {
            \_SB.PC00.RP01.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP02.PMSX))
        {
            \_SB.PC00.RP02.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP03.PMSX))
        {
            \_SB.PC00.RP03.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP04.PMSX))
        {
            \_SB.PC00.RP04.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP05.PMSX))
        {
            \_SB.PC00.RP05.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP06.PMSX))
        {
            \_SB.PC00.RP06.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP07.PMSX))
        {
            \_SB.PC00.RP07.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP08.PMSX))
        {
            \_SB.PC00.RP08.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP09.PMSX))
        {
            \_SB.PC00.RP09.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP10.PMSX))
        {
            \_SB.PC00.RP10.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP11.PMSX))
        {
            \_SB.PC00.RP11.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.RP12.PMSX))
        {
            \_SB.PC00.RP12.PMSX = One
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            \_SB.PC00.TRP0.PMSX = One
            \_SB.PC00.TRP1.PMSX = One
            \_SB.PC00.TRP2.PMSX = One
            \_SB.PC00.TRP3.PMSX = One
        }
    }

    Method (SPNT, 0, Serialized)
    {
        If (CondRefOf (\_SB.TBMD))
        {
            If ((\_SB.TBMD == One))
            {
                \_SB.CPPC = Zero
            }
        }

        If ((TCNT > One))
        {
            If ((\PF00 & 0x08))
            {
                Notify (\_SB.PR00, 0x80) // Status Change
            }

            If ((\PF01 & 0x08))
            {
                Notify (\_SB.PR01, 0x80) // Status Change
            }

            If ((\PF02 & 0x08))
            {
                Notify (\_SB.PR02, 0x80) // Status Change
            }

            If ((\PF03 & 0x08))
            {
                Notify (\_SB.PR03, 0x80) // Status Change
            }

            If ((\PF04 & 0x08))
            {
                Notify (\_SB.PR04, 0x80) // Status Change
            }

            If ((\PF05 & 0x08))
            {
                Notify (\_SB.PR05, 0x80) // Status Change
            }

            If ((\PF06 & 0x08))
            {
                Notify (\_SB.PR06, 0x80) // Status Change
            }

            If ((\PF07 & 0x08))
            {
                Notify (\_SB.PR07, 0x80) // Status Change
            }

            If ((\PF08 & 0x08))
            {
                Notify (\_SB.PR08, 0x80) // Status Change
            }

            If ((\PF09 & 0x08))
            {
                Notify (\_SB.PR09, 0x80) // Status Change
            }

            If ((\PF10 & 0x08))
            {
                Notify (\_SB.PR10, 0x80) // Status Change
            }

            If ((\PF11 & 0x08))
            {
                Notify (\_SB.PR11, 0x80) // Status Change
            }

            If ((\PF12 & 0x08))
            {
                Notify (\_SB.PR12, 0x80) // Status Change
            }

            If ((\PF13 & 0x08))
            {
                Notify (\_SB.PR13, 0x80) // Status Change
            }

            If ((\PF14 & 0x08))
            {
                Notify (\_SB.PR14, 0x80) // Status Change
            }

            If ((\PF15 & 0x08))
            {
                Notify (\_SB.PR15, 0x80) // Status Change
            }
        }
        Else
        {
            Notify (\_SB.PR00, 0x80) // Status Change
        }

        If ((TCNT > One))
        {
            If (((\PF00 & 0x08) && (\PF00 & 0x10)))
            {
                Notify (\_SB.PR00, 0x81) // Information Change
            }

            If (((\PF01 & 0x08) && (\PF01 & 0x10)))
            {
                Notify (\_SB.PR01, 0x81) // Information Change
            }

            If (((\PF02 & 0x08) && (\PF02 & 0x10)))
            {
                Notify (\_SB.PR02, 0x81) // Information Change
            }

            If (((\PF03 & 0x08) && (\PF03 & 0x10)))
            {
                Notify (\_SB.PR03, 0x81) // Information Change
            }

            If (((\PF04 & 0x08) && (\PF04 & 0x10)))
            {
                Notify (\_SB.PR04, 0x81) // Information Change
            }

            If (((\PF05 & 0x08) && (\PF05 & 0x10)))
            {
                Notify (\_SB.PR05, 0x81) // Information Change
            }

            If (((\PF06 & 0x08) && (\PF06 & 0x10)))
            {
                Notify (\_SB.PR06, 0x81) // Information Change
            }

            If (((\PF07 & 0x08) && (\PF07 & 0x10)))
            {
                Notify (\_SB.PR07, 0x81) // Information Change
            }

            If (((\PF08 & 0x08) && (\PF08 & 0x10)))
            {
                Notify (\_SB.PR08, 0x81) // Information Change
            }

            If (((\PF09 & 0x08) && (\PF09 & 0x10)))
            {
                Notify (\_SB.PR09, 0x81) // Information Change
            }

            If (((\PF10 & 0x08) && (\PF10 & 0x10)))
            {
                Notify (\_SB.PR10, 0x81) // Information Change
            }

            If (((\PF11 & 0x08) && (\PF11 & 0x10)))
            {
                Notify (\_SB.PR11, 0x81) // Information Change
            }

            If (((\PF12 & 0x08) && (\PF12 & 0x10)))
            {
                Notify (\_SB.PR12, 0x81) // Information Change
            }

            If (((\PF13 & 0x08) && (\PF13 & 0x10)))
            {
                Notify (\_SB.PR13, 0x81) // Information Change
            }

            If (((\PF14 & 0x08) && (\PF14 & 0x10)))
            {
                Notify (\_SB.PR14, 0x81) // Information Change
            }

            If (((\PF15 & 0x08) && (\PF15 & 0x10)))
            {
                Notify (\_SB.PR15, 0x81) // Information Change
            }
        }
        Else
        {
            Notify (\_SB.PR00, 0x81) // Information Change
        }
    }

    Method (UPIS, 1, Serialized)
    {
        If (CondRefOf (\_SB.ISEN))
        {
            If ((\_SB.ISEN == One))
            {
                If (CondRefOf (\ISCL))
                {
                    Local0 = ISCL /* External reference */
                    ADBG (Concatenate ("Get default Isys value: ", ToHexString (Local0)))
                    If (CondRefOf (\_SB.LL1E))
                    {
                        If ((\_SB.LL1E == One))
                        {
                            If ((Arg0 != Zero))
                            {
                                Local0 &= 0xFFFFFFFFFFFF7FFF
                            }
                            Else
                            {
                                Local0 |= 0x8000
                            }
                        }
                    }
                    Else
                    {
                        ADBG ("LL1E is not defined in NVS")
                    }

                    If (CondRefOf (\_SB.LL2E))
                    {
                        If ((\_SB.LL2E == One))
                        {
                            If ((Arg0 != Zero))
                            {
                                Local0 &= 0xFFFF7FFFFFFFFFFF
                            }
                            Else
                            {
                                Local0 |= 0x0000800000000000
                            }
                        }
                    }
                    Else
                    {
                        ADBG ("LL2E is not defined in NVS")
                    }

                    ADBG (Concatenate ("Update Isys to ", ToHexString (Local0)))
                    ISCL = Local0
                }
            }
            Else
            {
                ADBG ("ThETA Ibatt disable!")
            }
        }
        Else
        {
            ADBG ("ISEN is not definde! ThETA Ibatt Feature Failure!")
        }
    }

    Method (SPTS, 1, NotSerialized)
    {
        If (CondRefOf (\_SB.PC00.TXHC))
        {
            If (TRTD)
            {
                \_SB.PC00.TCON ()
            }

            If (ITRT)
            {
                \_SB.PC00.TG0N ()
                \_SB.PC00.TG1N ()
            }
        }
    }

    Method (SWAK, 2, NotSerialized)
    {
        If (NEXP)
        {
            If ((OSCC & One))
            {
                NHPG ()
            }

            If ((OSCC & 0x04))
            {
                NPME ()
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((\_SB.PC00.RP01.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x02) != One))
                {
                    Notify (\_SB.PC00.RP01, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP02.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x04) != One))
                {
                    Notify (\_SB.PC00.RP02, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP03.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x08) != One))
                {
                    Notify (\_SB.PC00.RP03, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP04.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x10) != One))
                {
                    Notify (\_SB.PC00.RP04, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP05.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x20) != One))
                {
                    Notify (\_SB.PC00.RP05, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP06.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x40) != One))
                {
                    Notify (\_SB.PC00.RP06, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP07.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x80) != One))
                {
                    Notify (\_SB.PC00.RP07, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP08.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x0100) != One))
                {
                    Notify (\_SB.PC00.RP08, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP09.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x0200) != One))
                {
                    Notify (\_SB.PC00.RP09, Zero) // Bus Check
                }
            }

            If ((\_SB.PC00.RP10.VDID != 0xFFFFFFFF))
            {
                If (((Arg1 & 0x0400) != One))
                {
                    Notify (\_SB.PC00.RP10, Zero) // Bus Check
                }
            }

            If ((PCHS == PCHH))
            {
                If ((\_SB.PC00.RP11.VDID != 0xFFFFFFFF))
                {
                    If (((Arg1 & 0x0800) != One))
                    {
                        Notify (\_SB.PC00.RP11, Zero) // Bus Check
                    }
                }

                If ((\_SB.PC00.RP12.VDID != 0xFFFFFFFF))
                {
                    If (((Arg1 & 0x1000) != One))
                    {
                        Notify (\_SB.PC00.RP12, Zero) // Bus Check
                    }
                }
            }

            If (CondRefOf (\_SB.PC00.TXHC))
            {
                \_SB.TCWK (Arg0)
            }
        }
    }

    ADBG ("[SocCommon SocCmn SSDT][AcpiTableExit]")
    Debug = "[SocCommon SocCmn SSDT][AcpiTableExit]"
    Debug = Timer
}

