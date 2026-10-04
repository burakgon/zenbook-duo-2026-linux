/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt15.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000F47 (3911)
 *     Revision         0x02
 *     Checksum         0x04
 *     OEM ID           "INTEL "
 *     OEM Table ID     "IgfxSsdt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "IgfxSsdt", 0x00003000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.GPC0, MethodObj)    // 1 Arguments
    External (_SB_.GPMV, MethodObj)    // 1 Arguments
    External (_SB_.GRXE, MethodObj)    // 2 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.GFX0.DSEN, UnknownObj)
    External (_SB_.PC00.GFX0.EDMX, UnknownObj)
    External (_SB_.PC00.GFX0.HDOS, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GFX0.HNOT, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.H_EC, UnknownObj)
    External (_SB_.PC00.LPCB.H_EC.LID0, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.UPLD, MethodObj)    // 1 Arguments
    External (_SB_.PC00.MC__, DeviceObj)
    External (_SB_.PC00.PC2M, MethodObj)    // 2 Arguments
    External (_SB_.PEPD.EMIM, UnknownObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (_SB_.SPC0, MethodObj)    // 2 Arguments
    External (_SB_.SPMV, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (ASLB, UnknownObj)
    External (BRTL, UnknownObj)
    External (DID1, UnknownObj)
    External (DID2, UnknownObj)
    External (DID3, UnknownObj)
    External (DID4, UnknownObj)
    External (DID5, UnknownObj)
    External (DID6, UnknownObj)
    External (DID7, UnknownObj)
    External (DID8, UnknownObj)
    External (DID9, UnknownObj)
    External (DIDA, UnknownObj)
    External (DIDB, UnknownObj)
    External (DIDC, UnknownObj)
    External (DIDD, UnknownObj)
    External (DIDE, UnknownObj)
    External (DIDF, UnknownObj)
    External (DIDX, UnknownObj)
    External (DIDY, UnknownObj)
    External (EDPV, UnknownObj)
    External (HGDT, UnknownObj)
    External (IPTP, UnknownObj)
    External (LIDS, UnknownObj)
    External (NDID, UnknownObj)
    External (NXD1, UnknownObj)
    External (NXD2, UnknownObj)
    External (NXD3, UnknownObj)
    External (NXD4, UnknownObj)
    External (NXD5, UnknownObj)
    External (NXD6, UnknownObj)
    External (NXD7, UnknownObj)
    External (NXD8, UnknownObj)
    External (NXDX, UnknownObj)
    External (NXDY, UnknownObj)
    External (PBCL, MethodObj)    // 0 Arguments
    External (PLD1, MethodObj)    // 0 Arguments
    External (PLD2, MethodObj)    // 0 Arguments

    Scope (\_SB.PC00.GFX0)
    {
        Name (DPLD, Package (0x01)
        {
            Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x20, 0x03, 0xD0, 0x07,  // .... ...
                /* 0008 */  0x41, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x80, 0x01,  // A.......
                /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
            }
        })
        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            DSEN = (Arg0 & 0x07)
            If (((Arg0 & 0x03) == Zero))
            {
                If (CondRefOf (HDOS))
                {
                    HDOS ()
                }
            }
        }

        Method (AINT, 1, NotSerialized)
        {
            BCL1 = ((Arg0 * 0xFF) / 0x64)
            BCL1 |= 0x80000000
            Return (Zero)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            If (((DIDL != Zero) && (DDL2 != Zero)))
            {
                DID1 = 0x80010400
                DID2 = 0x80010401
                If ((IPTP == One))
                {
                    Return (Package (0x03)
                    {
                        0x80010400, 
                        0x80010401, 
                        0x80023480
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x80010400, 
                        0x80010401
                    })
                }
            }
            ElseIf (((DIDL != Zero) && (DDL2 == Zero)))
            {
                DID1 = 0x80010400
                If ((IPTP == One))
                {
                    Return (Package (0x02)
                    {
                        0x80010400, 
                        0x80023480
                    })
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        0x80010400
                    })
                }
            }

            If ((IPTP == One))
            {
                Return (Package (0x01)
                {
                    0x80023480
                })
            }

            Return (Package (0x01)
            {
                0x0400
            })
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (((0x0F00 & DID1) == 0x0400))
                {
                    EDPV = One
                    DIDX = DID1 /* External reference */
                    Return (One)
                }

                If ((DID1 == Zero))
                {
                    Return (One)
                }
                Else
                {
                    Return ((0xFFFF & DID1))
                }
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (((0x0F00 & DID2) == 0x0400))
                {
                    If (((0x0F & DID2) == One))
                    {
                        EDPV = 0x02
                        DIDY = DID2 /* External reference */
                        Return (0x02)
                    }

                    EDPV = 0x02
                    DIDX = DID2 /* External reference */
                    Return (0x02)
                }

                If ((DID2 == Zero))
                {
                    Return (0x02)
                }
                Else
                {
                    Return ((0xFFFF & DID2))
                }
            }
        }

        Device (DD1F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If ((EDPV == Zero))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return ((0xFFFF & DIDX))
                }
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                If (CondRefOf (\PBCL))
                {
                    Return (PBCL ())
                }
                Else
                {
                    Return (Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                {
                    AINT (Arg0)
                    BRTL = Arg0
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (BRTL) /* External reference */
            }

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                If (CondRefOf (\PLD1))
                {
                    Return (PLD1 ())
                }
                Else
                {
                    Return (DPLD) /* \_SB_.PC00.GFX0.DPLD */
                }
            }
        }

        Device (DD2F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If ((EDPV == Zero))
                {
                    Return (0x1F)
                }

                If ((EDPV == One))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return ((0xFFFF & DIDY))
                }
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                If (CondRefOf (\PBCL))
                {
                    Return (PBCL ())
                }
                Else
                {
                    Return (Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                {
                    AINT (Arg0)
                    BRTL = Arg0
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (BRTL) /* External reference */
            }

            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
            {
                If (CondRefOf (\PLD2))
                {
                    Return (PLD2 ())
                }
                Else
                {
                    Return (DPLD) /* \_SB_.PC00.GFX0.DPLD */
                }
            }
        }

        Method (PDRD, 0, NotSerialized)
        {
            Return (!DRDY)
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            CEVT = Arg0
            CSTS = 0x03
            If ((Arg1 == Zero))
            {
                Notify (\_SB.PC00.GFX0, Arg1)
            }

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }
            Else
            {
                Notify (\_SB.PC00.GFX0, 0x80) // Status Change
            }

            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            CDCK = Arg0
            Return (GNOT (0x04, Zero))
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            Offset (0x200), 
            BCL1,   32, 
            BCL2,   32, 
            CBL1,   32, 
            CBL2,   32, 
            BCM1,   960, 
            BCM2,   960, 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSS,   64, 
            FDSP,   32, 
            STAT,   32, 
            RVDA,   64, 
            RVDS,   32, 
            Offset (0x400), 
            RVBT,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3e5b41c6-eb1d-4260-9d15-c71fbadae414") /* Unknown UUID */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "IGPU Supported Functions Bitmap "
                            Local0 = One
                            If (CondRefOf (EDMX))
                            {
                                If ((EDMX != Zero))
                                {
                                    ADBG ("Display Mux Supported")
                                    Local0 |= 0x00200000
                                }
                            }

                            Local0 |= 0x00400000
                            ADBG (Concatenate ("IGPU DSM Function Support = ", ToHexString (Local0)))
                            Return (Local0)
                        }
                    }
                    Case (0x15)
                    {
                        Name (DGDB, Buffer (0x05)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                        })
                        CreateDWordField (DGDB, Zero, DGDF)
                        CreateByteField (DGDB, 0x04, DGSF)
                        Local0 = One
                        ADBG ("IGD eDP _DSM (21)")
                        If (((DerefOf (Arg3 [Zero]) & One) == Zero))
                        {
                            ADBG ("Get Current Disp Mux Status")
                            If (CondRefOf (EDMX))
                            {
                                \_SB.GGOV (EDMX)
                            }

                            Local0 = Zero
                        }
                        Else
                        {
                            ADBG ("Set Disp Mux Status")
                            If (((DerefOf (Arg3 [Zero]) & 0x02) == Zero))
                            {
                                ADBG ("Set Disp Mux to iGfx")
                                If (CondRefOf (EDMX))
                                {
                                    \_SB.SGOV (EDMX, Zero)
                                }

                                Local0 = Zero
                            }
                            Else
                            {
                                ADBG ("Set Disp Mux to dGfx")
                                If (CondRefOf (EDMX))
                                {
                                    \_SB.SGOV (EDMX, One)
                                }

                                Local0 = Zero
                            }
                        }

                        If (CondRefOf (EDMX))
                        {
                            DGDF = (\_SB.GGOV (EDMX) << One)
                        }

                        DGSF = Local0
                        ADBG (Concatenate ("ExitResult :: ", ToHexString (DGSF)))
                        ADBG (Concatenate ("Current Mux :: ", ToHexString (DGDF)))
                        Return (DGDB) /* \_SB_.PC00.GFX0._DSM.DGDB */
                    }
                    Case (0x16)
                    {
                        Switch (ToInteger (Arg3))
                        {
                            Case (Zero)
                            {
                                If (CondRefOf (\_SB.PC00.LPCB.H_EC))
                                {
                                    \_SB.PC00.LPCB.H_EC.UPLD (Zero)
                                    LIDS = Zero
                                    \_SB.PC00.GFX0.CLID = Zero
                                    ADBG ("Notify LID0")
                                    Notify (\_SB.PC00.LPCB.H_EC.LID0, 0x80) // Status Change
                                    ADBG ("OS Notified")
                                    Return (Zero)
                                }
                                Else
                                {
                                    ADBG ("Lid close failed")
                                }
                            }
                            Case (One)
                            {
                                If (CondRefOf (\_SB.PC00.LPCB.H_EC))
                                {
                                    \_SB.PC00.LPCB.H_EC.UPLD (One)
                                    LIDS = One
                                    \_SB.PC00.GFX0.CLID = One
                                    ADBG ("Notify LID0")
                                    Notify (\_SB.PC00.LPCB.H_EC.LID0, 0x80) // Status Change
                                    ADBG ("OS Notified")
                                    Return (Zero)
                                }
                                Else
                                {
                                    ADBG ("Lid open failed")
                                }
                            }
                            Default
                            {
                                Return (One)
                            }

                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Name (PADC, Zero)
        Name (HPMO, Zero)
        Name (HPMA, Zero)
        Name (HPMB, Zero)
        Name (HPM1, Zero)
        Name (HPM2, Zero)
        Name (HPM3, Zero)
        Name (HPM4, Zero)
        Method (HPMS, 1, NotSerialized)
        {
            HPMO = ToInteger (Arg0)
            If ((HPMO == Zero))
            {
                PADC = \_SB.GPC0 (0x001A100B)
                PADC &= 0xFFF7FFFF
                \_SB.SPC0 (0x001A100B, PADC)
                If ((HPM3 != Zero))
                {
                    \_SB.SPMV (0x001A100B, HPM3)
                }
            }
            ElseIf ((\_SB.PEPD.EMIM == Zero))
            {
                If ((HPM3 == Zero))
                {
                    HPM3 = \_SB.GPMV (0x001A100B)
                }

                \_SB.SPMV (0x001A100B, Zero)
                \_SB.SHPO (0x001A100B, Zero)
                \_SB.GRXE (0x001A100B, One)
                PADC = \_SB.GPC0 (0x001A100B)
                PADC |= 0x00080000
                PADC &= 0xFFFFFDFF
                \_SB.SPC0 (0x001A100B, PADC)
            }
        }

        Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
        {
            Return (0x03)
        }

        Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
        {
            Return (0x03)
        }

        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            HPMS (Zero)
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            HPMS (One)
        }

        Method (GFPS, 0, Serialized)
        {
            OperationRegion (PXCS, SystemMemory, \_SB.PC00.PC2M (0x00020000, Zero), 0x0100)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0xD4), 
                D3HT,   2
            }

            Return (D3HT) /* \_SB_.PC00.GFX0.GFPS.D3HT */
        }
    }
}

