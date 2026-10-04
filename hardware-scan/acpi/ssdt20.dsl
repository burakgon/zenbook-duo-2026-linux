/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt20.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000FAD (4013)
 *     Revision         0x02
 *     Checksum         0x44
 *     OEM ID           "Intel_"
 *     OEM Table ID     "UcsiTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "Intel_", "UcsiTabl", 0x00001000)
{
    External (_SB_.PC00.LPCB.EC0_.BRAH, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CCI0, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CCI1, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CCI2, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CCI3, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CMUT, MutexObj)
    External (_SB_.PC00.LPCB.EC0_.CTL0, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL1, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL2, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL3, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL4, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL5, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL6, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.CTL7, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI0, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI1, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI2, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI3, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI4, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI5, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI6, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI7, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI8, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGI9, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGIA, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGIB, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGIC, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGID, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGIE, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGIF, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO0, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO1, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO2, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO3, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO4, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO5, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO6, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO7, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO8, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGO9, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGOA, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGOB, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGOC, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGOD, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGOE, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.MGOF, UnknownObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (UBCB, UnknownObj)
    External (UCMS, UnknownObj)
    External (UDRS, UnknownObj)
    External (USTC, UnknownObj)
    External (XDCE, UnknownObj)

    OperationRegion (UPNV, SystemMemory, 0x5CA9B000, 0x0042)
    Field (UPNV, AnyAcc, Lock, Preserve)
    {
        UBCB,   32, 
        TCCM,   16, 
        TP1U,   8, 
        TP2U,   8, 
        TP3U,   8, 
        TP4U,   8, 
        TP5U,   8, 
        TP6U,   8, 
        TP7U,   8, 
        TP8U,   8, 
        TP9U,   8, 
        TPAU,   8, 
        CRP1,   8, 
        CRP2,   8, 
        CRP3,   8, 
        CRP4,   8, 
        CRP5,   8, 
        CRP6,   8, 
        CRP7,   8, 
        CRP8,   8, 
        CRP9,   8, 
        CRPA,   8, 
        CRV1,   8, 
        CRV2,   8, 
        CRV3,   8, 
        CRV4,   8, 
        CRV5,   8, 
        CRV6,   8, 
        CRV7,   8, 
        CRV8,   8, 
        CRV9,   8, 
        CRVA,   8, 
        CRC1,   8, 
        CRC2,   8, 
        CRC3,   8, 
        CRC4,   8, 
        CRC5,   8, 
        CRC6,   8, 
        CRC7,   8, 
        CRC8,   8, 
        CRC9,   8, 
        CRCA,   8, 
        CRT1,   8, 
        CRT2,   8, 
        CRT3,   8, 
        CRT4,   8, 
        CRT5,   8, 
        CRT6,   8, 
        CRT7,   8, 
        CRT8,   8, 
        CRT9,   8, 
        CRTA,   8, 
        CRB1,   8, 
        CRB2,   8, 
        CRB3,   8, 
        CRB4,   8, 
        CRB5,   8, 
        CRB6,   8, 
        CRB7,   8, 
        CRB8,   8, 
        CRB9,   8, 
        CRBA,   8
    }

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })
            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Name (UCPD, Package (0x01)
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x61, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // a.......
                        }
                    })
                    CreateField (DerefOf (UCPD [Zero]), 0x40, One, VISI)
                    VISI = One
                    CreateField (DerefOf (UCPD [Zero]), 0x57, 0x08, GPOS)
                    GPOS = One
                    If ((USTC == One))
                    {
                        Return (UCPD) /* \_SB_.UBTC.CR01._PLD.UCPD */
                    }
                }
            }

            Device (CR02)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Name (UCPD, Package (0x01)
                    {
                        Buffer (0x10)
                        {
                            /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x61, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // a.......
                        }
                    })
                    CreateField (DerefOf (UCPD [Zero]), 0x40, One, VISI)
                    VISI = One
                    CreateField (DerefOf (UCPD [Zero]), 0x57, 0x08, GPOS)
                    GPOS = 0x02
                    If ((USTC == One))
                    {
                        Return (UCPD) /* \_SB_.UBTC.CR02._PLD.UCPD */
                    }
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* \UBCB */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((USTC == One) && (TCCM != Zero)))
                {
                    If ((UCMS != Zero))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (MGBS, 0, Serialized)
            {
                If ((UCMS >= 0x02))
                {
                    Local0 = 0x0100
                }
                Else
                {
                    Local0 = 0x10
                }

                Return (Local0)
            }

            Method (UCMI, 0, Serialized)
            {
                Local0 = 0x10
                Local1 = (UBCB + Local0)
                Return (Local1)
            }

            Method (UCMO, 0, Serialized)
            {
                Local0 = MGBS ()
                Local0 = (Local0 + 0x10)
                Local1 = (UBCB + Local0)
                Return (Local1)
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x10)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8
            }

            OperationRegion (USCI, SystemMemory, UCMI (), MGBS ())
            Field (USCI, ByteAcc, Lock, Preserve)
            {
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8
            }

            OperationRegion (UCSO, SystemMemory, UCMO (), MGBS ())
            Field (UCSO, ByteAcc, Lock, Preserve)
            {
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x3F                                             // ?
                            })
                        }
                        Case (One)
                        {
                            Local1 = Acquire (\_SB.PC00.LPCB.EC0.CMUT, 0xFFFF)
                            If ((Local1 == Zero))
                            {
                                \_SB.PC00.LPCB.EC0.BRAH = 0xC9
                                \_SB.PC00.LPCB.EC0.MGO0 = MGO0 /* \_SB_.UBTC.MGO0 */
                                \_SB.PC00.LPCB.EC0.MGO1 = MGO1 /* \_SB_.UBTC.MGO1 */
                                \_SB.PC00.LPCB.EC0.MGO2 = MGO2 /* \_SB_.UBTC.MGO2 */
                                \_SB.PC00.LPCB.EC0.MGO3 = MGO3 /* \_SB_.UBTC.MGO3 */
                                \_SB.PC00.LPCB.EC0.MGO4 = MGO4 /* \_SB_.UBTC.MGO4 */
                                \_SB.PC00.LPCB.EC0.MGO5 = MGO5 /* \_SB_.UBTC.MGO5 */
                                \_SB.PC00.LPCB.EC0.MGO6 = MGO6 /* \_SB_.UBTC.MGO6 */
                                \_SB.PC00.LPCB.EC0.MGO7 = MGO7 /* \_SB_.UBTC.MGO7 */
                                \_SB.PC00.LPCB.EC0.MGO8 = MGO8 /* \_SB_.UBTC.MGO8 */
                                \_SB.PC00.LPCB.EC0.MGO9 = MGO9 /* \_SB_.UBTC.MGO9 */
                                \_SB.PC00.LPCB.EC0.MGOA = MGOA /* \_SB_.UBTC.MGOA */
                                \_SB.PC00.LPCB.EC0.MGOB = MGOB /* \_SB_.UBTC.MGOB */
                                \_SB.PC00.LPCB.EC0.MGOC = MGOC /* \_SB_.UBTC.MGOC */
                                \_SB.PC00.LPCB.EC0.MGOD = MGOD /* \_SB_.UBTC.MGOD */
                                \_SB.PC00.LPCB.EC0.MGOE = MGOE /* \_SB_.UBTC.MGOE */
                                \_SB.PC00.LPCB.EC0.MGOF = MGOF /* \_SB_.UBTC.MGOF */
                                \_SB.PC00.LPCB.EC0.CTL1 = CTL1 /* \_SB_.UBTC.CTL1 */
                                \_SB.PC00.LPCB.EC0.CTL2 = CTL2 /* \_SB_.UBTC.CTL2 */
                                \_SB.PC00.LPCB.EC0.CTL3 = CTL3 /* \_SB_.UBTC.CTL3 */
                                \_SB.PC00.LPCB.EC0.CTL4 = CTL4 /* \_SB_.UBTC.CTL4 */
                                \_SB.PC00.LPCB.EC0.CTL5 = CTL5 /* \_SB_.UBTC.CTL5 */
                                \_SB.PC00.LPCB.EC0.CTL6 = CTL6 /* \_SB_.UBTC.CTL6 */
                                \_SB.PC00.LPCB.EC0.CTL7 = CTL7 /* \_SB_.UBTC.CTL7 */
                                \_SB.PC00.LPCB.EC0.CTL0 = CTL0 /* \_SB_.UBTC.CTL0 */
                                \_SB.PC00.LPCB.EC0.BRAH = 0xC9
                                Release (\_SB.PC00.LPCB.EC0.CMUT)
                            }

                            P8XH (Zero, 0xE0)
                        }
                        Case (0x02)
                        {
                            Local1 = Acquire (\_SB.PC00.LPCB.EC0.CMUT, 0xFFFF)
                            If ((Local1 == Zero))
                            {
                                \_SB.PC00.LPCB.EC0.BRAH = 0xC9
                                MGI0 = \_SB.PC00.LPCB.EC0.MGI0 /* External reference */
                                MGI1 = \_SB.PC00.LPCB.EC0.MGI1 /* External reference */
                                MGI2 = \_SB.PC00.LPCB.EC0.MGI2 /* External reference */
                                MGI3 = \_SB.PC00.LPCB.EC0.MGI3 /* External reference */
                                MGI4 = \_SB.PC00.LPCB.EC0.MGI4 /* External reference */
                                MGI5 = \_SB.PC00.LPCB.EC0.MGI5 /* External reference */
                                MGI6 = \_SB.PC00.LPCB.EC0.MGI6 /* External reference */
                                MGI7 = \_SB.PC00.LPCB.EC0.MGI7 /* External reference */
                                MGI8 = \_SB.PC00.LPCB.EC0.MGI8 /* External reference */
                                MGI9 = \_SB.PC00.LPCB.EC0.MGI9 /* External reference */
                                MGIA = \_SB.PC00.LPCB.EC0.MGIA /* External reference */
                                MGIB = \_SB.PC00.LPCB.EC0.MGIB /* External reference */
                                MGIC = \_SB.PC00.LPCB.EC0.MGIC /* External reference */
                                MGID = \_SB.PC00.LPCB.EC0.MGID /* External reference */
                                MGIE = \_SB.PC00.LPCB.EC0.MGIE /* External reference */
                                MGIF = \_SB.PC00.LPCB.EC0.MGIF /* External reference */
                                CCI0 = \_SB.PC00.LPCB.EC0.CCI0 /* External reference */
                                CCI1 = \_SB.PC00.LPCB.EC0.CCI1 /* External reference */
                                CCI2 = \_SB.PC00.LPCB.EC0.CCI2 /* External reference */
                                CCI3 = \_SB.PC00.LPCB.EC0.CCI3 /* External reference */
                                \_SB.PC00.LPCB.EC0.BRAH = 0xC9
                                Release (\_SB.PC00.LPCB.EC0.CMUT)
                            }
                        }
                        Case (0x03)
                        {
                            Return (XDCE) /* External reference */
                        }
                        Case (0x04)
                        {
                            Return (UDRS) /* External reference */
                        }
                        Case (0x05)
                        {
                            If ((UCMS >= 0x02))
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
                                })
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

