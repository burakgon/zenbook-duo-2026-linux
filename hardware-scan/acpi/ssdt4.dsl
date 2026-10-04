/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00004BDB (19419)
 *     Revision         0x02
 *     Checksum         0x57
 *     OEM ID           "DptfTb"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "DptfTb", "DptfTabl", 0x00001000)
{
    External (_SB_.AAC0, FieldUnitObj)
    External (_SB_.ACRT, FieldUnitObj)
    External (_SB_.APSV, FieldUnitObj)
    External (_SB_.CBMI, FieldUnitObj)
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CLVL, FieldUnitObj)
    External (_SB_.CPUW, IntObj)
    External (_SB_.DPTF.UVTH, MethodObj)    // 1 Arguments
    External (_SB_.IETM, DeviceObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_.ECAV, MethodObj)    // 0 Arguments
    External (_SB_.PC00.LPCB.EC0_.RP2E, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC0_.WP2E, MethodObj)    // 2 Arguments
    External (_SB_.PC00.LPCB.H_EC, DeviceObj)
    External (_SB_.PC00.MC__.MHBR, FieldUnitObj)
    External (_SB_.PC00.TCPU, DeviceObj)
    External (_SB_.PL1X, FieldUnitObj)
    External (_SB_.PL2X, FieldUnitObj)
    External (_SB_.PLDT.ART0, PkgObj)
    External (_SB_.PLDT.ART1, PkgObj)
    External (_SB_.PLDT.GDDV, MethodObj)    // 0 Arguments
    External (_SB_.PLDT.GHID, MethodObj)    // 1 Arguments
    External (_SB_.PLDT.PSVT, PkgObj)
    External (_SB_.PLDT.PTRT, MethodObj)    // 0 Arguments
    External (_SB_.PLWX, FieldUnitObj)
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TPC, IntObj)
    External (_SB_.PR00._TSD, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR00.TSMC, PkgObj)
    External (_SB_.PR00.TSMF, PkgObj)
    External (_SB_.SLPB, DeviceObj)
    External (_TZ_.ETMD, IntObj)
    External (_TZ_.THRM, ThermalZoneObj)
    External (ACTT, IntObj)
    External (ATPC, IntObj)
    External (CRTT, IntObj)
    External (HIDW, MethodObj)    // 4 Arguments
    External (HIWC, MethodObj)    // 1 Arguments
    External (PF00, IntObj)
    External (PNHM, IntObj)
    External (PSVT, IntObj)
    External (PTPC, IntObj)
    External (PWRS, IntObj)
    External (TCNT, IntObj)
    External (TSOD, IntObj)

    Debug = "[Dptf DptfTabl SSDT][AcpiTableEntry]"
    Debug = Timer
    Scope (\_SB)
    {
        OperationRegion (DNVS, SystemMemory, 0x5CB6B000, 0x0029)
        Field (DNVS, AnyAcc, Lock, Preserve)
        {
            DTTE,   8, 
            DCFE,   32, 
            FND1,   8, 
            FND2,   8, 
            FND3,   8, 
            CHGE,   8, 
            BATR,   8, 
            S1DE,   8, 
            S2DE,   8, 
            S3DE,   8, 
            S4DE,   8, 
            S5DE,   8, 
            PCHE,   8, 
            PPSZ,   32, 
            PWRE,   8, 
            PPPR,   16, 
            ODV0,   8, 
            ODV1,   8, 
            ODV2,   8, 
            ODV3,   8, 
            ODV4,   8, 
            ODV5,   8, 
            CBCF,   8, 
            TTEF,   8, 
            FNAU,   8, 
            PCGL,   16, 
            PUPR,   8, 
            PLOR,   8, 
            PRTE,   16, 
            HEOL,   8, 
            TNML,   16
        }

        If (CondRefOf (\_SB.IETM))
        {
            Scope (\_SB.IETM)
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (CondRefOf (HIWC))
                    {
                        If (HIWC (Arg0))
                        {
                            If (CondRefOf (HIDW))
                            {
                                Return (HIDW (Arg0, Arg1, Arg2, Arg3))
                            }
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Name (PTRP, Zero)
                Name (PSEM, Zero)
                Name (ATRP, Zero)
                Name (ASEM, Zero)
                Name (YTRP, Zero)
                Name (YSEM, Zero)
                Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
                {
                    CreateDWordField (Arg3, Zero, STS1)
                    CreateDWordField (Arg3, 0x04, CAP1)
                    If ((Arg1 != One))
                    {
                        STS1 &= 0xFFFFFF00
                        STS1 |= 0x0A
                        Return (Arg3)
                    }

                    If ((Arg2 != 0x02))
                    {
                        STS1 &= 0xFFFFFF00
                        STS1 |= 0x02
                        Return (Arg3)
                    }

                    If (CondRefOf (\_SB.APSV))
                    {
                        If ((PSEM == Zero))
                        {
                            PSEM = One
                            PTRP = \_SB.APSV /* External reference */
                        }
                    }

                    If (CondRefOf (\_SB.AAC0))
                    {
                        If ((ASEM == Zero))
                        {
                            ASEM = One
                            ATRP = \_SB.AAC0 /* External reference */
                        }
                    }

                    If (CondRefOf (\_SB.ACRT))
                    {
                        If ((YSEM == Zero))
                        {
                            YSEM = One
                            YTRP = \_SB.ACRT /* External reference */
                        }
                    }

                    If ((Arg0 == ToUUID ("b23ba85d-c8b7-3542-88de-8de2ffcfd698") /* Unknown UUID */))
                    {
                        If (~(STS1 & One))
                        {
                            If ((CAP1 & One))
                            {
                                If ((CAP1 & 0x02))
                                {
                                    \_SB.AAC0 = 0x6E
                                    \_TZ.ETMD = Zero
                                }
                                Else
                                {
                                    \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                                    \_TZ.ETMD = One
                                }

                                If ((CAP1 & 0x04))
                                {
                                    \_SB.APSV = 0x6E
                                }
                                Else
                                {
                                    \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                                }

                                If ((CAP1 & 0x08))
                                {
                                    \_SB.ACRT = 0xD2
                                }
                                Else
                                {
                                    \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                                }

                                If (CondRefOf (\_TZ.THRM))
                                {
                                    Notify (\_TZ.THRM, 0x81) // Information Change
                                }
                            }
                            Else
                            {
                                \_SB.ACRT = YTRP /* \_SB_.IETM.YTRP */
                                \_SB.APSV = PTRP /* \_SB_.IETM.PTRP */
                                \_SB.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                                \_TZ.ETMD = One
                            }

                            If (CondRefOf (\_TZ.THRM))
                            {
                                Notify (\_TZ.THRM, 0x81) // Information Change
                            }
                        }

                        Return (Arg3)
                    }

                    Return (Arg3)
                }

                Method (DCFG, 0, NotSerialized)
                {
                    Return (\_SB.DCFE)
                }

                Name (ODVX, Package (0x06)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Method (ODVP, 0, Serialized)
                {
                    ODVX [Zero] = \_SB.ODV0
                    ODVX [One] = \_SB.ODV1
                    ODVX [0x02] = \_SB.ODV2
                    ODVX [0x03] = \_SB.ODV3
                    ODVX [0x04] = \_SB.ODV4
                    ODVX [0x05] = \_SB.ODV5
                    Return (ODVX) /* \_SB_.IETM.ODVX */
                }

                Name (PTTL, 0x14)
                Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
                {
                    Return (\_SB.PLDT.PTRT ())
                }

                Method (PSVT, 0, NotSerialized)
                {
                    Return (\_SB.PLDT.PSVT) /* External reference */
                }

                Method (_ART, 0, NotSerialized)  // _ART: Active Cooling Relationship Table
                {
                    If (\_SB.IETM.SEN3.CTYP)
                    {
                        Return (\_SB.PLDT.ART1) /* External reference */
                    }
                    Else
                    {
                        Return (\_SB.PLDT.ART0) /* External reference */
                    }
                }

                Method (GDDV, 0, Serialized)
                {
                    Name (CUWC, Package (0x03)
                    {
                        0x03, 
                        0x04, 
                        Zero
                    })
                    If ((\_SB.CPUW == DerefOf (CUWC [Zero])))
                    {
                        Return (Package (0x01)
                        {
                            Buffer (0x0C3B)
                            {
                                /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                                /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                                /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                                /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                                /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0xF1, 0x01, 0xB1, 0x9D,  // ........
                                /* 0070 */  0x84, 0x9D, 0xB7, 0xA4, 0x03, 0x89, 0x31, 0x86,  // ......1.
                                /* 0078 */  0x12, 0x56, 0xBD, 0x22, 0xF7, 0x61, 0x0D, 0x69,  // .V.".a.i
                                /* 0080 */  0xDA, 0x6D, 0x8A, 0x98, 0x4A, 0x92, 0xCF, 0x8F,  // .m..J...
                                /* 0088 */  0x61, 0x3D, 0xF3, 0xD8, 0xA7, 0x0B, 0x00, 0x00,  // a=......
                                /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                                /* 0098 */  0x01, 0xA6, 0x0C, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                                /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                                /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                                /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                                /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                                /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x41, 0x76, 0xB0,  // u8...Av.
                                /* 00D0 */  0x98, 0xB4, 0x2C, 0xA7, 0x83, 0x06, 0x61, 0x7A,  // ..,...az
                                /* 00D8 */  0xBD, 0x1E, 0x5F, 0xE5, 0x42, 0x41, 0xCF, 0x8C,  // .._.BA..
                                /* 00E0 */  0x58, 0x1D, 0xD3, 0x2F, 0xC5, 0xFB, 0x78, 0xCB,  // X../..x.
                                /* 00E8 */  0x23, 0x96, 0x95, 0x3C, 0x54, 0xC0, 0x08, 0xCF,  // #..<T...
                                /* 00F0 */  0x03, 0x4B, 0x2C, 0x3E, 0x85, 0x33, 0x48, 0xDC,  // .K,>.3H.
                                /* 00F8 */  0x06, 0xF0, 0x5B, 0x03, 0x64, 0x8C, 0xAA, 0xDB,  // ..[.d...
                                /* 0100 */  0x0E, 0x23, 0x86, 0x43, 0x31, 0x4B, 0xC4, 0xC5,  // .#.C1K..
                                /* 0108 */  0x8F, 0xFF, 0xF4, 0x85, 0xFD, 0x2C, 0x2B, 0x24,  // .....,+$
                                /* 0110 */  0xE2, 0x02, 0x93, 0x11, 0x52, 0x63, 0x83, 0x10,  // ....Rc..
                                /* 0118 */  0x2E, 0xB3, 0x3E, 0xFC, 0x18, 0x02, 0xE4, 0xF4,  // ..>.....
                                /* 0120 */  0xB2, 0x89, 0xB1, 0xA9, 0x32, 0xC2, 0x00, 0xDE,  // ....2...
                                /* 0128 */  0x0C, 0x16, 0x86, 0x7E, 0x97, 0x84, 0x74, 0xCF,  // ...~..t.
                                /* 0130 */  0x50, 0xF8, 0x83, 0x9E, 0xE2, 0xB2, 0x29, 0x04,  // P.....).
                                /* 0138 */  0xC6, 0xD8, 0x93, 0x57, 0x84, 0x60, 0xB1, 0x8D,  // ...W.`..
                                /* 0140 */  0x67, 0xCC, 0x76, 0xB1, 0x57, 0x2D, 0x06, 0x56,  // g.v.W-.V
                                /* 0148 */  0xE6, 0xA6, 0x2A, 0x2A, 0x1B, 0x6E, 0x42, 0x6A,  // ..**.nBj
                                /* 0150 */  0x89, 0xF3, 0x0B, 0x62, 0xF8, 0xDE, 0x0C, 0x40,  // ...b...@
                                /* 0158 */  0xDD, 0x71, 0x4D, 0xD0, 0xDE, 0x62, 0x71, 0x95,  // .qM..bq.
                                /* 0160 */  0x1C, 0xF8, 0xFA, 0xD9, 0xAC, 0x5B, 0x56, 0x65,  // .....[Ve
                                /* 0168 */  0xC7, 0xE0, 0xA3, 0x22, 0x71, 0x42, 0x5C, 0xE8,  // ..."qB\.
                                /* 0170 */  0xBE, 0xEA, 0x1A, 0x2E, 0x03, 0xBD, 0xED, 0x4E,  // .......N
                                /* 0178 */  0x32, 0x01, 0x75, 0xE3, 0x16, 0x24, 0xD4, 0xA8,  // 2.u..$..
                                /* 0180 */  0xB5, 0x23, 0x17, 0xEF, 0x89, 0x79, 0x45, 0x02,  // .#...yE.
                                /* 0188 */  0x41, 0xFD, 0xDC, 0xB3, 0xEC, 0xB1, 0x96, 0xF0,  // A.......
                                /* 0190 */  0x1F, 0x92, 0x83, 0x5A, 0x33, 0xEF, 0x93, 0x95,  // ...Z3...
                                /* 0198 */  0x3B, 0xBB, 0x06, 0x0A, 0xB1, 0xC3, 0x40, 0xF4,  // ;.....@.
                                /* 01A0 */  0xF2, 0xCF, 0xFB, 0x7E, 0x02, 0xD7, 0xD2, 0x20,  // ...~... 
                                /* 01A8 */  0x3E, 0xB5, 0xEA, 0x7B, 0x63, 0xBF, 0x58, 0x52,  // >..{c.XR
                                /* 01B0 */  0xF8, 0x8E, 0xEE, 0x8C, 0x6C, 0x52, 0xE9, 0xA4,  // ....lR..
                                /* 01B8 */  0x00, 0x03, 0x45, 0xFE, 0x38, 0xF6, 0xF3, 0xD9,  // ..E.8...
                                /* 01C0 */  0x2A, 0x96, 0xBF, 0x2F, 0x93, 0x1F, 0xB9, 0x66,  // *../...f
                                /* 01C8 */  0x72, 0x7F, 0xFD, 0xCE, 0xE3, 0x7C, 0x9C, 0x3B,  // r....|.;
                                /* 01D0 */  0xF5, 0x80, 0x0E, 0x43, 0xE8, 0x43, 0xA3, 0x44,  // ...C.C.D
                                /* 01D8 */  0x28, 0x47, 0xEF, 0x10, 0xFA, 0xDD, 0x10, 0x60,  // (G.....`
                                /* 01E0 */  0x70, 0x91, 0x93, 0xD2, 0x86, 0x3A, 0x7C, 0xA4,  // p....:|.
                                /* 01E8 */  0xAF, 0x09, 0xB2, 0x53, 0xD8, 0x50, 0xFB, 0x09,  // ...S.P..
                                /* 01F0 */  0x2A, 0x4B, 0x5F, 0x3E, 0x2C, 0x99, 0x8C, 0x9F,  // *K_>,...
                                /* 01F8 */  0x36, 0x65, 0xBE, 0xEE, 0x69, 0x3F, 0xA4, 0x58,  // 6e..i?.X
                                /* 0200 */  0x88, 0x68, 0x16, 0x46, 0x9B, 0x73, 0xE2, 0x7A,  // .h.F.s.z
                                /* 0208 */  0xCC, 0x40, 0xAC, 0x8D, 0xF8, 0x9F, 0x62, 0xA7,  // .@....b.
                                /* 0210 */  0x7E, 0x6F, 0x0C, 0x17, 0x17, 0x5C, 0x7D, 0x5E,  // ~o...\}^
                                /* 0218 */  0x22, 0x9C, 0xF3, 0x3C, 0xBC, 0xDB, 0x93, 0xC8,  // "..<....
                                /* 0220 */  0x65, 0x33, 0x38, 0xDE, 0x17, 0xDC, 0x48, 0xD7,  // e38...H.
                                /* 0228 */  0xEA, 0xA6, 0xE6, 0xAC, 0x9B, 0xCD, 0x84, 0x31,  // .......1
                                /* 0230 */  0x92, 0x19, 0xC9, 0xBB, 0x23, 0x48, 0x8B, 0x20,  // ....#H. 
                                /* 0238 */  0xB5, 0xB0, 0x50, 0xF9, 0xC9, 0xAB, 0xA5, 0xEC,  // ..P.....
                                /* 0240 */  0x3E, 0x82, 0xE1, 0x17, 0x10, 0xCE, 0x74, 0xAB,  // >.....t.
                                /* 0248 */  0x82, 0xEC, 0xE0, 0xF5, 0x18, 0xB4, 0xA4, 0x66,  // .......f
                                /* 0250 */  0xC6, 0xA0, 0xC3, 0x7F, 0xA5, 0x40, 0x1C, 0xD5,  // .....@..
                                /* 0258 */  0xC4, 0xA3, 0xAE, 0x3B, 0x6B, 0x28, 0xA1, 0x25,  // ...;k(.%
                                /* 0260 */  0xE5, 0xCA, 0x17, 0xE6, 0x57, 0x65, 0x80, 0x97,  // ....We..
                                /* 0268 */  0x52, 0xAB, 0xCC, 0x1C, 0x2B, 0x21, 0x76, 0xB2,  // R...+!v.
                                /* 0270 */  0x09, 0xCF, 0x31, 0x7C, 0x7C, 0xDB, 0x84, 0x74,  // ..1||..t
                                /* 0278 */  0x1C, 0xFA, 0x71, 0x87, 0x11, 0x71, 0x3C, 0x0E,  // ..q..q<.
                                /* 0280 */  0xA1, 0x8C, 0xA1, 0x6F, 0xB9, 0x37, 0x8B, 0x1F,  // ...o.7..
                                /* 0288 */  0xEA, 0xE2, 0xBF, 0xC8, 0x63, 0xFF, 0xA3, 0x7C,  // ....c..|
                                /* 0290 */  0x52, 0xEC, 0x1A, 0xF2, 0xD1, 0xD9, 0xE2, 0x01,  // R.......
                                /* 0298 */  0x35, 0xF6, 0x4D, 0x86, 0xCF, 0x25, 0xF7, 0x7B,  // 5.M..%.{
                                /* 02A0 */  0x87, 0x3B, 0x66, 0x88, 0xC0, 0x21, 0x73, 0x3A,  // .;f..!s:
                                /* 02A8 */  0xFA, 0x9A, 0x43, 0xA0, 0xA1, 0xEF, 0x8A, 0x6B,  // ..C....k
                                /* 02B0 */  0x07, 0xDD, 0x55, 0x71, 0x19, 0xC4, 0xDF, 0x37,  // ..Uq...7
                                /* 02B8 */  0xE3, 0xB5, 0xCE, 0xDD, 0x6D, 0x4E, 0x2C, 0x59,  // ....mN,Y
                                /* 02C0 */  0xC3, 0x91, 0x58, 0x14, 0xC9, 0xFA, 0xD6, 0xF1,  // ..X.....
                                /* 02C8 */  0xA2, 0xC5, 0xAD, 0x55, 0x57, 0x3E, 0x2F, 0x0C,  // ...UW>/.
                                /* 02D0 */  0xB5, 0xF0, 0xD5, 0xB9, 0x8B, 0x5B, 0x9E, 0x14,  // .....[..
                                /* 02D8 */  0xEB, 0x25, 0x44, 0xD7, 0x3E, 0x54, 0xE1, 0xBE,  // .%D.>T..
                                /* 02E0 */  0xBF, 0xA9, 0x46, 0x8D, 0x3B, 0xCF, 0x89, 0x80,  // ..F.;...
                                /* 02E8 */  0x7B, 0x60, 0x58, 0xDA, 0x42, 0xC8, 0xB2, 0x92,  // {`X.B...
                                /* 02F0 */  0x4F, 0x5E, 0x2B, 0x12, 0x6B, 0x04, 0xE9, 0x71,  // O^+.k..q
                                /* 02F8 */  0x3D, 0xFE, 0xC1, 0x5A, 0x4E, 0x41, 0x2A, 0xD9,  // =..ZNA*.
                                /* 0300 */  0xE1, 0x5B, 0x88, 0xE2, 0x69, 0xA4, 0xD2, 0x83,  // .[..i...
                                /* 0308 */  0xA9, 0xCB, 0xEE, 0xEC, 0xE0, 0x2D, 0x03, 0x0A,  // .....-..
                                /* 0310 */  0x62, 0x6E, 0x27, 0xC7, 0x10, 0x7A, 0x67, 0x97,  // bn'..zg.
                                /* 0318 */  0xAD, 0xD2, 0x50, 0xD8, 0xD7, 0x48, 0x57, 0xE6,  // ..P..HW.
                                /* 0320 */  0x22, 0xDF, 0x52, 0x11, 0xB3, 0x8F, 0x9B, 0x89,  // ".R.....
                                /* 0328 */  0x0B, 0x12, 0xE0, 0xEF, 0x4E, 0xCA, 0xA3, 0xC3,  // ....N...
                                /* 0330 */  0x83, 0x8F, 0x0F, 0xE4, 0xAB, 0x7E, 0xD7, 0x84,  // .....~..
                                /* 0338 */  0x25, 0xB9, 0x16, 0x85, 0xE1, 0x99, 0x88, 0x8E,  // %.......
                                /* 0340 */  0xB9, 0xE3, 0x5F, 0xEB, 0xB5, 0x6B, 0xF0, 0x95,  // .._..k..
                                /* 0348 */  0x2D, 0x42, 0x58, 0xAD, 0xE9, 0x9B, 0x3B, 0xA5,  // -BX...;.
                                /* 0350 */  0x6D, 0xBC, 0x69, 0xB0, 0x42, 0x8A, 0x3B, 0xE5,  // m.i.B.;.
                                /* 0358 */  0xF4, 0xBF, 0xAE, 0x54, 0x3D, 0x5D, 0x2C, 0x70,  // ...T=],p
                                /* 0360 */  0x31, 0x92, 0xAF, 0xFB, 0x0C, 0x79, 0x98, 0xE0,  // 1....y..
                                /* 0368 */  0xD3, 0x92, 0x20, 0x20, 0x98, 0x5D, 0x24, 0xC3,  // ..  .]$.
                                /* 0370 */  0x54, 0xEB, 0xB2, 0x25, 0x3F, 0x5C, 0xA8, 0xF8,  // T..%?\..
                                /* 0378 */  0xCE, 0xC6, 0xF6, 0x6C, 0x51, 0x5D, 0xCC, 0x61,  // ...lQ].a
                                /* 0380 */  0x0A, 0xD7, 0x87, 0x6C, 0x21, 0x4B, 0xFB, 0x48,  // ...l!K.H
                                /* 0388 */  0xCF, 0x56, 0xE0, 0x7E, 0x1D, 0xA6, 0x3F, 0x74,  // .V.~..?t
                                /* 0390 */  0x33, 0x80, 0x66, 0xC1, 0x73, 0x9B, 0x6D, 0xD8,  // 3.f.s.m.
                                /* 0398 */  0xA8, 0xDD, 0x0E, 0x73, 0x4D, 0x36, 0xBF, 0x40,  // ...sM6.@
                                /* 03A0 */  0xB0, 0x86, 0x2C, 0x74, 0x7E, 0x4F, 0x1B, 0x9A,  // ..,t~O..
                                /* 03A8 */  0xCC, 0xBD, 0xBC, 0xC7, 0x8E, 0x04, 0x49, 0x3A,  // ......I:
                                /* 03B0 */  0x87, 0x92, 0x33, 0xB8, 0xCB, 0x8C, 0xF9, 0x51,  // ..3....Q
                                /* 03B8 */  0xA5, 0xA7, 0x80, 0xA5, 0x8E, 0x1F, 0xB7, 0xFA,  // ........
                                /* 03C0 */  0x66, 0x71, 0x49, 0xB1, 0x57, 0xCB, 0xA6, 0x28,  // fqI.W..(
                                /* 03C8 */  0xC9, 0x30, 0x81, 0x41, 0xB4, 0x72, 0x82, 0x7D,  // .0.A.r.}
                                /* 03D0 */  0x76, 0xF6, 0x87, 0x0C, 0xC2, 0x28, 0x72, 0x74,  // v....(rt
                                /* 03D8 */  0x08, 0x71, 0xBA, 0xCD, 0x37, 0x2E, 0xAA, 0x99,  // .q..7...
                                /* 03E0 */  0x65, 0x5B, 0xCB, 0xF4, 0x88, 0x6F, 0x7E, 0x70,  // e[...o~p
                                /* 03E8 */  0x7D, 0x8E, 0x44, 0x2F, 0xEA, 0x29, 0x59, 0x9F,  // }.D/.)Y.
                                /* 03F0 */  0x4A, 0x5C, 0xB4, 0xC4, 0x36, 0xFC, 0xB0, 0x2C,  // J\..6..,
                                /* 03F8 */  0xE8, 0xD3, 0xC2, 0xF6, 0x97, 0x8E, 0xFD, 0x05,  // ........
                                /* 0400 */  0x0B, 0x8B, 0xD9, 0x7C, 0xC6, 0x70, 0xBB, 0x16,  // ...|.p..
                                /* 0408 */  0xA6, 0xCD, 0xE3, 0x5D, 0xC3, 0xAA, 0xC4, 0x40,  // ...]...@
                                /* 0410 */  0x44, 0x7E, 0x34, 0xC5, 0x29, 0x66, 0xE1, 0xD6,  // D~4.)f..
                                /* 0418 */  0x12, 0x12, 0x74, 0xD6, 0x59, 0x67, 0x99, 0x1E,  // ..t.Yg..
                                /* 0420 */  0x38, 0x67, 0xBC, 0x00, 0xB1, 0x92, 0x4D, 0x55,  // 8g....MU
                                /* 0428 */  0xF9, 0xE2, 0x37, 0x33, 0x66, 0x36, 0x3B, 0xE4,  // ..73f6;.
                                /* 0430 */  0x3D, 0x35, 0x02, 0x82, 0xD7, 0x88, 0x56, 0xC3,  // =5....V.
                                /* 0438 */  0x9F, 0xC8, 0x56, 0x6A, 0x31, 0x01, 0x18, 0x30,  // ..Vj1..0
                                /* 0440 */  0x77, 0x76, 0x0E, 0xDF, 0xF6, 0x74, 0xF9, 0x9D,  // wv...t..
                                /* 0448 */  0x7B, 0xFD, 0x1A, 0xC9, 0xA7, 0x0E, 0xB6, 0xA6,  // {.......
                                /* 0450 */  0x8A, 0xA4, 0xA9, 0xC1, 0x2F, 0xD6, 0xC3, 0x56,  // ..../..V
                                /* 0458 */  0x6C, 0xF3, 0x64, 0x99, 0x17, 0x41, 0xEB, 0x25,  // l.d..A.%
                                /* 0460 */  0x78, 0x13, 0x1E, 0xD0, 0x81, 0x89, 0x58, 0xCD,  // x.....X.
                                /* 0468 */  0x1C, 0x05, 0x25, 0x19, 0xCF, 0xCC, 0x8E, 0x06,  // ..%.....
                                /* 0470 */  0xE9, 0x58, 0x47, 0x84, 0xC4, 0xA1, 0xF9, 0x98,  // .XG.....
                                /* 0478 */  0xEC, 0x81, 0x3A, 0x09, 0x1A, 0x86, 0xC1, 0x93,  // ..:.....
                                /* 0480 */  0xC0, 0x4B, 0x4D, 0xA0, 0xBD, 0x15, 0x64, 0x6A,  // .KM...dj
                                /* 0488 */  0x09, 0xB1, 0x2E, 0x17, 0x5E, 0x07, 0x3F, 0x48,  // ....^.?H
                                /* 0490 */  0x28, 0x61, 0xBF, 0xEB, 0x30, 0x1C, 0x24, 0x4B,  // (a..0.$K
                                /* 0498 */  0x79, 0xDB, 0xA0, 0xC6, 0xBF, 0xCA, 0xC0, 0xC5,  // y.......
                                /* 04A0 */  0x91, 0x08, 0x6C, 0xDC, 0xA2, 0xAA, 0x4C, 0xD2,  // ..l...L.
                                /* 04A8 */  0xF6, 0x2F, 0x65, 0x1A, 0x35, 0x85, 0x41, 0xEC,  // ./e.5.A.
                                /* 04B0 */  0x05, 0x29, 0x6F, 0x1C, 0xC1, 0xDA, 0x02, 0x46,  // .)o....F
                                /* 04B8 */  0x47, 0x20, 0x39, 0x28, 0x7A, 0xBD, 0xC0, 0xE9,  // G 9(z...
                                /* 04C0 */  0xF7, 0x84, 0x3B, 0x85, 0x66, 0xF7, 0xC9, 0xF9,  // ..;.f...
                                /* 04C8 */  0xCB, 0x60, 0xA3, 0x6A, 0x3B, 0xA4, 0x90, 0x54,  // .`.j;..T
                                /* 04D0 */  0x78, 0xEB, 0x49, 0x32, 0x24, 0xE1, 0x06, 0xF3,  // x.I2$...
                                /* 04D8 */  0x58, 0xAB, 0xC9, 0x30, 0x7D, 0x44, 0xAB, 0xFF,  // X..0}D..
                                /* 04E0 */  0xB3, 0xBD, 0xE9, 0x12, 0x67, 0xB3, 0x9D, 0xFF,  // ....g...
                                /* 04E8 */  0xE2, 0x7B, 0x9D, 0x12, 0xB9, 0xD4, 0x48, 0x3A,  // .{....H:
                                /* 04F0 */  0x9B, 0x9C, 0x08, 0x35, 0xAD, 0x1A, 0x3C, 0x34,  // ...5..<4
                                /* 04F8 */  0xE7, 0x96, 0x76, 0xD5, 0xBF, 0x15, 0xE8, 0x28,  // ..v....(
                                /* 0500 */  0xAB, 0x20, 0x36, 0x03, 0xFF, 0x45, 0xD3, 0xA4,  // . 6..E..
                                /* 0508 */  0x24, 0xF9, 0xF6, 0xEC, 0x3B, 0x39, 0x15, 0x0E,  // $...;9..
                                /* 0510 */  0x67, 0xC9, 0xE9, 0x5F, 0xD7, 0x01, 0x69, 0x12,  // g.._..i.
                                /* 0518 */  0x81, 0xA5, 0xDD, 0x41, 0x57, 0x35, 0xF6, 0xBB,  // ...AW5..
                                /* 0520 */  0x4F, 0x0A, 0x03, 0x95, 0xD0, 0x7C, 0x96, 0xBF,  // O....|..
                                /* 0528 */  0xAE, 0x51, 0x29, 0xFF, 0x4D, 0xF1, 0x25, 0xFD,  // .Q).M.%.
                                /* 0530 */  0x7A, 0xB2, 0x38, 0xE2, 0x98, 0xBC, 0xD1, 0xEE,  // z.8.....
                                /* 0538 */  0x34, 0x26, 0x6F, 0x75, 0xD5, 0xAA, 0xA4, 0x67,  // 4&ou...g
                                /* 0540 */  0x56, 0xBB, 0x09, 0xEE, 0x5F, 0xB2, 0x91, 0x15,  // V..._...
                                /* 0548 */  0xD4, 0xBA, 0xCA, 0x40, 0x07, 0x15, 0x23, 0xBB,  // ...@..#.
                                /* 0550 */  0xE2, 0x6E, 0x6A, 0xD4, 0x5C, 0xC7, 0xB2, 0x60,  // .nj.\..`
                                /* 0558 */  0x05, 0xBA, 0xF2, 0x84, 0x03, 0x1E, 0xF8, 0x63,  // .......c
                                /* 0560 */  0xB0, 0x0C, 0x68, 0x07, 0x6C, 0x02, 0xA4, 0xA8,  // ..h.l...
                                /* 0568 */  0x01, 0xF2, 0x3E, 0xE9, 0xA0, 0xAB, 0x29, 0xFB,  // ..>...).
                                /* 0570 */  0xA4, 0xE1, 0x78, 0xD6, 0x1D, 0x8D, 0xF4, 0x73,  // ..x....s
                                /* 0578 */  0xE7, 0x9E, 0x9A, 0xB8, 0x7B, 0x47, 0xE5, 0x1E,  // ....{G..
                                /* 0580 */  0xAB, 0xAA, 0x04, 0xD7, 0x0E, 0xC9, 0x7A, 0xD7,  // ......z.
                                /* 0588 */  0xA3, 0xB7, 0x78, 0x35, 0xF2, 0xB5, 0x0C, 0x26,  // ..x5...&
                                /* 0590 */  0x66, 0x23, 0x6F, 0x9C, 0xFA, 0x8B, 0xED, 0xE4,  // f#o.....
                                /* 0598 */  0x27, 0xA5, 0x25, 0x5B, 0xFD, 0x7D, 0xA6, 0x01,  // '.%[.}..
                                /* 05A0 */  0xAC, 0x30, 0x55, 0x9B, 0x7C, 0x07, 0xFC, 0xF8,  // .0U.|...
                                /* 05A8 */  0xC3, 0x76, 0x0A, 0x55, 0xEB, 0x71, 0xA2, 0xE8,  // .v.U.q..
                                /* 05B0 */  0xC0, 0x98, 0x8C, 0x37, 0xEE, 0xF4, 0x5D, 0xBF,  // ...7..].
                                /* 05B8 */  0xCB, 0x0B, 0x62, 0x39, 0x3D, 0xA3, 0xF3, 0x48,  // ..b9=..H
                                /* 05C0 */  0xB9, 0xBA, 0x28, 0xAC, 0x86, 0xAF, 0x09, 0x23,  // ..(....#
                                /* 05C8 */  0x47, 0x62, 0x13, 0x71, 0x9A, 0x8C, 0x9D, 0x85,  // Gb.q....
                                /* 05D0 */  0xCD, 0x56, 0x7F, 0x84, 0xB5, 0x07, 0x04, 0x14,  // .V......
                                /* 05D8 */  0x32, 0xBD, 0x3D, 0x22, 0x7A, 0xFF, 0xFA, 0x95,  // 2.="z...
                                /* 05E0 */  0x51, 0x59, 0x50, 0x90, 0x5A, 0x7F, 0x1F, 0x17,  // QYP.Z...
                                /* 05E8 */  0xCF, 0xC8, 0xBF, 0xED, 0x52, 0xCF, 0xEF, 0xF2,  // ....R...
                                /* 05F0 */  0x43, 0x58, 0x14, 0x3C, 0x86, 0x2A, 0xD4, 0xD2,  // CX.<.*..
                                /* 05F8 */  0xC0, 0x8D, 0x89, 0xC6, 0x6E, 0x87, 0x7C, 0x5C,  // ....n.|\
                                /* 0600 */  0x17, 0xE3, 0x41, 0x8F, 0x79, 0xCB, 0xBB, 0x03,  // ..A.y...
                                /* 0608 */  0x2E, 0x2E, 0xD1, 0xDC, 0xC4, 0x4D, 0xD8, 0x23,  // .....M.#
                                /* 0610 */  0x5F, 0x9F, 0xD2, 0x46, 0xC0, 0x3B, 0x90, 0xEF,  // _..F.;..
                                /* 0618 */  0x51, 0x2F, 0xFF, 0x43, 0xF6, 0xE8, 0x8B, 0xCC,  // Q/.C....
                                /* 0620 */  0x2E, 0x0F, 0xF5, 0xC6, 0xD4, 0xCA, 0x51, 0xC5,  // ......Q.
                                /* 0628 */  0x05, 0x74, 0xBB, 0xA5, 0xB1, 0xFC, 0x33, 0xA3,  // .t....3.
                                /* 0630 */  0xC3, 0xFC, 0x52, 0xF3, 0x57, 0x1A, 0x89, 0x3D,  // ..R.W..=
                                /* 0638 */  0x19, 0x29, 0x61, 0x87, 0xB8, 0xCB, 0x27, 0x84,  // .)a...'.
                                /* 0640 */  0xBE, 0x44, 0xC3, 0x0C, 0xAF, 0x2F, 0x71, 0xAC,  // .D.../q.
                                /* 0648 */  0x01, 0x42, 0xDD, 0xE9, 0x1E, 0xAE, 0xDC, 0xEB,  // .B......
                                /* 0650 */  0xF2, 0x2F, 0x7E, 0xC7, 0xDE, 0x34, 0x87, 0x3E,  // ./~..4.>
                                /* 0658 */  0x32, 0x20, 0x8F, 0x2E, 0x46, 0xDB, 0xC0, 0x2C,  // 2 ..F..,
                                /* 0660 */  0x62, 0xC7, 0x78, 0x4D, 0x65, 0xA1, 0xA0, 0x4C,  // b.xMe..L
                                /* 0668 */  0x26, 0x85, 0x21, 0x15, 0xF5, 0xE5, 0xAA, 0x5A,  // &.!....Z
                                /* 0670 */  0xD1, 0xDE, 0x62, 0xED, 0x1C, 0xAA, 0xD5, 0x2F,  // ..b..../
                                /* 0678 */  0x6D, 0x20, 0x77, 0x87, 0x01, 0x70, 0x0F, 0xDC,  // m w..p..
                                /* 0680 */  0xB8, 0x02, 0x09, 0xFC, 0x9E, 0xC8, 0x8A, 0x96,  // ........
                                /* 0688 */  0x7F, 0xA9, 0xCE, 0x38, 0x9E, 0xC0, 0xAC, 0x89,  // ...8....
                                /* 0690 */  0x86, 0x02, 0xBD, 0x0A, 0xA2, 0x77, 0x6D, 0x33,  // .....wm3
                                /* 0698 */  0x01, 0xC9, 0x4E, 0xDC, 0xD8, 0x5A, 0x80, 0x2D,  // ..N..Z.-
                                /* 06A0 */  0x2A, 0x4E, 0x29, 0x9A, 0x2D, 0xDA, 0xEC, 0x95,  // *N).-...
                                /* 06A8 */  0xA2, 0x48, 0xF8, 0x00, 0xE0, 0x37, 0xF8, 0xA7,  // .H...7..
                                /* 06B0 */  0x70, 0x35, 0xFE, 0xBD, 0xB1, 0xCD, 0x7E, 0xA7,  // p5....~.
                                /* 06B8 */  0x3B, 0x31, 0xC0, 0xFD, 0x72, 0x89, 0x7B, 0xDA,  // ;1..r.{.
                                /* 06C0 */  0x86, 0x21, 0x1E, 0xB8, 0x7C, 0x39, 0x2A, 0xDB,  // .!..|9*.
                                /* 06C8 */  0x1B, 0x4D, 0x39, 0x90, 0x13, 0x8B, 0x51, 0x87,  // .M9...Q.
                                /* 06D0 */  0x91, 0x9C, 0x45, 0xE4, 0x13, 0x6C, 0x31, 0x17,  // ..E..l1.
                                /* 06D8 */  0x37, 0x24, 0x95, 0xA0, 0xAE, 0xBA, 0xE6, 0x3C,  // 7$.....<
                                /* 06E0 */  0x7E, 0xEC, 0xEE, 0x19, 0x8A, 0xF5, 0x07, 0xF5,  // ~.......
                                /* 06E8 */  0x4B, 0x52, 0xD1, 0xF0, 0x61, 0x01, 0xF0, 0xA0,  // KR..a...
                                /* 06F0 */  0x77, 0x3C, 0xA9, 0x75, 0xA1, 0x29, 0x13, 0xF3,  // w<.u.)..
                                /* 06F8 */  0x02, 0x0C, 0x63, 0x0F, 0x5E, 0xD3, 0x08, 0x5D,  // ..c.^..]
                                /* 0700 */  0x9C, 0x8D, 0xA0, 0x02, 0x94, 0xE8, 0x93, 0x24,  // .......$
                                /* 0708 */  0x08, 0xA6, 0xA3, 0xD1, 0x97, 0xCA, 0xE5, 0xD4,  // ........
                                /* 0710 */  0xA5, 0xAF, 0x40, 0x4A, 0x70, 0x49, 0x49, 0x2B,  // ..@JpII+
                                /* 0718 */  0x9B, 0x14, 0x4E, 0x2D, 0x69, 0xAB, 0xDF, 0xBB,  // ..N-i...
                                /* 0720 */  0x2A, 0xF5, 0x5D, 0x5C, 0xEC, 0x94, 0xE6, 0x0D,  // *.]\....
                                /* 0728 */  0x04, 0x3F, 0x43, 0x64, 0xC9, 0x81, 0x5D, 0x95,  // .?Cd..].
                                /* 0730 */  0x51, 0x02, 0x59, 0x63, 0x7C, 0xDB, 0xA6, 0xA6,  // Q.Yc|...
                                /* 0738 */  0x3F, 0x50, 0xD0, 0xDA, 0x2B, 0x29, 0x20, 0x53,  // ?P..+) S
                                /* 0740 */  0xCA, 0x41, 0x69, 0xF3, 0x9F, 0x4D, 0x10, 0x98,  // .Ai..M..
                                /* 0748 */  0x60, 0x6A, 0xA5, 0x0D, 0x7E, 0x9F, 0xED, 0x1A,  // `j..~...
                                /* 0750 */  0x19, 0x65, 0xE0, 0xEF, 0x4C, 0xC2, 0x2A, 0x84,  // .e..L.*.
                                /* 0758 */  0x84, 0xF2, 0xC8, 0x5D, 0x83, 0x39, 0x03, 0xBD,  // ...].9..
                                /* 0760 */  0xC6, 0x3C, 0x00, 0xE8, 0x3D, 0x5A, 0x02, 0x3B,  // .<..=Z.;
                                /* 0768 */  0x8E, 0xD3, 0xF8, 0xF8, 0xF1, 0x60, 0xAF, 0x74,  // .....`.t
                                /* 0770 */  0x72, 0x52, 0x0B, 0xA3, 0x1C, 0x80, 0x01, 0x5E,  // rR.....^
                                /* 0778 */  0x72, 0xD2, 0x4E, 0x25, 0xC9, 0xB8, 0x27, 0x93,  // r.N%..'.
                                /* 0780 */  0x15, 0x05, 0x0B, 0xD3, 0xA8, 0x7A, 0xF8, 0x47,  // .....z.G
                                /* 0788 */  0x40, 0x58, 0x8B, 0xF3, 0xBF, 0x4F, 0x1B, 0x42,  // @X...O.B
                                /* 0790 */  0x43, 0x51, 0x97, 0xB4, 0x4C, 0x9D, 0x67, 0xF9,  // CQ..L.g.
                                /* 0798 */  0x9C, 0x14, 0xF1, 0xF8, 0xC6, 0x81, 0xE5, 0x73,  // .......s
                                /* 07A0 */  0xF3, 0xBA, 0xC5, 0x67, 0x2E, 0x88, 0xB8, 0x63,  // ...g...c
                                /* 07A8 */  0x1A, 0x97, 0x76, 0x5D, 0x04, 0xE9, 0x89, 0x78,  // ..v]...x
                                /* 07B0 */  0x3D, 0xC6, 0x0C, 0x6B, 0xBF, 0x75, 0x12, 0x04,  // =..k.u..
                                /* 07B8 */  0xE5, 0x96, 0x16, 0x39, 0xC6, 0x27, 0x8F, 0x1A,  // ...9.'..
                                /* 07C0 */  0x2C, 0xB5, 0x08, 0x92, 0x0C, 0xA9, 0xF5, 0x9D,  // ,.......
                                /* 07C8 */  0xB0, 0x67, 0xF3, 0x5B, 0x32, 0x03, 0xF0, 0xCF,  // .g.[2...
                                /* 07D0 */  0xFD, 0x55, 0x24, 0xCF, 0x82, 0x4F, 0x47, 0xEF,  // .U$..OG.
                                /* 07D8 */  0x80, 0xF8, 0x3B, 0x34, 0xD6, 0x7A, 0xF0, 0x89,  // ..;4.z..
                                /* 07E0 */  0xA6, 0x97, 0xDC, 0xC8, 0x2A, 0x8F, 0x10, 0x8D,  // ....*...
                                /* 07E8 */  0xA5, 0x36, 0x55, 0x2B, 0x90, 0x08, 0x7C, 0x9F,  // .6U+..|.
                                /* 07F0 */  0x24, 0xBB, 0x29, 0x6C, 0x03, 0xC4, 0xFF, 0xBE,  // $.)l....
                                /* 07F8 */  0xBA, 0x88, 0xE4, 0x28, 0xC2, 0xFE, 0x7C, 0x1A,  // ...(..|.
                                /* 0800 */  0xA0, 0x23, 0x4D, 0x17, 0x9D, 0x2F, 0x1C, 0x66,  // .#M../.f
                                /* 0808 */  0xC4, 0x7C, 0x99, 0x7B, 0x89, 0x18, 0x37, 0xA6,  // .|.{..7.
                                /* 0810 */  0x16, 0x87, 0x91, 0xD6, 0x54, 0xC3, 0x1C, 0x82,  // ....T...
                                /* 0818 */  0x6E, 0xCB, 0x1B, 0x87, 0x5F, 0xDC, 0xEC, 0x49,  // n..._..I
                                /* 0820 */  0xB3, 0x07, 0x90, 0xC9, 0xC6, 0x56, 0x3E, 0x8A,  // .....V>.
                                /* 0828 */  0xDF, 0x62, 0xB4, 0x8B, 0xC1, 0xA6, 0x71, 0xAD,  // .b....q.
                                /* 0830 */  0xB2, 0xF5, 0x08, 0x0E, 0x4A, 0x40, 0x6A, 0x76,  // ....J@jv
                                /* 0838 */  0xDC, 0x8F, 0x18, 0xF7, 0x7F, 0x0E, 0x04, 0x8C,  // ........
                                /* 0840 */  0xFB, 0x17, 0x04, 0x37, 0x70, 0xE1, 0x8C, 0xF2,  // ...7p...
                                /* 0848 */  0xFB, 0xBC, 0x69, 0x72, 0x3E, 0x16, 0x1D, 0xDC,  // ..ir>...
                                /* 0850 */  0xBF, 0x40, 0x8A, 0x2A, 0x7A, 0xA7, 0xF2, 0x93,  // .@.*z...
                                /* 0858 */  0x37, 0xBA, 0x8D, 0xBF, 0x68, 0xA7, 0xEF, 0xBF,  // 7...h...
                                /* 0860 */  0x85, 0xC7, 0x7E, 0xFA, 0xFF, 0x90, 0x88, 0x3D,  // ..~....=
                                /* 0868 */  0x3B, 0x90, 0x85, 0x1C, 0xC2, 0xDA, 0x2E, 0xE1,  // ;.......
                                /* 0870 */  0xED, 0x9B, 0xD8, 0x51, 0x09, 0x20, 0xE3, 0x43,  // ...Q. .C
                                /* 0878 */  0x7B, 0xDB, 0x8F, 0xFA, 0xE7, 0x9E, 0x77, 0xAE,  // {.....w.
                                /* 0880 */  0x13, 0xA6, 0xBF, 0x25, 0x1D, 0x6B, 0x00, 0xAC,  // ...%.k..
                                /* 0888 */  0xB2, 0xD1, 0x05, 0xB9, 0x5F, 0x0D, 0x42, 0x5D,  // ...._.B]
                                /* 0890 */  0xFE, 0x08, 0xAD, 0x03, 0x90, 0x0E, 0xF0, 0x76,  // .......v
                                /* 0898 */  0xCC, 0x10, 0x20, 0x65, 0x81, 0x3C, 0xF0, 0x8D,  // .. e.<..
                                /* 08A0 */  0xEA, 0x73, 0x6C, 0xAA, 0x32, 0xF7, 0xEE, 0x26,  // .sl.2..&
                                /* 08A8 */  0xA4, 0x4A, 0xC8, 0xA6, 0x57, 0xA1, 0xD8, 0xC8,  // .J..W...
                                /* 08B0 */  0x35, 0xEF, 0x99, 0x4A, 0x06, 0xFD, 0x52, 0xC1,  // 5..J..R.
                                /* 08B8 */  0x03, 0xAE, 0xFF, 0x3E, 0x51, 0x19, 0xAC, 0xFB,  // ...>Q...
                                /* 08C0 */  0x96, 0x15, 0x83, 0x75, 0x34, 0x18, 0x58, 0xAC,  // ...u4.X.
                                /* 08C8 */  0x81, 0x59, 0xEF, 0x4A, 0x03, 0x1B, 0xB9, 0xC1,  // .Y.J....
                                /* 08D0 */  0xB7, 0x45, 0xC8, 0xA3, 0xCB, 0x4E, 0x68, 0x98,  // .E...Nh.
                                /* 08D8 */  0xCB, 0x57, 0xD6, 0xD6, 0x9F, 0xEA, 0xFF, 0x86,  // .W......
                                /* 08E0 */  0xB2, 0xBE, 0xFC, 0xF5, 0xDF, 0x74, 0x73, 0xF3,  // .....ts.
                                /* 08E8 */  0x7C, 0xBD, 0x4B, 0x8D, 0xE4, 0x23, 0x05, 0xA9,  // |.K..#..
                                /* 08F0 */  0x46, 0xA9, 0x2B, 0x3A, 0xB3, 0x4E, 0x08, 0x4D,  // F.+:.N.M
                                /* 08F8 */  0x58, 0xFF, 0x53, 0xF5, 0xBF, 0x81, 0xFD, 0x83,  // X.S.....
                                /* 0900 */  0x3E, 0x76, 0xEA, 0x76, 0xEF, 0x00, 0x57, 0x5C,  // >v.v..W\
                                /* 0908 */  0x7A, 0x20, 0x1B, 0x95, 0x79, 0x73, 0xAD, 0x6F,  // z ..ys.o
                                /* 0910 */  0x14, 0xB9, 0x82, 0xFF, 0x9D, 0xD8, 0xCE, 0x6B,  // .......k
                                /* 0918 */  0x6D, 0x4B, 0x1D, 0x6D, 0xB6, 0x6C, 0x77, 0x97,  // mK.m.lw.
                                /* 0920 */  0x7A, 0x23, 0x71, 0x7D, 0x68, 0x96, 0x61, 0x36,  // z#q}h.a6
                                /* 0928 */  0x89, 0x6C, 0x74, 0x63, 0x30, 0xE4, 0xC6, 0x91,  // .ltc0...
                                /* 0930 */  0xAD, 0x58, 0x57, 0xE4, 0x01, 0x5A, 0x26, 0x90,  // .XW..Z&.
                                /* 0938 */  0x19, 0x0E, 0xF3, 0x3C, 0x50, 0xE5, 0x41, 0x32,  // ...<P.A2
                                /* 0940 */  0x3F, 0xCC, 0xAC, 0xF5, 0x79, 0xD8, 0xBF, 0x29,  // ?...y..)
                                /* 0948 */  0xDD, 0x89, 0xCD, 0x78, 0x24, 0x93, 0x74, 0x01,  // ...x$.t.
                                /* 0950 */  0xEE, 0x36, 0x7A, 0x3E, 0xAB, 0xCE, 0xE9, 0x08,  // .6z>....
                                /* 0958 */  0x35, 0x20, 0xBD, 0x8F, 0xD5, 0x7E, 0xC1, 0x90,  // 5 ...~..
                                /* 0960 */  0xD3, 0x95, 0xD6, 0x63, 0x70, 0xE3, 0xB8, 0x22,  // ...cp.."
                                /* 0968 */  0x7F, 0x15, 0x2B, 0x0B, 0x0D, 0x90, 0x09, 0x25,  // ..+....%
                                /* 0970 */  0x8E, 0x75, 0x0A, 0x8E, 0x28, 0xCA, 0x2D, 0xEA,  // .u..(.-.
                                /* 0978 */  0x97, 0xC2, 0x5B, 0x83, 0x54, 0x41, 0xF8, 0xAF,  // ..[.TA..
                                /* 0980 */  0x18, 0x97, 0x86, 0x25, 0x99, 0x11, 0x4F, 0xA6,  // ...%..O.
                                /* 0988 */  0x30, 0x60, 0xB4, 0xB7, 0xCB, 0xBF, 0xEF, 0xC3,  // 0`......
                                /* 0990 */  0x24, 0x3D, 0xDF, 0x43, 0x09, 0x05, 0x88, 0x56,  // $=.C...V
                                /* 0998 */  0xB6, 0x43, 0x15, 0x54, 0x74, 0x6B, 0xF2, 0xE7,  // .C.Ttk..
                                /* 09A0 */  0xDE, 0x85, 0xD8, 0x35, 0xE4, 0x00, 0x2D, 0x75,  // ...5..-u
                                /* 09A8 */  0x7E, 0x3B, 0xF2, 0xC8, 0xA7, 0x28, 0xDA, 0x62,  // ~;...(.b
                                /* 09B0 */  0x71, 0x27, 0x94, 0x52, 0x17, 0xDB, 0x86, 0x55,  // q'.R...U
                                /* 09B8 */  0x10, 0x12, 0x48, 0x05, 0xC9, 0x76, 0xE3, 0x92,  // ..H..v..
                                /* 09C0 */  0xDC, 0xFF, 0x2E, 0xC2, 0x0D, 0xF6, 0xBA, 0x47,  // .......G
                                /* 09C8 */  0xC7, 0x5E, 0xBC, 0xDA, 0x8B, 0x3A, 0x76, 0xCC,  // .^...:v.
                                /* 09D0 */  0xC8, 0x62, 0x73, 0x06, 0xAA, 0x1B, 0x23, 0xC7,  // .bs...#.
                                /* 09D8 */  0x23, 0x79, 0x63, 0x24, 0x88, 0x90, 0x2E, 0x84,  // #yc$....
                                /* 09E0 */  0x18, 0xBA, 0x00, 0x50, 0xFA, 0xFC, 0xCD, 0x6A,  // ...P...j
                                /* 09E8 */  0x46, 0xC1, 0xAE, 0x63, 0x40, 0x7E, 0xE4, 0xC5,  // F..c@~..
                                /* 09F0 */  0x1F, 0x17, 0x62, 0xCF, 0x42, 0xCF, 0x6F, 0xD4,  // ..b.B.o.
                                /* 09F8 */  0x9A, 0x48, 0x29, 0x84, 0xB7, 0x34, 0xBC, 0xE7,  // .H)..4..
                                /* 0A00 */  0x60, 0x06, 0x4C, 0xC3, 0xB4, 0x42, 0xC3, 0x57,  // `.L..B.W
                                /* 0A08 */  0xAA, 0x10, 0x17, 0x59, 0xEC, 0x9D, 0xB7, 0xAB,  // ...Y....
                                /* 0A10 */  0x8B, 0xBE, 0xFD, 0xCF, 0xC8, 0xF4, 0x6F, 0x2D,  // ......o-
                                /* 0A18 */  0xC9, 0x0D, 0x3C, 0x41, 0x20, 0x2B, 0xF7, 0xEE,  // ..<A +..
                                /* 0A20 */  0x55, 0x36, 0xA2, 0xFE, 0xBC, 0x27, 0x72, 0x0A,  // U6...'r.
                                /* 0A28 */  0x05, 0xAE, 0xC6, 0x12, 0xC0, 0x76, 0x3F, 0x17,  // .....v?.
                                /* 0A30 */  0x76, 0x08, 0x26, 0x48, 0x62, 0xE9, 0xA7, 0xCE,  // v.&Hb...
                                /* 0A38 */  0x5F, 0xD3, 0x46, 0xD3, 0x10, 0x7F, 0xFE, 0x8D,  // _.F.....
                                /* 0A40 */  0xAA, 0x8D, 0xB0, 0xEB, 0xCE, 0xFD, 0x7F, 0x06,  // ........
                                /* 0A48 */  0xF6, 0x1B, 0xD5, 0x02, 0x11, 0xAA, 0x36, 0x86,  // ......6.
                                /* 0A50 */  0x7E, 0x99, 0xB9, 0x16, 0xA6, 0xEA, 0x46, 0x4E,  // ~.....FN
                                /* 0A58 */  0x30, 0x89, 0x1D, 0x71, 0xB5, 0x6F, 0x26, 0x68,  // 0..q.o&h
                                /* 0A60 */  0xF4, 0xEB, 0xA1, 0xF1, 0x52, 0x1E, 0xDD, 0x67,  // ....R..g
                                /* 0A68 */  0xAD, 0xE1, 0x08, 0x29, 0xE2, 0x70, 0x56, 0x3D,  // ...).pV=
                                /* 0A70 */  0xD9, 0x9A, 0x32, 0x47, 0x90, 0x9C, 0xC2, 0x06,  // ..2G....
                                /* 0A78 */  0xA3, 0x05, 0x05, 0x85, 0xE1, 0x3A, 0xF0, 0x98,  // .....:..
                                /* 0A80 */  0xC6, 0x67, 0x94, 0x74, 0xA9, 0x6D, 0x2D, 0x64,  // .g.t.m-d
                                /* 0A88 */  0x65, 0xA7, 0x36, 0x35, 0xED, 0x52, 0xEC, 0x14,  // e.65.R..
                                /* 0A90 */  0xA4, 0x36, 0xEE, 0xC2, 0xEB, 0x28, 0x0E, 0xE6,  // .6...(..
                                /* 0A98 */  0x68, 0xDA, 0xB5, 0x49, 0xE5, 0x2C, 0x4A, 0x7B,  // h..I.,J{
                                /* 0AA0 */  0xB8, 0xCD, 0x53, 0xED, 0x0B, 0x8C, 0xF7, 0x5E,  // ..S....^
                                /* 0AA8 */  0x01, 0x26, 0xA3, 0xB5, 0x36, 0x8E, 0x65, 0x18,  // .&..6.e.
                                /* 0AB0 */  0x2E, 0xCB, 0xD4, 0x22, 0x90, 0x32, 0x01, 0xCF,  // ...".2..
                                /* 0AB8 */  0x43, 0x1B, 0x5E, 0xB3, 0xB7, 0x1B, 0xC3, 0x9E,  // C.^.....
                                /* 0AC0 */  0xE3, 0x98, 0x95, 0x93, 0xB8, 0x7A, 0x7B, 0x93,  // .....z{.
                                /* 0AC8 */  0xE6, 0x75, 0x5A, 0x19, 0x5E, 0x46, 0xF8, 0x33,  // .uZ.^F.3
                                /* 0AD0 */  0x0B, 0x98, 0xAB, 0x17, 0x63, 0x2F, 0x52, 0xA4,  // ....c/R.
                                /* 0AD8 */  0x7E, 0x72, 0xF1, 0x89, 0x01, 0x30, 0x22, 0xA6,  // ~r...0".
                                /* 0AE0 */  0xE4, 0x63, 0x34, 0x32, 0xB3, 0x1A, 0xED, 0xF3,  // .c42....
                                /* 0AE8 */  0x21, 0x06, 0x0C, 0x21, 0xC1, 0xEB, 0x60, 0xC7,  // !..!..`.
                                /* 0AF0 */  0xB0, 0xF5, 0xFF, 0xE0, 0xFA, 0x8B, 0xF0, 0x6E,  // .......n
                                /* 0AF8 */  0x8A, 0xA0, 0x9C, 0x2A, 0x2F, 0xD5, 0x87, 0x73,  // ...*/..s
                                /* 0B00 */  0x4C, 0x38, 0xEF, 0xDF, 0x42, 0x3D, 0x14, 0x01,  // L8..B=..
                                /* 0B08 */  0x34, 0xB2, 0x4B, 0x2C, 0x77, 0x66, 0x78, 0x29,  // 4.K,wfx)
                                /* 0B10 */  0x16, 0x39, 0xA1, 0x23, 0x33, 0xA0, 0x50, 0xB6,  // .9.#3.P.
                                /* 0B18 */  0xC4, 0x38, 0xBF, 0xC9, 0xB6, 0xAA, 0x08, 0xA6,  // .8......
                                /* 0B20 */  0x09, 0x5E, 0x2F, 0x1A, 0x70, 0xA2, 0x9E, 0xC3,  // .^/.p...
                                /* 0B28 */  0x28, 0xF9, 0xCB, 0xA7, 0xB1, 0xC1, 0x03, 0xFB,  // (.......
                                /* 0B30 */  0x0E, 0x07, 0x1C, 0x1D, 0x8D, 0x8D, 0x97, 0xE3,  // ........
                                /* 0B38 */  0x5B, 0xFB, 0x9A, 0xD5, 0x70, 0x47, 0x1D, 0xD5,  // [...pG..
                                /* 0B40 */  0x08, 0xCE, 0x52, 0x7C, 0xFF, 0xB2, 0xE6, 0xAD,  // ..R|....
                                /* 0B48 */  0xBE, 0x34, 0xD8, 0xB2, 0xD0, 0x4E, 0xD4, 0x8C,  // .4...N..
                                /* 0B50 */  0x15, 0x49, 0xAF, 0xB4, 0x7E, 0xC1, 0x29, 0x58,  // .I..~.)X
                                /* 0B58 */  0xA9, 0xA4, 0x86, 0x4A, 0x45, 0xBA, 0xD4, 0xAF,  // ...JE...
                                /* 0B60 */  0x5B, 0x6C, 0xDC, 0xA8, 0x71, 0xAA, 0x88, 0x7D,  // [l..q..}
                                /* 0B68 */  0x40, 0x9C, 0xEF, 0x9E, 0x2A, 0x3E, 0x51, 0x60,  // @...*>Q`
                                /* 0B70 */  0xDF, 0x06, 0x84, 0x89, 0xB5, 0x60, 0x0F, 0xDB,  // .....`..
                                /* 0B78 */  0xE4, 0x3C, 0x1A, 0x8C, 0xA4, 0x31, 0xC2, 0xF7,  // .<...1..
                                /* 0B80 */  0x08, 0x41, 0x93, 0x08, 0x3B, 0xA1, 0x4A, 0xE9,  // .A..;.J.
                                /* 0B88 */  0xED, 0xC8, 0xEB, 0xC0, 0x06, 0x49, 0xCB, 0xB3,  // .....I..
                                /* 0B90 */  0xBD, 0x6F, 0x81, 0x12, 0xF4, 0xB4, 0x85, 0xB8,  // .o......
                                /* 0B98 */  0xD8, 0xD5, 0x5A, 0x41, 0x02, 0xCD, 0xA4, 0x5C,  // ..ZA...\
                                /* 0BA0 */  0x90, 0xF7, 0x3E, 0xF1, 0x37, 0xBD, 0x3A, 0x32,  // ..>.7.:2
                                /* 0BA8 */  0x83, 0x08, 0x68, 0x6E, 0x55, 0x42, 0xFC, 0x9A,  // ..hnUB..
                                /* 0BB0 */  0x01, 0xBA, 0x1F, 0xEB, 0xBF, 0xC7, 0x71, 0x4B,  // ......qK
                                /* 0BB8 */  0xE0, 0x27, 0x4D, 0x26, 0x78, 0xB6, 0x9B, 0x60,  // .'M&x..`
                                /* 0BC0 */  0xBA, 0x27, 0xE5, 0x69, 0x23, 0x23, 0xC9, 0x5E,  // .'.i##.^
                                /* 0BC8 */  0x47, 0x5E, 0x1D, 0x7E, 0x01, 0xE5, 0x5C, 0xBC,  // G^.~..\.
                                /* 0BD0 */  0xCE, 0xA7, 0xC9, 0x73, 0xA1, 0x00, 0xA5, 0xE7,  // ...s....
                                /* 0BD8 */  0x5B, 0x6C, 0x61, 0x18, 0x3B, 0xD6, 0xA0, 0x3F,  // [la.;..?
                                /* 0BE0 */  0x41, 0x22, 0x55, 0x8C, 0x9D, 0x61, 0x87, 0x82,  // A"U..a..
                                /* 0BE8 */  0x4F, 0x8F, 0xCC, 0x6C, 0xF0, 0x26, 0x62, 0xD9,  // O..l.&b.
                                /* 0BF0 */  0x0E, 0x5E, 0x54, 0x58, 0x38, 0x3F, 0x50, 0xAB,  // .^TX8?P.
                                /* 0BF8 */  0xE2, 0x02, 0x59, 0x70, 0x46, 0x37, 0x1B, 0xA3,  // ..YpF7..
                                /* 0C00 */  0xC2, 0x77, 0xBA, 0x79, 0x45, 0x35, 0x11, 0x36,  // .w.yE5.6
                                /* 0C08 */  0xCC, 0x76, 0x57, 0x9A, 0x4F, 0x78, 0x60, 0x4D,  // .vW.Ox`M
                                /* 0C10 */  0x02, 0xF5, 0x10, 0xC0, 0x61, 0xF2, 0x1E, 0x60,  // ....a..`
                                /* 0C18 */  0x1A, 0x54, 0xFA, 0x40, 0x37, 0x2B, 0xD1, 0x61,  // .T.@7+.a
                                /* 0C20 */  0xB5, 0xA0, 0xBF, 0x94, 0x48, 0xB1, 0x7A, 0x1A,  // ....H.z.
                                /* 0C28 */  0x77, 0xC1, 0x56, 0x34, 0x67, 0xAA, 0xF1, 0xF4,  // w.V4g...
                                /* 0C30 */  0xE4, 0x59, 0xF8, 0x68, 0xF3, 0x16, 0x75, 0x12,  // .Y.h..u.
                                /* 0C38 */  0x26, 0x68, 0x00                                 // &h.
                            }
                        })
                    }

                    If ((\_SB.CPUW == DerefOf (CUWC [One])))
                    {
                        Return (Package (0x01)
                        {
                            Buffer (0x0C3B)
                            {
                                /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                                /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                                /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                                /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                                /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0xA7, 0x2C, 0x89, 0x87,  // .....,..
                                /* 0070 */  0x01, 0x0D, 0x90, 0x04, 0xD2, 0x72, 0x32, 0x35,  // .....r25
                                /* 0078 */  0x1A, 0xC6, 0x14, 0x00, 0x6C, 0xE2, 0xAA, 0x76,  // ....l..v
                                /* 0080 */  0x6A, 0xA0, 0xD0, 0x85, 0xA2, 0xD2, 0x70, 0xA6,  // j.....p.
                                /* 0088 */  0x14, 0x8E, 0x8B, 0x6C, 0xA7, 0x0B, 0x00, 0x00,  // ...l....
                                /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                                /* 0098 */  0x01, 0x96, 0x0D, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                                /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                                /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                                /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                                /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                                /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x43, 0xDB, 0x43,  // u8...C.C
                                /* 00D0 */  0xAA, 0xDE, 0xDE, 0x34, 0x3E, 0xF9, 0x0F, 0x06,  // ...4>...
                                /* 00D8 */  0x5C, 0xFB, 0xD8, 0x8F, 0x29, 0xA4, 0x42, 0x4A,  // \...).BJ
                                /* 00E0 */  0x20, 0xBC, 0x10, 0xEE, 0x22, 0x87, 0x14, 0xF3,  //  ..."...
                                /* 00E8 */  0x87, 0x7A, 0x41, 0x88, 0x1B, 0xBC, 0xC6, 0x8F,  // .zA.....
                                /* 00F0 */  0xF3, 0x3B, 0xB4, 0xA7, 0x46, 0xBD, 0x98, 0x91,  // .;..F...
                                /* 00F8 */  0x74, 0x9B, 0x5C, 0x52, 0x06, 0x6C, 0xCB, 0xEC,  // t.\R.l..
                                /* 0100 */  0xA3, 0xD0, 0xDE, 0x5F, 0xD7, 0x6C, 0x0B, 0x36,  // ..._.l.6
                                /* 0108 */  0x9D, 0xD7, 0x37, 0xB9, 0xE8, 0xA8, 0x2E, 0x6D,  // ..7....m
                                /* 0110 */  0xB9, 0x8A, 0xB9, 0x01, 0x8E, 0x60, 0x8F, 0xEA,  // .....`..
                                /* 0118 */  0x5C, 0xC1, 0x73, 0x3C, 0xA7, 0x48, 0xD7, 0xD6,  // \.s<.H..
                                /* 0120 */  0x6D, 0x1E, 0x55, 0x6D, 0x10, 0xCE, 0xBF, 0xF2,  // m.Um....
                                /* 0128 */  0xB0, 0xEB, 0xA3, 0x9D, 0x3F, 0xC5, 0xC2, 0x9A,  // ....?...
                                /* 0130 */  0xB1, 0xAF, 0xEA, 0xBC, 0x15, 0x21, 0x70, 0xC3,  // .....!p.
                                /* 0138 */  0x0F, 0x70, 0x7C, 0x1E, 0xBB, 0xEC, 0xB7, 0xB6,  // .p|.....
                                /* 0140 */  0xF8, 0xE5, 0x55, 0xC4, 0xA1, 0x70, 0x8F, 0x95,  // ..U..p..
                                /* 0148 */  0xC7, 0x49, 0x18, 0x5D, 0xF7, 0x19, 0x75, 0x93,  // .I.]..u.
                                /* 0150 */  0x99, 0xF5, 0xFA, 0x9C, 0xE2, 0x72, 0xAB, 0x6D,  // .....r.m
                                /* 0158 */  0x22, 0x30, 0xA7, 0x56, 0xD3, 0xEB, 0x66, 0x8F,  // "0.V..f.
                                /* 0160 */  0x28, 0x84, 0x3E, 0x69, 0x6D, 0x35, 0x9C, 0x5A,  // (.>im5.Z
                                /* 0168 */  0x04, 0xAB, 0x9E, 0x02, 0xF5, 0x90, 0xED, 0x7D,  // .......}
                                /* 0170 */  0x6C, 0xA1, 0x29, 0x72, 0x69, 0xEC, 0x70, 0x17,  // l.)ri.p.
                                /* 0178 */  0x32, 0x80, 0xFE, 0x51, 0x00, 0x6C, 0xE8, 0xFD,  // 2..Q.l..
                                /* 0180 */  0x56, 0xCE, 0x44, 0xC3, 0x86, 0x37, 0xB3, 0x2E,  // V.D..7..
                                /* 0188 */  0x8C, 0x1A, 0x14, 0x1B, 0x66, 0x84, 0x73, 0xE9,  // ....f.s.
                                /* 0190 */  0xA2, 0x19, 0x76, 0xA1, 0x17, 0x8F, 0xEA, 0x15,  // ..v.....
                                /* 0198 */  0xD0, 0x25, 0xEA, 0x66, 0x45, 0xB5, 0x5F, 0x40,  // .%.fE._@
                                /* 01A0 */  0xA6, 0xA1, 0x1C, 0xA6, 0xE6, 0xD9, 0xC5, 0x64,  // .......d
                                /* 01A8 */  0xCC, 0x4F, 0x6F, 0x44, 0x2C, 0xB4, 0xF4, 0x3F,  // .OoD,..?
                                /* 01B0 */  0x4C, 0xCA, 0x72, 0xAA, 0x09, 0xCE, 0x27, 0x3A,  // L.r...':
                                /* 01B8 */  0x61, 0xCB, 0xD4, 0x09, 0x77, 0x10, 0x5B, 0x7D,  // a...w.[}
                                /* 01C0 */  0x09, 0x5C, 0x24, 0x40, 0x3C, 0xFE, 0xEB, 0x5E,  // .\$@<..^
                                /* 01C8 */  0x36, 0x84, 0x68, 0x5F, 0x06, 0x08, 0xFA, 0xD7,  // 6.h_....
                                /* 01D0 */  0x78, 0x4A, 0xE7, 0xDB, 0xB2, 0xBB, 0x3D, 0xB8,  // xJ....=.
                                /* 01D8 */  0x04, 0x5E, 0x75, 0x18, 0x41, 0x76, 0xED, 0xB3,  // .^u.Av..
                                /* 01E0 */  0xA5, 0x49, 0xD4, 0x39, 0x4B, 0x77, 0x63, 0xE5,  // .I.9Kwc.
                                /* 01E8 */  0x10, 0x7F, 0xAC, 0xB7, 0xB6, 0xB1, 0xE7, 0x26,  // .......&
                                /* 01F0 */  0xE1, 0x0C, 0xD0, 0xA0, 0x0F, 0x90, 0x87, 0x97,  // ........
                                /* 01F8 */  0x5A, 0x24, 0x0F, 0x81, 0xEC, 0xCE, 0x02, 0xEC,  // Z$......
                                /* 0200 */  0x65, 0x33, 0x92, 0x4D, 0x7C, 0x63, 0x07, 0x77,  // e3.M|c.w
                                /* 0208 */  0xC0, 0xA1, 0xC9, 0x8E, 0xD3, 0xD2, 0xF2, 0xB8,  // ........
                                /* 0210 */  0x87, 0x6E, 0xD0, 0x97, 0x5C, 0x55, 0xEC, 0x12,  // .n..\U..
                                /* 0218 */  0x41, 0x87, 0xC3, 0x72, 0xE1, 0x0C, 0xF8, 0x9F,  // A..r....
                                /* 0220 */  0x3D, 0xE0, 0xAC, 0x94, 0xF6, 0x7C, 0x3F, 0x66,  // =....|?f
                                /* 0228 */  0xD7, 0x6A, 0xF7, 0x1A, 0xF3, 0x47, 0x11, 0xF7,  // .j...G..
                                /* 0230 */  0x37, 0x20, 0xAD, 0xDD, 0x87, 0x73, 0x77, 0x86,  // 7 ...sw.
                                /* 0238 */  0x60, 0xBB, 0xFD, 0x73, 0x9A, 0x75, 0xE9, 0x4B,  // `..s.u.K
                                /* 0240 */  0x33, 0xD9, 0x32, 0xC1, 0x79, 0x38, 0x05, 0x9D,  // 3.2.y8..
                                /* 0248 */  0xF5, 0x27, 0x1E, 0x34, 0x3F, 0xC1, 0xAD, 0x9D,  // .'.4?...
                                /* 0250 */  0x9B, 0xB5, 0xFD, 0x03, 0x03, 0x8C, 0x5B, 0x0B,  // ......[.
                                /* 0258 */  0x33, 0x7F, 0xFF, 0x3E, 0x1E, 0x54, 0x26, 0x15,  // 3..>.T&.
                                /* 0260 */  0xA2, 0x97, 0x9F, 0x44, 0x89, 0xA4, 0x79, 0xCF,  // ...D..y.
                                /* 0268 */  0xA0, 0x99, 0xDB, 0xF9, 0xF1, 0x21, 0xE0, 0xFF,  // .....!..
                                /* 0270 */  0x83, 0x56, 0xC7, 0x82, 0x4B, 0xE1, 0x34, 0xC5,  // .V..K.4.
                                /* 0278 */  0xFD, 0x24, 0x0A, 0x2F, 0xFD, 0xC5, 0x4E, 0x11,  // .$./..N.
                                /* 0280 */  0x08, 0xA7, 0x0C, 0xD4, 0x5D, 0x7A, 0xF0, 0x71,  // ....]z.q
                                /* 0288 */  0xDA, 0x36, 0xE2, 0x5D, 0x6C, 0x32, 0x55, 0x83,  // .6.]l2U.
                                /* 0290 */  0x58, 0x1C, 0x94, 0x50, 0xDF, 0xE3, 0x74, 0x0B,  // X..P..t.
                                /* 0298 */  0xF0, 0x52, 0xFC, 0xDF, 0x09, 0x47, 0x05, 0x67,  // .R...G.g
                                /* 02A0 */  0x48, 0xD9, 0x65, 0x8A, 0x11, 0xA5, 0xFD, 0x9E,  // H.e.....
                                /* 02A8 */  0x53, 0xDE, 0x4E, 0x76, 0x1E, 0xCE, 0x29, 0x1A,  // S.Nv..).
                                /* 02B0 */  0x62, 0xB3, 0x0A, 0x23, 0xF9, 0xAA, 0x96, 0x86,  // b..#....
                                /* 02B8 */  0x96, 0x87, 0x52, 0xA4, 0x58, 0xC8, 0x07, 0xB1,  // ..R.X...
                                /* 02C0 */  0x4A, 0x17, 0xAA, 0x67, 0x33, 0x5C, 0x21, 0x63,  // J..g3\!c
                                /* 02C8 */  0x1C, 0xC2, 0x93, 0x42, 0xF9, 0xB5, 0x9F, 0x57,  // ...B...W
                                /* 02D0 */  0x0C, 0xC3, 0x09, 0x6E, 0x2D, 0xC1, 0x63, 0x63,  // ...n-.cc
                                /* 02D8 */  0x0D, 0x11, 0xB0, 0x4A, 0xB3, 0x9C, 0xEA, 0xC6,  // ...J....
                                /* 02E0 */  0x6A, 0x1A, 0x5D, 0x21, 0xD3, 0xC9, 0x0F, 0xF6,  // j.]!....
                                /* 02E8 */  0xE4, 0x7B, 0x3A, 0xFB, 0x64, 0x8F, 0xF6, 0x61,  // .{:.d..a
                                /* 02F0 */  0x84, 0xAD, 0x42, 0xDF, 0x6B, 0x5A, 0x05, 0x21,  // ..B.kZ.!
                                /* 02F8 */  0xF0, 0xA1, 0xA6, 0x13, 0xFD, 0x23, 0x0C, 0x69,  // .....#.i
                                /* 0300 */  0xA0, 0x12, 0x73, 0x14, 0x40, 0x42, 0x0C, 0x6D,  // ..s.@B.m
                                /* 0308 */  0x1C, 0xB2, 0x6E, 0xA3, 0x3C, 0x22, 0xCE, 0xCE,  // ..n.<"..
                                /* 0310 */  0x69, 0xAA, 0x2A, 0x34, 0x4B, 0x7E, 0x6D, 0x61,  // i.*4K~ma
                                /* 0318 */  0xE9, 0x2E, 0xA1, 0x3F, 0xD2, 0x7E, 0xDD, 0x34,  // ...?.~.4
                                /* 0320 */  0x54, 0xE8, 0x33, 0xD6, 0x72, 0xED, 0x99, 0x2C,  // T.3.r..,
                                /* 0328 */  0xFA, 0x1D, 0x75, 0x27, 0x17, 0xE1, 0x29, 0x8A,  // ..u'..).
                                /* 0330 */  0x96, 0x55, 0x9E, 0x68, 0xF4, 0xEE, 0x1E, 0x60,  // .U.h...`
                                /* 0338 */  0xD2, 0xE7, 0x81, 0x4B, 0x9B, 0x30, 0x2C, 0x40,  // ...K.0,@
                                /* 0340 */  0x9E, 0x02, 0x31, 0x6C, 0xA4, 0x4C, 0x60, 0xC9,  // ..1l.L`.
                                /* 0348 */  0x08, 0x95, 0x78, 0xFD, 0xAC, 0xE0, 0x81, 0xC3,  // ..x.....
                                /* 0350 */  0xA9, 0x5A, 0xAF, 0xD7, 0x3A, 0xFC, 0xE2, 0x87,  // .Z..:...
                                /* 0358 */  0x37, 0xD2, 0x50, 0xF5, 0xCD, 0xB8, 0x24, 0x12,  // 7.P...$.
                                /* 0360 */  0x8B, 0x17, 0x19, 0x6E, 0x7D, 0x60, 0xA7, 0xFA,  // ...n}`..
                                /* 0368 */  0x97, 0x24, 0xB3, 0xE7, 0x22, 0x15, 0xBF, 0xB0,  // .$.."...
                                /* 0370 */  0x28, 0x00, 0x59, 0x12, 0x0F, 0x08, 0xF8, 0x55,  // (.Y....U
                                /* 0378 */  0x52, 0x29, 0xDA, 0xF5, 0x16, 0x81, 0x1D, 0xEB,  // R)......
                                /* 0380 */  0x8F, 0x2B, 0x5B, 0x39, 0x5C, 0xB8, 0x90, 0x2D,  // .+[9\..-
                                /* 0388 */  0x84, 0x28, 0x99, 0x64, 0xD8, 0x99, 0xDF, 0xEB,  // .(.d....
                                /* 0390 */  0xC2, 0x7F, 0x8E, 0x95, 0x33, 0x24, 0xA1, 0x4F,  // ....3$.O
                                /* 0398 */  0xC8, 0x8A, 0x0E, 0x4B, 0x59, 0x67, 0xE0, 0x4A,  // ...KYg.J
                                /* 03A0 */  0xBC, 0x06, 0xBD, 0x71, 0x20, 0xE3, 0xC7, 0x7A,  // ...q ..z
                                /* 03A8 */  0x72, 0x3C, 0xAB, 0x5E, 0x25, 0x29, 0x0B, 0x0E,  // r<.^%)..
                                /* 03B0 */  0x70, 0x54, 0x3B, 0xAA, 0xCE, 0x55, 0x14, 0x82,  // pT;..U..
                                /* 03B8 */  0x17, 0x61, 0xE6, 0x3C, 0x87, 0xFD, 0xB8, 0x05,  // .a.<....
                                /* 03C0 */  0x65, 0xE1, 0x8C, 0xA5, 0x20, 0xEF, 0x72, 0xC4,  // e... .r.
                                /* 03C8 */  0x93, 0xD8, 0x15, 0xB7, 0x73, 0x28, 0xB3, 0xDB,  // ....s(..
                                /* 03D0 */  0xAC, 0x50, 0xB8, 0x2A, 0x78, 0x41, 0xBF, 0xA7,  // .P.*xA..
                                /* 03D8 */  0x18, 0x62, 0x22, 0x34, 0x2A, 0x2C, 0x35, 0x58,  // .b"4*,5X
                                /* 03E0 */  0x83, 0x84, 0x24, 0x20, 0xCC, 0xD1, 0xBB, 0x01,  // ..$ ....
                                /* 03E8 */  0x29, 0x3B, 0xFC, 0x9E, 0x73, 0xE1, 0xAE, 0x14,  // );..s...
                                /* 03F0 */  0x34, 0xD9, 0x71, 0x44, 0x11, 0x00, 0x1E, 0xBE,  // 4.qD....
                                /* 03F8 */  0xEC, 0x85, 0x57, 0xD7, 0x20, 0x99, 0xC3, 0xF6,  // ..W. ...
                                /* 0400 */  0x15, 0x45, 0xBE, 0x4C, 0xF1, 0xDC, 0xE9, 0x4A,  // .E.L...J
                                /* 0408 */  0xE6, 0x10, 0x63, 0xF2, 0x4F, 0xB6, 0x29, 0x80,  // ..c.O.).
                                /* 0410 */  0xF3, 0x6B, 0xBF, 0x06, 0xEE, 0xAD, 0x21, 0xBC,  // .k....!.
                                /* 0418 */  0x25, 0xDD, 0x08, 0x4F, 0x9C, 0x13, 0x0E, 0x2B,  // %..O...+
                                /* 0420 */  0x36, 0xBF, 0xC9, 0xE8, 0xD0, 0xD8, 0x77, 0xE4,  // 6.....w.
                                /* 0428 */  0x10, 0x5A, 0x2C, 0xC8, 0x82, 0xAE, 0x32, 0x9D,  // .Z,...2.
                                /* 0430 */  0x52, 0x5C, 0x02, 0x53, 0x22, 0x99, 0x2B, 0xCC,  // R\.S".+.
                                /* 0438 */  0x12, 0x9A, 0xA7, 0xFB, 0xEB, 0x64, 0x8D, 0x32,  // .....d.2
                                /* 0440 */  0x49, 0x96, 0xD4, 0xE5, 0x2D, 0xDA, 0xA6, 0x3E,  // I...-..>
                                /* 0448 */  0x3E, 0x9F, 0x19, 0xC9, 0xE8, 0x01, 0xE0, 0x82,  // >.......
                                /* 0450 */  0xF2, 0xAD, 0xC5, 0xE7, 0x82, 0xDF, 0x6D, 0x97,  // ......m.
                                /* 0458 */  0x61, 0x58, 0x78, 0xB6, 0xB2, 0xC7, 0x6E, 0x73,  // aXx...ns
                                /* 0460 */  0xC7, 0x49, 0x9C, 0x43, 0x30, 0x16, 0x6F, 0x00,  // .I.C0.o.
                                /* 0468 */  0x79, 0x62, 0x6E, 0xFF, 0xB1, 0x84, 0x1E, 0x65,  // ybn....e
                                /* 0470 */  0x23, 0x8F, 0x5B, 0x9E, 0xF8, 0x27, 0xBF, 0x6A,  // #.[..'.j
                                /* 0478 */  0xA4, 0x45, 0xB8, 0x7F, 0xC4, 0x16, 0xC9, 0x58,  // .E.....X
                                /* 0480 */  0xAA, 0xD0, 0x02, 0xFC, 0x34, 0x39, 0xBD, 0xC0,  // ....49..
                                /* 0488 */  0x93, 0x99, 0x3D, 0x08, 0xBF, 0xEE, 0xCE, 0x98,  // ..=.....
                                /* 0490 */  0xF0, 0x3D, 0xBB, 0x16, 0xEC, 0xEF, 0x97, 0x93,  // .=......
                                /* 0498 */  0x5A, 0xD4, 0xEE, 0x7D, 0x3E, 0x01, 0xC2, 0xCA,  // Z..}>...
                                /* 04A0 */  0xDE, 0x8F, 0xBE, 0x96, 0xB6, 0xBF, 0x1B, 0x1E,  // ........
                                /* 04A8 */  0x40, 0x45, 0x2B, 0xAC, 0xFE, 0x1E, 0xB8, 0xBF,  // @E+.....
                                /* 04B0 */  0xAF, 0x86, 0x68, 0x47, 0x89, 0x1F, 0x39, 0x2A,  // ..hG..9*
                                /* 04B8 */  0x0D, 0xA9, 0x2F, 0x5A, 0x1A, 0xF3, 0x75, 0xE9,  // ../Z..u.
                                /* 04C0 */  0x15, 0xBE, 0x87, 0x04, 0xC7, 0x9A, 0x8D, 0xC9,  // ........
                                /* 04C8 */  0x7B, 0xA5, 0xB8, 0x6B, 0x2D, 0xBD, 0x40, 0x8C,  // {..k-.@.
                                /* 04D0 */  0x25, 0x66, 0x3F, 0x09, 0x25, 0x90, 0x0E, 0x61,  // %f?.%..a
                                /* 04D8 */  0x9E, 0xAA, 0x5C, 0xD7, 0x79, 0xF1, 0xA8, 0xF7,  // ..\.y...
                                /* 04E0 */  0x6D, 0xB1, 0x14, 0xB8, 0x7D, 0x6D, 0xBD, 0x66,  // m...}m.f
                                /* 04E8 */  0xB1, 0x1F, 0xC4, 0xEF, 0xFD, 0xCD, 0x93, 0x6A,  // .......j
                                /* 04F0 */  0x8A, 0x66, 0x5E, 0x5A, 0x9C, 0xB2, 0xCF, 0xAF,  // .f^Z....
                                /* 04F8 */  0x83, 0x49, 0x70, 0x55, 0xFF, 0xD1, 0xE6, 0x60,  // .IpU...`
                                /* 0500 */  0x5D, 0x66, 0x18, 0x64, 0x05, 0x69, 0x83, 0x9B,  // ]f.d.i..
                                /* 0508 */  0xB9, 0x81, 0x4A, 0x17, 0xAD, 0x68, 0x97, 0x1E,  // ..J..h..
                                /* 0510 */  0x0A, 0x74, 0xC5, 0x1D, 0x6B, 0x68, 0x73, 0x66,  // .t..khsf
                                /* 0518 */  0xE8, 0x98, 0x9F, 0x50, 0x81, 0x30, 0x00, 0x64,  // ...P.0.d
                                /* 0520 */  0xAF, 0xBC, 0x5C, 0x70, 0x2D, 0x89, 0x29, 0xD5,  // ..\p-.).
                                /* 0528 */  0x93, 0xBA, 0x8D, 0xEC, 0x79, 0x20, 0x51, 0xD7,  // ....y Q.
                                /* 0530 */  0x9B, 0x6D, 0xB6, 0x5D, 0x67, 0xB2, 0x62, 0x22,  // .m.]g.b"
                                /* 0538 */  0x8A, 0x8C, 0x05, 0x4F, 0x65, 0x66, 0x1F, 0xDB,  // ...Oef..
                                /* 0540 */  0xBF, 0xC2, 0x1D, 0x12, 0x82, 0xC0, 0x8F, 0x5F,  // ......._
                                /* 0548 */  0x08, 0x91, 0x94, 0xD5, 0x65, 0x1F, 0x87, 0x29,  // ....e..)
                                /* 0550 */  0x62, 0x8C, 0x37, 0xE6, 0x10, 0x8C, 0x50, 0xC8,  // b.7...P.
                                /* 0558 */  0x4B, 0x69, 0xED, 0xE5, 0x7A, 0x30, 0x81, 0x8A,  // Ki..z0..
                                /* 0560 */  0xE2, 0x9A, 0x4A, 0xF4, 0x0F, 0xBD, 0x78, 0x1E,  // ..J...x.
                                /* 0568 */  0xFD, 0xA4, 0x52, 0x8E, 0x87, 0x4D, 0x3A, 0xBE,  // ..R..M:.
                                /* 0570 */  0x1D, 0xBA, 0xFD, 0xB2, 0xBE, 0xC4, 0x81, 0x3D,  // .......=
                                /* 0578 */  0x4D, 0x2C, 0xD9, 0xC2, 0x39, 0xBC, 0x26, 0x71,  // M,..9.&q
                                /* 0580 */  0x06, 0xB8, 0xDA, 0x26, 0x17, 0x7A, 0x94, 0x93,  // ...&.z..
                                /* 0588 */  0x40, 0xD3, 0xC3, 0xAA, 0x03, 0xB4, 0xDB, 0xEA,  // @.......
                                /* 0590 */  0x95, 0x53, 0x9D, 0x8E, 0xE4, 0x74, 0xEB, 0x4C,  // .S...t.L
                                /* 0598 */  0x3D, 0x64, 0xDF, 0xEE, 0x7E, 0x9D, 0xF2, 0x97,  // =d..~...
                                /* 05A0 */  0xDF, 0x39, 0xE9, 0x06, 0x20, 0xF2, 0x30, 0x00,  // .9.. .0.
                                /* 05A8 */  0x56, 0xA4, 0xEE, 0xFB, 0x9E, 0x2D, 0x89, 0xDE,  // V....-..
                                /* 05B0 */  0x81, 0xFE, 0xB9, 0x2D, 0x4F, 0x80, 0x15, 0xD6,  // ...-O...
                                /* 05B8 */  0xD8, 0x64, 0x31, 0xB2, 0x4E, 0xEF, 0x91, 0x9C,  // .d1.N...
                                /* 05C0 */  0xCA, 0xD3, 0x77, 0x71, 0x72, 0xF5, 0x06, 0x73,  // ..wqr..s
                                /* 05C8 */  0x0D, 0x4C, 0x4F, 0x40, 0xA5, 0x29, 0x21, 0x5E,  // .LO@.)!^
                                /* 05D0 */  0xBA, 0xD5, 0x27, 0x97, 0xF1, 0xBD, 0x10, 0x18,  // ..'.....
                                /* 05D8 */  0x8D, 0xF3, 0xD8, 0x89, 0xDD, 0x78, 0xB4, 0x54,  // .....x.T
                                /* 05E0 */  0x44, 0x6A, 0x20, 0x57, 0xBE, 0x41, 0x49, 0xDE,  // Dj W.AI.
                                /* 05E8 */  0xF9, 0x9B, 0xAA, 0x7D, 0x70, 0xC8, 0x73, 0x9A,  // ...}p.s.
                                /* 05F0 */  0x2B, 0x45, 0x90, 0x11, 0xE5, 0x67, 0x56, 0x70,  // +E...gVp
                                /* 05F8 */  0x27, 0x91, 0x5A, 0x25, 0x5F, 0x21, 0x9D, 0xD7,  // '.Z%_!..
                                /* 0600 */  0x8E, 0x4B, 0xC5, 0x6E, 0xE6, 0x18, 0x73, 0x02,  // .K.n..s.
                                /* 0608 */  0xEC, 0xAF, 0xD0, 0x85, 0xCE, 0x96, 0x4E, 0x7C,  // ......N|
                                /* 0610 */  0x4C, 0x44, 0x22, 0xDB, 0x90, 0x29, 0xB4, 0x7F,  // LD"..)..
                                /* 0618 */  0x0F, 0xBE, 0x7A, 0xF6, 0xE1, 0x85, 0x1D, 0x77,  // ..z....w
                                /* 0620 */  0x3D, 0x6B, 0x15, 0xC0, 0xF9, 0xA0, 0x20, 0x08,  // =k.... .
                                /* 0628 */  0xEF, 0x79, 0x4E, 0xA4, 0xEE, 0x0C, 0xBE, 0x6A,  // .yN....j
                                /* 0630 */  0xBE, 0xE1, 0x2A, 0xE1, 0x47, 0xAF, 0x64, 0x93,  // ..*.G.d.
                                /* 0638 */  0x9E, 0xDF, 0x46, 0xBD, 0x92, 0xBD, 0x41, 0x68,  // ..F...Ah
                                /* 0640 */  0x02, 0xF8, 0x1D, 0x4E, 0x13, 0x65, 0x3A, 0xF5,  // ...N.e:.
                                /* 0648 */  0x0E, 0x2F, 0xF3, 0x4C, 0x35, 0x2B, 0xA2, 0x93,  // ./.L5+..
                                /* 0650 */  0xCF, 0xCF, 0xB7, 0xCD, 0x14, 0x09, 0x7A, 0xF4,  // ......z.
                                /* 0658 */  0x44, 0x7F, 0x6D, 0x97, 0x34, 0x15, 0xE4, 0xE9,  // D.m.4...
                                /* 0660 */  0x13, 0xD4, 0xEC, 0x32, 0x0F, 0xBF, 0xD5, 0x90,  // ...2....
                                /* 0668 */  0xED, 0x08, 0xF9, 0x04, 0x4F, 0x85, 0x81, 0xDE,  // ....O...
                                /* 0670 */  0x94, 0x67, 0x60, 0x6D, 0x9F, 0xAD, 0x5A, 0x8A,  // .g`m..Z.
                                /* 0678 */  0xAD, 0x99, 0x9B, 0x60, 0x69, 0xBA, 0x9E, 0x5F,  // ...`i.._
                                /* 0680 */  0xAA, 0x95, 0x83, 0x7A, 0xE5, 0xFB, 0xF8, 0xE7,  // ...z....
                                /* 0688 */  0x61, 0xCE, 0xB8, 0x38, 0x7B, 0xC4, 0x89, 0xF3,  // a..8{...
                                /* 0690 */  0x4A, 0x76, 0xBF, 0x0B, 0x62, 0x50, 0x2D, 0xE2,  // Jv..bP-.
                                /* 0698 */  0x14, 0x7B, 0xA3, 0x28, 0x6A, 0x5C, 0x07, 0xB5,  // .{.(j\..
                                /* 06A0 */  0x00, 0x02, 0x20, 0x81, 0x58, 0x1F, 0x3E, 0xCC,  // .. .X.>.
                                /* 06A8 */  0x17, 0xEF, 0x7B, 0x9B, 0xEC, 0x6A, 0x04, 0x25,  // ..{..j.%
                                /* 06B0 */  0x85, 0x77, 0xB3, 0xC5, 0x2A, 0x24, 0x3C, 0xB6,  // .w..*$<.
                                /* 06B8 */  0x52, 0x6F, 0x1E, 0x98, 0x4A, 0xB2, 0x80, 0xB0,  // Ro..J...
                                /* 06C0 */  0x3B, 0x5F, 0x26, 0xFA, 0x20, 0x94, 0x3D, 0xD0,  // ;_&. .=.
                                /* 06C8 */  0x0D, 0x0C, 0x3A, 0x48, 0xC8, 0x5F, 0xD2, 0x81,  // ..:H._..
                                /* 06D0 */  0x32, 0x5F, 0xF1, 0x28, 0x8E, 0xEB, 0x9A, 0xC1,  // 2_.(....
                                /* 06D8 */  0x79, 0x5C, 0xE5, 0xBA, 0x71, 0x67, 0xB1, 0xDE,  // y\..qg..
                                /* 06E0 */  0x46, 0xB0, 0x9F, 0xB3, 0x43, 0xFC, 0xBC, 0xA1,  // F...C...
                                /* 06E8 */  0x59, 0x40, 0x6C, 0xEA, 0xD7, 0x41, 0x4F, 0x3A,  // Y@l..AO:
                                /* 06F0 */  0xB2, 0x35, 0x24, 0x0D, 0x23, 0x82, 0xAB, 0x38,  // .5$.#..8
                                /* 06F8 */  0x3B, 0x06, 0x79, 0x64, 0x81, 0xC4, 0x43, 0x61,  // ;.yd..Ca
                                /* 0700 */  0x51, 0x65, 0xEB, 0x36, 0xF4, 0x5F, 0x44, 0x41,  // Qe.6._DA
                                /* 0708 */  0x73, 0xBC, 0x76, 0x07, 0xAD, 0x7E, 0xD2, 0x45,  // s.v..~.E
                                /* 0710 */  0xCE, 0x13, 0xD8, 0xE8, 0x40, 0x55, 0x00, 0x43,  // ....@U.C
                                /* 0718 */  0xDA, 0x6B, 0x10, 0xEE, 0xB6, 0xA9, 0xEA, 0x31,  // .k.....1
                                /* 0720 */  0x45, 0xF8, 0xB7, 0x81, 0x53, 0xFD, 0xDC, 0x7E,  // E...S..~
                                /* 0728 */  0x6B, 0x39, 0x90, 0x1D, 0x62, 0xD1, 0x90, 0x54,  // k9..b..T
                                /* 0730 */  0x01, 0x4A, 0x74, 0x3F, 0xC6, 0x4B, 0x8C, 0xF2,  // .Jt?.K..
                                /* 0738 */  0x90, 0x45, 0x2F, 0xEA, 0xE1, 0x0A, 0x80, 0xB0,  // .E/.....
                                /* 0740 */  0xAF, 0xC3, 0xCA, 0x3E, 0xA8, 0xC8, 0xFA, 0xEF,  // ...>....
                                /* 0748 */  0x09, 0xB1, 0x29, 0xC5, 0x60, 0x41, 0xC1, 0x68,  // ..).`A.h
                                /* 0750 */  0x32, 0x21, 0x85, 0xFA, 0x8E, 0xB9, 0xE9, 0x09,  // 2!......
                                /* 0758 */  0x75, 0x2B, 0x26, 0x6E, 0x38, 0xFC, 0xC8, 0xDB,  // u+&n8...
                                /* 0760 */  0xE3, 0x31, 0xB5, 0x6D, 0xAD, 0x29, 0x8B, 0xBD,  // .1.m.)..
                                /* 0768 */  0xC8, 0x5F, 0x14, 0xDB, 0x7B, 0x2E, 0xC0, 0x8C,  // ._..{...
                                /* 0770 */  0xC8, 0xE8, 0xC4, 0xE1, 0xF5, 0x26, 0x0D, 0x2A,  // .....&.*
                                /* 0778 */  0x7C, 0x35, 0x7A, 0x33, 0x23, 0x32, 0x42, 0x49,  // |5z3#2BI
                                /* 0780 */  0xD5, 0x0C, 0x84, 0x5A, 0x8A, 0xB0, 0xC3, 0x11,  // ...Z....
                                /* 0788 */  0x26, 0x99, 0x10, 0xE9, 0x4D, 0x8F, 0x31, 0x5F,  // &...M.1_
                                /* 0790 */  0xD1, 0xC0, 0xAC, 0x5D, 0xF3, 0x4F, 0x6A, 0x9F,  // ...].Oj.
                                /* 0798 */  0x26, 0x82, 0x3C, 0x4A, 0x01, 0x1B, 0x20, 0x7A,  // &.<J.. z
                                /* 07A0 */  0x74, 0x8C, 0x8B, 0xCC, 0xE3, 0xB1, 0x13, 0xD4,  // t.......
                                /* 07A8 */  0xA5, 0xF1, 0xE7, 0xD1, 0xBF, 0x1C, 0x42, 0x74,  // ......Bt
                                /* 07B0 */  0x84, 0xAC, 0xAF, 0xF6, 0x5E, 0x01, 0x11, 0xD4,  // ....^...
                                /* 07B8 */  0x07, 0x56, 0x40, 0x6F, 0xC4, 0x38, 0x3B, 0xDD,  // .V@o.8;.
                                /* 07C0 */  0x3F, 0xA1, 0x80, 0x0C, 0x43, 0xC0, 0x12, 0xEF,  // ?...C...
                                /* 07C8 */  0x83, 0x3D, 0xCE, 0x80, 0x05, 0x05, 0xE7, 0x98,  // .=......
                                /* 07D0 */  0xA4, 0x54, 0xF6, 0x80, 0xDC, 0x39, 0x46, 0x4D,  // .T...9FM
                                /* 07D8 */  0x7A, 0xAF, 0xF1, 0xBA, 0x24, 0x18, 0xFC, 0x35,  // z...$..5
                                /* 07E0 */  0xCE, 0xB6, 0x1C, 0x66, 0x33, 0xDA, 0x0B, 0x0D,  // ...f3...
                                /* 07E8 */  0xC6, 0x8C, 0xB2, 0x6E, 0xBE, 0xD9, 0x73, 0x29,  // ...n..s)
                                /* 07F0 */  0x0C, 0x4D, 0x6A, 0x69, 0xBB, 0xF3, 0x50, 0x2A,  // .Mji..P*
                                /* 07F8 */  0xA6, 0x07, 0xCD, 0x05, 0x7B, 0x51, 0x04, 0x35,  // ....{Q.5
                                /* 0800 */  0x28, 0xD5, 0xE8, 0xCA, 0x0A, 0x81, 0xB0, 0x4C,  // (......L
                                /* 0808 */  0xB2, 0x18, 0xF4, 0xBE, 0xB0, 0x93, 0x60, 0xF9,  // ......`.
                                /* 0810 */  0xAF, 0xAC, 0x34, 0x28, 0xEE, 0x39, 0x66, 0x12,  // ..4(.9f.
                                /* 0818 */  0xAE, 0x39, 0x80, 0xD4, 0xC6, 0xF5, 0x22, 0xE5,  // .9....".
                                /* 0820 */  0xC7, 0x97, 0x80, 0x1A, 0x21, 0x79, 0xFA, 0x24,  // ....!y.$
                                /* 0828 */  0xCD, 0xC2, 0x3E, 0x9B, 0x90, 0xEE, 0xBB, 0xE9,  // ..>.....
                                /* 0830 */  0x09, 0xF9, 0x09, 0x08, 0x02, 0xAA, 0x63, 0x17,  // ......c.
                                /* 0838 */  0x28, 0x65, 0xAE, 0x2E, 0x57, 0x0F, 0xD4, 0x59,  // (e..W..Y
                                /* 0840 */  0x9D, 0xCB, 0x9D, 0x23, 0x5F, 0xBE, 0x0E, 0xE2,  // ...#_...
                                /* 0848 */  0x0B, 0xE6, 0x8E, 0x48, 0x42, 0x88, 0xEE, 0x57,  // ...HB..W
                                /* 0850 */  0x4A, 0x2C, 0x26, 0x29, 0x61, 0x2F, 0x88, 0x6D,  // J,&)a/.m
                                /* 0858 */  0x9E, 0xC2, 0x18, 0x1B, 0x5E, 0x48, 0x5E, 0x37,  // ....^H^7
                                /* 0860 */  0x76, 0x26, 0xF8, 0x0C, 0x14, 0x9C, 0xB8, 0xF3,  // v&......
                                /* 0868 */  0x63, 0xF2, 0x1C, 0x58, 0xD8, 0x24, 0x27, 0xAF,  // c..X.$'.
                                /* 0870 */  0x69, 0xAE, 0xE3, 0xBC, 0x1B, 0xBE, 0x37, 0xE1,  // i.....7.
                                /* 0878 */  0x59, 0xE0, 0x6F, 0xF9, 0xCB, 0xE1, 0xB2, 0x81,  // Y.o.....
                                /* 0880 */  0xE6, 0x9E, 0x53, 0x7D, 0xAA, 0x37, 0x8A, 0x06,  // ..S}.7..
                                /* 0888 */  0xCA, 0xCA, 0x0F, 0x84, 0xB1, 0xCC, 0xFA, 0xDF,  // ........
                                /* 0890 */  0x6A, 0xD9, 0x29, 0x80, 0xBC, 0x3D, 0x7D, 0xE0,  // j.)..=}.
                                /* 0898 */  0x17, 0xA8, 0xC0, 0x8D, 0xE0, 0x52, 0x9B, 0x54,  // .....R.T
                                /* 08A0 */  0xFF, 0xA0, 0xDB, 0xE6, 0x22, 0xD2, 0xD0, 0x92,  // ...."...
                                /* 08A8 */  0xDE, 0x22, 0x22, 0xF3, 0xB1, 0x1F, 0xDC, 0x84,  // ."".....
                                /* 08B0 */  0x2E, 0x6A, 0x7D, 0x70, 0xA3, 0xAD, 0x65, 0xC5,  // .j}p..e.
                                /* 08B8 */  0xA1, 0x15, 0x9D, 0x46, 0x81, 0x84, 0xBF, 0x49,  // ...F...I
                                /* 08C0 */  0x5D, 0x4E, 0x00, 0x98, 0x46, 0x0E, 0xEF, 0xBC,  // ]N..F...
                                /* 08C8 */  0xFA, 0x3C, 0x7F, 0xE0, 0xA0, 0x4C, 0xA7, 0xCE,  // .<...L..
                                /* 08D0 */  0xBB, 0xFB, 0x12, 0x37, 0xBD, 0xE5, 0x94, 0x90,  // ...7....
                                /* 08D8 */  0x63, 0x1F, 0x04, 0xB1, 0x9B, 0x5B, 0x6A, 0x0F,  // c....[j.
                                /* 08E0 */  0xEA, 0x77, 0xED, 0x08, 0x0E, 0xB9, 0x86, 0x5F,  // .w....._
                                /* 08E8 */  0xAE, 0x92, 0x51, 0xF9, 0xE4, 0x8B, 0x3C, 0x87,  // ..Q...<.
                                /* 08F0 */  0xB5, 0x5F, 0x9F, 0x9C, 0xDF, 0xA2, 0x30, 0xBB,  // ._....0.
                                /* 08F8 */  0x5B, 0x80, 0x8F, 0x13, 0x08, 0xD4, 0x09, 0x55,  // [......U
                                /* 0900 */  0x4C, 0x46, 0x50, 0x13, 0xEE, 0xCF, 0xC3, 0x40,  // LFP....@
                                /* 0908 */  0xF2, 0x95, 0x22, 0xF7, 0x5D, 0x2A, 0x62, 0x16,  // ..".]*b.
                                /* 0910 */  0xDC, 0x7D, 0x63, 0xDD, 0x0E, 0x37, 0x13, 0x31,  // .}c..7.1
                                /* 0918 */  0x3E, 0x90, 0xD8, 0xC6, 0x0C, 0x74, 0x29, 0x1B,  // >....t).
                                /* 0920 */  0x0B, 0xFD, 0xEC, 0xFC, 0x0F, 0x7E, 0x7A, 0x89,  // .....~z.
                                /* 0928 */  0x11, 0x31, 0x16, 0x47, 0xE0, 0x1A, 0xCF, 0xFE,  // .1.G....
                                /* 0930 */  0x46, 0xC9, 0x29, 0xC6, 0x4D, 0x89, 0x9E, 0xC5,  // F.).M...
                                /* 0938 */  0xBC, 0xF7, 0xC4, 0x2A, 0x1E, 0xE3, 0x98, 0x40,  // ...*...@
                                /* 0940 */  0xB0, 0xC1, 0x73, 0xED, 0xE7, 0x39, 0x92, 0x1F,  // ..s..9..
                                /* 0948 */  0x06, 0x29, 0xCC, 0xDB, 0xF9, 0x8A, 0x4D, 0xD2,  // .)....M.
                                /* 0950 */  0x1B, 0x58, 0x90, 0xDB, 0x86, 0x06, 0x35, 0x35,  // .X....55
                                /* 0958 */  0x2F, 0x30, 0x97, 0x29, 0xA8, 0xE5, 0x4F, 0x6C,  // /0.)..Ol
                                /* 0960 */  0xDA, 0xB1, 0x4E, 0xA3, 0x45, 0x90, 0xE7, 0x54,  // ..N.E..T
                                /* 0968 */  0x64, 0x69, 0x16, 0xFD, 0xB1, 0xD0, 0x16, 0xCA,  // di......
                                /* 0970 */  0x7A, 0x4D, 0x2D, 0x7E, 0xAC, 0x2B, 0xEB, 0x04,  // zM-~.+..
                                /* 0978 */  0x4B, 0x4F, 0x22, 0xA9, 0xC1, 0x2F, 0x2E, 0x4F,  // KO"../.O
                                /* 0980 */  0x0C, 0xE9, 0x25, 0x84, 0x4A, 0x47, 0xC0, 0x13,  // ..%.JG..
                                /* 0988 */  0x66, 0x60, 0x2D, 0x27, 0x1D, 0x01, 0xE4, 0x16,  // f`-'....
                                /* 0990 */  0xD5, 0x56, 0x11, 0xFF, 0x78, 0xCF, 0xB0, 0x02,  // .V..x...
                                /* 0998 */  0xF5, 0x00, 0xA8, 0xDC, 0xC9, 0xAB, 0x08, 0x3A,  // .......:
                                /* 09A0 */  0x54, 0xD2, 0x96, 0x5B, 0x31, 0xC1, 0xA3, 0x74,  // T..[1..t
                                /* 09A8 */  0x38, 0x38, 0xDE, 0x70, 0xDE, 0xAD, 0x92, 0x0B,  // 88.p....
                                /* 09B0 */  0x0F, 0xA7, 0xBB, 0x1B, 0xC8, 0xFC, 0x43, 0x9F,  // ......C.
                                /* 09B8 */  0xE0, 0x99, 0xCB, 0x0C, 0x87, 0x9F, 0x2E, 0xBE,  // ........
                                /* 09C0 */  0xB4, 0x18, 0x3F, 0xC5, 0xC3, 0xBC, 0x18, 0xF7,  // ..?.....
                                /* 09C8 */  0xC8, 0xF0, 0xB6, 0xEC, 0x98, 0xDC, 0xC3, 0xAB,  // ........
                                /* 09D0 */  0xF9, 0x19, 0x52, 0xA0, 0x4E, 0xE5, 0xDF, 0x5E,  // ..R.N..^
                                /* 09D8 */  0xD1, 0x50, 0x4A, 0x43, 0x9E, 0xE0, 0xCE, 0xDE,  // .PJC....
                                /* 09E0 */  0xCD, 0x5D, 0x8A, 0xE9, 0xDD, 0xA1, 0x56, 0xB4,  // .]....V.
                                /* 09E8 */  0xB2, 0x75, 0xC4, 0xB6, 0xE7, 0x6B, 0x00, 0x1E,  // .u...k..
                                /* 09F0 */  0xE6, 0x88, 0x61, 0x32, 0x07, 0x9E, 0xD3, 0x33,  // ..a2...3
                                /* 09F8 */  0xE6, 0xF8, 0x0E, 0x28, 0xB5, 0x47, 0x1A, 0x30,  // ...(.G.0
                                /* 0A00 */  0x1D, 0x35, 0x8F, 0x2B, 0xF6, 0x0F, 0x4F, 0x9A,  // .5.+..O.
                                /* 0A08 */  0x70, 0x4D, 0x85, 0x56, 0x2A, 0xD7, 0xE9, 0xD5,  // pM.V*...
                                /* 0A10 */  0x03, 0xF5, 0x07, 0xD6, 0xCA, 0xAB, 0x02, 0x73,  // .......s
                                /* 0A18 */  0x3B, 0x41, 0xC1, 0x56, 0xA7, 0x29, 0x5B, 0xAE,  // ;A.V.)[.
                                /* 0A20 */  0xCD, 0x7E, 0x1E, 0x84, 0x4C, 0xAD, 0xED, 0x5F,  // .~..L.._
                                /* 0A28 */  0xCE, 0x72, 0x42, 0x4B, 0xD6, 0xC4, 0xE2, 0xBA,  // .rBK....
                                /* 0A30 */  0xC1, 0x91, 0x43, 0x88, 0x40, 0xB9, 0xF7, 0xBA,  // ..C.@...
                                /* 0A38 */  0x5D, 0x78, 0x02, 0x2F, 0x56, 0x37, 0xCA, 0x51,  // ]x./V7.Q
                                /* 0A40 */  0x85, 0xB2, 0x87, 0x3B, 0xDE, 0x0F, 0x1A, 0x4B,  // ...;...K
                                /* 0A48 */  0xFE, 0xCC, 0x0E, 0x35, 0x89, 0x13, 0x21, 0x54,  // ...5..!T
                                /* 0A50 */  0xEB, 0x60, 0xA1, 0xA2, 0x19, 0xF4, 0x7D, 0xB0,  // .`....}.
                                /* 0A58 */  0xCC, 0x6C, 0x03, 0xFF, 0xBD, 0xFD, 0xEB, 0xF5,  // .l......
                                /* 0A60 */  0xCC, 0x53, 0x22, 0x8D, 0xAD, 0x6C, 0xF1, 0xBD,  // .S"..l..
                                /* 0A68 */  0x4A, 0xD2, 0xCC, 0x0C, 0x9B, 0x7B, 0x54, 0x05,  // J....{T.
                                /* 0A70 */  0x93, 0xA1, 0x6B, 0x4C, 0xE2, 0xB9, 0x4D, 0xA0,  // ..kL..M.
                                /* 0A78 */  0xB8, 0xB5, 0x30, 0xC0, 0x23, 0x4C, 0x90, 0x4E,  // ..0.#L.N
                                /* 0A80 */  0xFE, 0x72, 0xB7, 0x5E, 0x65, 0x41, 0xA2, 0x31,  // .r.^eA.1
                                /* 0A88 */  0xC6, 0x43, 0xA9, 0x76, 0xDC, 0xFC, 0xF7, 0x6E,  // .C.v...n
                                /* 0A90 */  0x1E, 0xFC, 0x2C, 0xC7, 0xD7, 0x4B, 0x93, 0x66,  // ..,..K.f
                                /* 0A98 */  0xCF, 0xFD, 0xBA, 0x94, 0x4C, 0xE3, 0xAD, 0x62,  // ....L..b
                                /* 0AA0 */  0x03, 0xC8, 0x26, 0x20, 0x60, 0x27, 0xAA, 0x8F,  // ..& `'..
                                /* 0AA8 */  0x07, 0x05, 0x79, 0xCA, 0x04, 0x78, 0x03, 0x54,  // ..y..x.T
                                /* 0AB0 */  0xE5, 0x0E, 0xAA, 0x31, 0x9F, 0x12, 0x48, 0x3A,  // ...1..H:
                                /* 0AB8 */  0x61, 0x08, 0x68, 0xA6, 0xF1, 0x5B, 0xEB, 0x87,  // a.h..[..
                                /* 0AC0 */  0x5A, 0xFA, 0xED, 0x6F, 0xE2, 0x46, 0xEB, 0xE0,  // Z..o.F..
                                /* 0AC8 */  0x50, 0x97, 0x44, 0xD5, 0x77, 0x6A, 0x48, 0x99,  // P.D.wjH.
                                /* 0AD0 */  0xA1, 0x90, 0xF9, 0x3C, 0x32, 0x24, 0x66, 0x40,  // ...<2$f@
                                /* 0AD8 */  0x21, 0x6D, 0xB9, 0x01, 0x4E, 0xAA, 0x8E, 0xFC,  // !m..N...
                                /* 0AE0 */  0xA9, 0x51, 0x94, 0x2F, 0x78, 0xCF, 0x75, 0x34,  // .Q./x.u4
                                /* 0AE8 */  0x0A, 0x94, 0xE6, 0x3F, 0x30, 0x15, 0xF7, 0xC7,  // ...?0...
                                /* 0AF0 */  0x0E, 0x86, 0x96, 0x8C, 0xB6, 0x00, 0x3A, 0xC5,  // ......:.
                                /* 0AF8 */  0x2A, 0xF2, 0xAE, 0xCC, 0x03, 0x42, 0xC4, 0x75,  // *....B.u
                                /* 0B00 */  0x76, 0xAB, 0x01, 0xC3, 0x64, 0xD6, 0xD6, 0xD1,  // v...d...
                                /* 0B08 */  0x59, 0x9B, 0xA5, 0xE0, 0x91, 0x57, 0x24, 0x23,  // Y....W$#
                                /* 0B10 */  0x53, 0x8E, 0xB6, 0xAD, 0xE5, 0x13, 0xFF, 0x5C,  // S......\
                                /* 0B18 */  0xC1, 0x23, 0x6F, 0x7E, 0xC6, 0xC4, 0x89, 0xB4,  // .#o~....
                                /* 0B20 */  0xFD, 0xF8, 0xEC, 0x09, 0x9A, 0xE6, 0x29, 0xE6,  // ......).
                                /* 0B28 */  0x1C, 0xD9, 0x34, 0x58, 0x62, 0x24, 0x10, 0x04,  // ..4Xb$..
                                /* 0B30 */  0xE3, 0xC6, 0x17, 0xC2, 0xA5, 0xE1, 0x89, 0x26,  // .......&
                                /* 0B38 */  0x2A, 0x8F, 0x24, 0x06, 0x86, 0x53, 0xE0, 0x52,  // *.$..S.R
                                /* 0B40 */  0xE5, 0xC8, 0xF1, 0xBA, 0xF2, 0xA5, 0x30, 0x67,  // ......0g
                                /* 0B48 */  0xC7, 0x2A, 0x9D, 0xA5, 0x4C, 0xFA, 0x3C, 0x7F,  // .*..L.<.
                                /* 0B50 */  0x8D, 0xB5, 0x58, 0xE3, 0xDC, 0xBE, 0x8F, 0x2F,  // ..X..../
                                /* 0B58 */  0x7E, 0x26, 0xB9, 0x8D, 0x50, 0xB2, 0x5A, 0xA6,  // ~&..P.Z.
                                /* 0B60 */  0xEB, 0xBD, 0x9C, 0xDB, 0x6D, 0xF0, 0xFC, 0x5C,  // ....m..\
                                /* 0B68 */  0x64, 0xF7, 0x3F, 0xE0, 0x9B, 0x8D, 0x9C, 0x3A,  // d.?....:
                                /* 0B70 */  0x5E, 0xC7, 0x20, 0xD8, 0x5B, 0x43, 0xE1, 0x00,  // ^. .[C..
                                /* 0B78 */  0x07, 0x41, 0x84, 0xB7, 0x7D, 0xAB, 0x3B, 0x69,  // .A..}.;i
                                /* 0B80 */  0xDA, 0x5A, 0xFB, 0x73, 0x20, 0x14, 0x7F, 0x44,  // .Z.s ..D
                                /* 0B88 */  0x73, 0x16, 0x34, 0xBB, 0xF2, 0xF7, 0x20, 0x89,  // s.4... .
                                /* 0B90 */  0x24, 0x1A, 0xB3, 0xBE, 0x0F, 0x4D, 0x8C, 0x34,  // $....M.4
                                /* 0B98 */  0x7B, 0xD0, 0x14, 0xC9, 0xF5, 0x62, 0x59, 0xC6,  // {....bY.
                                /* 0BA0 */  0xC6, 0x90, 0xD7, 0xC4, 0x89, 0x10, 0x4B, 0x81,  // ......K.
                                /* 0BA8 */  0x42, 0xCA, 0x5F, 0x49, 0x17, 0xC8, 0xA8, 0x50,  // B._I...P
                                /* 0BB0 */  0x9A, 0x6A, 0xD6, 0x9A, 0xD1, 0xB6, 0xBB, 0xD9,  // .j......
                                /* 0BB8 */  0x50, 0xC9, 0x6B, 0xB9, 0x90, 0xA6, 0x91, 0xD5,  // P.k.....
                                /* 0BC0 */  0xE9, 0xA9, 0xB1, 0x8C, 0x7D, 0xF2, 0x85, 0x29,  // ....}..)
                                /* 0BC8 */  0x88, 0x21, 0x5B, 0x6A, 0xF7, 0x65, 0x77, 0xAA,  // .![j.ew.
                                /* 0BD0 */  0xB8, 0x65, 0xD2, 0xBC, 0x66, 0x67, 0xF3, 0xDB,  // .e..fg..
                                /* 0BD8 */  0xA3, 0x1F, 0xD9, 0xEC, 0xA7, 0xE5, 0x0F, 0x40,  // .......@
                                /* 0BE0 */  0xE1, 0x8C, 0x45, 0xF9, 0x0A, 0x4C, 0x98, 0x6D,  // ..E..L.m
                                /* 0BE8 */  0x3B, 0x9D, 0x74, 0x72, 0x2B, 0x24, 0x19, 0x82,  // ;.tr+$..
                                /* 0BF0 */  0x00, 0x2F, 0x57, 0xED, 0x55, 0xBC, 0xA2, 0x76,  // ./W.U..v
                                /* 0BF8 */  0xBD, 0x3A, 0xDB, 0x8E, 0x10, 0x58, 0xC9, 0xB6,  // .:...X..
                                /* 0C00 */  0x49, 0x85, 0x1C, 0xEA, 0x5E, 0xB7, 0x7F, 0x16,  // I...^...
                                /* 0C08 */  0x6C, 0x0D, 0x00, 0x09, 0xB9, 0x5B, 0xBC, 0x12,  // l....[..
                                /* 0C10 */  0x96, 0x33, 0x31, 0xCE, 0x39, 0x2F, 0x54, 0x0F,  // .31.9/T.
                                /* 0C18 */  0x0B, 0xDF, 0xB2, 0xF6, 0xB0, 0x7F, 0xFF, 0xB9,  // ........
                                /* 0C20 */  0x94, 0xDA, 0x36, 0x59, 0x31, 0x05, 0xB8, 0xB2,  // ..6Y1...
                                /* 0C28 */  0xD1, 0x4B, 0xAB, 0x25, 0xC7, 0xEA, 0x3B, 0x84,  // .K.%..;.
                                /* 0C30 */  0x17, 0x07, 0xEE, 0x2D, 0xA8, 0xCA, 0x55, 0xEE,  // ...-..U.
                                /* 0C38 */  0x59, 0xFA, 0x00                                 // Y..
                            }
                        })
                    }

                    If ((\_SB.CPUW == DerefOf (CUWC [0x02])))
                    {
                        Return (Package (0x01)
                        {
                            Buffer (Zero){}
                        })
                    }

                    Return (\_SB.PLDT.GDDV ())
                }

                Method (IMOK, 1, NotSerialized)
                {
                    Return (Arg0)
                }

                Method (DTNS, 1, NotSerialized)
                {
                    Local0 = Arg0
                }
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC0)
    {
        Method (_QE1, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x72)
            If ((Local0 & One))
            {
                If ((S1DE == One))
                {
                    Notify (\_SB.IETM.SEN1, 0x90) // Device-Specific
                }
            }

            If ((Local0 & 0x02))
            {
                If ((S1DE == One))
                {
                    Notify (\_SB.IETM.SEN1, 0x90) // Device-Specific
                }
            }

            \_SB.PC00.LPCB.EC0.WP2E (0x72, Zero)
        }

        Method (_QE3, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x78)
            If ((Local0 & One))
            {
                If ((S2DE == One))
                {
                    Notify (\_SB.IETM.SEN2, 0x90) // Device-Specific
                }
            }

            If ((Local0 & 0x02))
            {
                If ((S2DE == One))
                {
                    Notify (\_SB.IETM.SEN2, 0x90) // Device-Specific
                }
            }

            \_SB.PC00.LPCB.EC0.WP2E (0x78, Zero)
        }

        Method (_QE5, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x7E)
            If ((Local0 & One))
            {
                If ((S3DE == One))
                {
                    Notify (\_SB.IETM.SEN3, 0x90) // Device-Specific
                }
            }

            If ((Local0 & 0x02))
            {
                If ((S3DE == One))
                {
                    Notify (\_SB.IETM.SEN3, 0x90) // Device-Specific
                }
            }

            \_SB.PC00.LPCB.EC0.WP2E (0x7E, Zero)
        }

        Method (_QE7, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x84)
            If ((Local0 & One))
            {
                If ((S4DE == One))
                {
                    Notify (\_SB.IETM.SEN4, 0x90) // Device-Specific
                }
            }

            If ((Local0 & 0x02))
            {
                If ((S4DE == One))
                {
                    Notify (\_SB.IETM.SEN4, 0x90) // Device-Specific
                }
            }

            \_SB.PC00.LPCB.EC0.WP2E (0x84, Zero)
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN1)
        {
            Name (_UID, "SEN1")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN1 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, Zero)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN1.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S1DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x75, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x74, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x80))
                    {
                        Local0 |= 0x80
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0x3F
                        Local2 |= 0x80
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN2)
        {
            Name (_UID, "SEN2")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN2 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, One)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN2.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S2DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x7B, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x7A, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x20))
                    {
                        Local0 |= 0x20
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xCF
                        Local2 |= Zero
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN3)
        {
            Name (_UID, "SEN3")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN3 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x02)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN3.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S3DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x81, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x80, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x08))
                    {
                        Local0 |= 0x08
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xF3
                        Local2 |= 0x08
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN4)
        {
            Name (_UID, "SEN4")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN4 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x03)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN4.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S4DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x87, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x86, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x02))
                    {
                        Local0 |= 0x02
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xFC
                        Local2 |= Zero
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN5)
        {
            Name (_UID, "SEN5")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN5 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x04)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN5.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.S5DE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x87, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x86, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x02))
                    {
                        Local0 |= 0x02
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xFC
                        Local2 |= Zero
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN6)
        {
            Name (_UID, "SEN6")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN6 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x05)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN6.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((0xFF >> SNID) & One) == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x87, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x86, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x02))
                    {
                        Local0 |= 0x02
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xFC
                        Local2 |= Zero
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN7)
        {
            Name (_UID, "SEN7")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN7 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x06)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN7.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((0xFF >> SNID) & One) == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x87, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x86, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x02))
                    {
                        Local0 |= 0x02
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xFC
                        Local2 |= Zero
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Device (SEN8)
        {
            Name (_UID, "SEN8")  // _UID: Unique ID
            Name (_STR, Unicode ("SEN8 Participant"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Name (GTSH, 0x14)
            Name (SNID, 0x07)
            Name (SNAC, 0x3C)
            Name (SNA1, 0x32)
            Name (SNA2, 0x28)
            Name (SNPV, 0x41)
            Name (SNCC, 0x50)
            Name (SNC3, 0x46)
            Name (SNHP, 0x4B)
            Name (SNSP, Zero)
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (PTYP, 0x03)
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.PLDT.GHID (_UID))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    Name (SENP, Buffer (0x08)
                    {
                         0x73, 0x79, 0x7F, 0x85, 0x85, 0x85, 0x85, 0x85   // sy......
                    })
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (DerefOf (SENP [SNID]))
                    Return (\_SB.IETM.CTOK (Local0))
                }

                Return (0x0BB8)
            }

            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LSTM = Arg0
                Notify (^, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SNSP) /* \_SB_.IETM.SEN8.SNSP */
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Local1 = \_SB.IETM.CTOK (SNAC)
                If ((LSTM >= Local1))
                {
                    Return ((Local1 - GTSH))
                }
                Else
                {
                    Return (Local1)
                }
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA1))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (\_SB.IETM.CTOK (SNA2))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (SNPV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (SNCC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (SNC3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (SNHP))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((((0xFF >> SNID) & One) == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    FAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x87, FAUX)
                    Return (Zero)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PC00.LPCB.EC0.ECAV ())
                {
                    SAUX = \_SB.IETM.KTOC (Arg0)
                    \_SB.PC00.LPCB.EC0.WP2E (0x86, SAUX)
                    Local0 = \_SB.PC00.LPCB.EC0.RP2E (0x70)
                    If (!(Local0 & 0x02))
                    {
                        Local0 |= 0x02
                        \_SB.PC00.LPCB.EC0.WP2E (0x70, Local0)
                        Local2 = \_SB.PC00.LPCB.EC0.RP2E (0x71)
                        Local2 &= 0xFC
                        Local2 |= Zero
                        \_SB.PC00.LPCB.EC0.WP2E (0x71, Local2)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (PFLG, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((\_SB.DTTE == One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (CPWR, SystemMemory, ((\_SB.PC00.MC.MHBR << 0x12) + 0x5000), 0x1000)
        Field (CPWR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            Offset (0x978), 
            PCTP,   8, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            Offset (0xF54), 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            If (((XPCC == Zero) && CondRefOf (\_SB.CBMI)))
            {
                CPLX ()
                XPCC = One
            }

            Return (NPCC) /* \_SB_.PC00.TCPU.NPCC */
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x6D60, 
                0x7D00, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If ((PWRU == Zero))
            {
                PPUU = One
            }
            Else
            {
                PPUU = (PWRU-- << 0x02)
            }

            Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            If ((Arg1 == Zero))
            {
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
            Else
            {
                CNVT *= 0x03E8
                RMDR *= 0x03E8
                RMDR /= PPUU
                CNVT += RMDR /* \_SB_.PC00.TCPU.CPNU.RMDR */
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
        }

        Method (CPLX, 0, NotSerialized)
        {
            \_SB.PC00.TCPU.NPCC [Zero] = 0x02
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [One] = 0x7D
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x02] = CPNU (\_SB.PL1X, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x03] = (\_SB.PLWX * 0x03E8)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x04] = ((\_SB.PLWX * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PC00.TCPU.NPCC [One]) [0x05] = PPSZ /* \_SB_.PPSZ */
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [One] = CPNU (\_SB.PL2X, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x02] = CPNU (\_SB.PL2X, One)
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PC00.TCPU.NPCC [0x02]) [0x05] = PPSZ /* \_SB_.PPSZ */
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPUR, 1, NotSerialized)
        {
            If ((Arg0 <= \TCNT))
            {
                If ((\_SB.PAGD._STA () == 0x0F))
                {
                    \_SB.PAGD._PUR [One] = Arg0
                    Notify (\_SB.PAGD, 0x80) // Status Change
                }
            }
        }

        Method (PCCC, 0, Serialized)
        {
            PCCX [Zero] = One
            Switch (ToInteger (CPNU (PTDP, Zero)))
            {
                Case (0x39)
                {
                    DerefOf (PCCX [One]) [Zero] = 0xA7F8
                    DerefOf (PCCX [One]) [One] = 0x00017318
                }
                Case (0x2F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x9858
                    DerefOf (PCCX [One]) [One] = 0x00014C08
                }
                Case (0x25)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x7148
                    DerefOf (PCCX [One]) [One] = 0xD6D8
                }
                Case (0x19)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x3E80
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0B)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x61A8
                }
                Default
                {
                    DerefOf (PCCX [One]) [Zero] = 0xFF
                    DerefOf (PCCX [One]) [One] = 0xFF
                }

            }

            Return (PCCX) /* \_SB_.PC00.TCPU.PCCX */
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (_TMP, 0, Serialized)  // _TMP: Temperature
        {
            Return (\_SB.IETM.CTOK (PCTP))
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            LSTM = Arg0
            Notify (\_SB.PC00.TCPU, 0x91) // Device-Specific
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Name (PTYP, Zero)
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                Return (\_SB.PR00._PSS ())
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_SB.PR00._TSS))
            {
                Return (\_SB.PR00._TSS ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_SB.PR00._TPC))
            {
                Return (\_SB.PR00._TPC) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            Return (Package (0x02)
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
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_SB.PR00._TSD))
            {
                Return (\_SB.PR00._TSD ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        Zero
                    }
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If ((CondRefOf (\_SB.PR00._TSS) && CondRefOf (\_SB.CFGD)))
            {
                If ((\_SB.CFGD & 0x2000))
                {
                    Return ((SizeOf (\_SB.PR00.TSMF) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.TSMC) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                If ((\_SB.OSCP & 0x0400))
                {
                    Return ((SizeOf (\_SB.PR00.TPSS) - One))
                }
                Else
                {
                    Return ((SizeOf (\_SB.PR00.LPSS) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (TJMX, 0x6E)
        Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
        {
            Return (Zero)
        }

        Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x0A
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x1E
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x28
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x37
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Local1 = \_SB.IETM.CTOK (TJMX)
            Local1 -= 0x46
            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (UVTH, 1, Serialized)
        {
            If (CondRefOf (\_SB.DPTF.UVTH))
            {
                \_SB.DPTF.UVTH (Arg0)
                Return (Zero)
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067") /* Unknown UUID */
        })
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT) /* \_SB_.PC00.TCPU.MAXT */
        }
    }

    Scope (\_SB.IETM)
    {
        Method (KTOC, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return (((Arg0 - 0x0AAC) / 0x0A))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (CTOK, 1, Serialized)
        {
            Return (((Arg0 * 0x0A) + 0x0AAC))
        }

        Method (C10K, 1, Serialized)
        {
            Name (TMP1, Buffer (0x10)
            {
                 0x00                                             // .
            })
            CreateByteField (TMP1, Zero, TMPL)
            CreateByteField (TMP1, One, TMPH)
            Local0 = (Arg0 + 0x0AAC)
            TMPL = (Local0 & 0xFF)
            TMPH = ((Local0 & 0xFF00) >> 0x08)
            ToInteger (TMP1, Local1)
            Return (Local1)
        }

        Method (K10C, 1, Serialized)
        {
            If ((Arg0 > 0x0AAC))
            {
                Return ((Arg0 - 0x0AAC))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (DP2P, Package (0x01)
        {
            ToUUID ("9e04115a-ae87-4d1c-9500-0f3e340bfe75") /* Unknown UUID */
        })
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3") /* Unknown UUID */
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae") /* Unknown UUID */
        })
        Name (DA2P, Package (0x01)
        {
            ToUUID ("0e56fab6-bdfc-4e8c-8246-40ecfd4d74ea") /* Unknown UUID */
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a") /* Unknown UUID */
        })
        Name (RFIP, Package (0x01)
        {
            ToUUID ("c4ce1849-243a-49f3-b8d5-f97002f38e6a") /* Unknown UUID */
        })
        Name (POBP, Package (0x01)
        {
            ToUUID ("f5a35014-c209-46a4-993a-eb56de7530a1") /* Unknown UUID */
        })
        Name (DAPP, Package (0x01)
        {
            ToUUID ("63be270f-1c11-48fd-a6f7-3af253ff3e2d") /* Unknown UUID */
        })
        Name (DVSP, Package (0x01)
        {
            ToUUID ("6ed722a7-9240-48a5-b479-31eef723d7cf") /* Unknown UUID */
        })
        Name (DPID, Package (0x01)
        {
            ToUUID ("42496e14-bc1b-46e8-a798-ca915464426f") /* Unknown UUID */
        })
    }

    Debug = "[Dptf DptfTabl SSDT][AcpiTableExit]"
    Debug = Timer
}

