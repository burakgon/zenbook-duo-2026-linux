/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt25.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000134AD (79021)
 *     Revision         0x02
 *     Checksum         0x8B
 *     OEM ID           "INTEL"
 *     OEM Table ID     "iDNdSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "iDNdSsdt", 0x00001000)
{
    External (_SB_.PC00.HDAS.IDA_.SNDW, DeviceObj)

    Scope (\_SB.PC00.HDAS.IDA.SNDW)
    {
        Device (IDP0)
        {
            Name (_ADR, 0x000000D010010500)  // _ADR: Address
            Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x08)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-sw-interface-revision", 
                        0x00020000
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-sdca-interface-revision", 
                        0x0636
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-paging-supported", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-sdca-interrupt-register-list", 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-1-mapping", 
                        "mipi-sdw-manager-lane-1"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-2-mapping", 
                        "mipi-sdw-manager-lane-2"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-3-mapping", 
                        "mipi-sdw-manager-lane-3"
                    }, 

                    Package (0x02)
                    {
                        "dummy", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "dummy", 
                        Zero
                    }
                }
            })
            Device (IDPN)
            {
                Name (_ADR, 0x000000D011010500)  // _ADR: Address
                Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-topology-features", 
                            0x0080000000000000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-initialization-table", 
                            Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           // ....
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-system-posture-config", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-busy-max-delay", 
                            0x03E8
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x10)
                            {
                                One, 
                                0x04, 
                                0x05, 
                                0x06, 
                                0x07, 
                                0x08, 
                                0x09, 
                                0x0A, 
                                0x10, 
                                0x11, 
                                0x12, 
                                0x2C, 
                                0x2D, 
                                0x2E, 
                                0x2F, 
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-list", 
                            Package (0x1F)
                            {
                                One, 
                                0x02, 
                                0x03, 
                                0x04, 
                                0x05, 
                                0x06, 
                                0x07, 
                                0x11, 
                                0x12, 
                                0x13, 
                                0x14, 
                                0x15, 
                                0x16, 
                                0x17, 
                                0x21, 
                                0x22, 
                                0x23, 
                                0x24, 
                                0x25, 
                                0x26, 
                                0x27, 
                                0x31, 
                                0x32, 
                                0x33, 
                                0x34, 
                                0x35, 
                                0x36, 
                                0x37, 
                                0x72, 
                                0x73, 
                                0x71
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-list", 
                            Package (0x08)
                            {
                                Zero, 
                                One, 
                                0x02, 
                                0x03, 
                                0x04, 
                                0x05, 
                                0x06, 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-system-posture-list", 
                            Package (0x02)
                            {
                                0x07, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x3B)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subproperties", 
                            "FE00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x5-subproperties", 
                            "CO02"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x6-subproperties", 
                            "CO03"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x7-subproperties", 
                            "CO04"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO05"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x9-subproperties", 
                            "CO06"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0xa-subproperties", 
                            "CO07"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO08"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x11-subproperties", 
                            "CO09"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO0A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2c-subproperties", 
                            "CO0B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2d-subproperties", 
                            "CO0C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2e-subproperties", 
                            "CO0D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2f-subproperties", 
                            "CO0E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO0F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1-subproperties", 
                            "EN01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x2-subproperties", 
                            "EN02"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x3-subproperties", 
                            "EN03"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x4-subproperties", 
                            "EN04"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x5-subproperties", 
                            "EN05"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x6-subproperties", 
                            "EN06"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x7-subproperties", 
                            "EN07"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x11-subproperties", 
                            "EN11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x12-subproperties", 
                            "EN12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x13-subproperties", 
                            "EN13"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x14-subproperties", 
                            "EN14"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x15-subproperties", 
                            "EN15"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x16-subproperties", 
                            "EN16"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x17-subproperties", 
                            "EN17"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x21-subproperties", 
                            "EN21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x22-subproperties", 
                            "EN22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x23-subproperties", 
                            "EN23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x24-subproperties", 
                            "EN24"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x25-subproperties", 
                            "EN25"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x26-subproperties", 
                            "EN26"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x27-subproperties", 
                            "EN27"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x31-subproperties", 
                            "EN31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x32-subproperties", 
                            "EN32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x33-subproperties", 
                            "EN33"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x34-subproperties", 
                            "EN34"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x35-subproperties", 
                            "EN35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x36-subproperties", 
                            "EN36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x37-subproperties", 
                            "EN37"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x72-subproperties", 
                            "EN72"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x73-subproperties", 
                            "EN73"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x71-subproperties", 
                            "EN71"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x0-subproperties", 
                            "CL00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x1-subproperties", 
                            "CL01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x2-subproperties", 
                            "CL02"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x3-subproperties", 
                            "CL03"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x4-subproperties", 
                            "CL04"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x5-subproperties", 
                            "CL05"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x6-subproperties", 
                            "CL06"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x7-subproperties", 
                            "CL07"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-system-posture-0x7-subproperties", 
                            "PO07"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-system-posture-0x9-subproperties", 
                            "PO09"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL00, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL01, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC02"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC01, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC02, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL02, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC03"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC04"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CC05"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC03, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC04, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC05, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL03, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC06"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC07"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CC08"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CC09"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC06, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC07, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC08, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC09, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL04, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC0A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC0B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CC0C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CC0D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-5-subproperties", 
                            "CC0E"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC0A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC0B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC0C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC0D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC0E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL05, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC0F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC10"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CC11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CC12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-5-subproperties", 
                            "CC13"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-6-subproperties", 
                            "CC14"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC0F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC10, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC11, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC13, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC14, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL06, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC15"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC16"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CC17"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CC18"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-5-subproperties", 
                            "CC19"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-6-subproperties", 
                            "CC1A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-7-subproperties", 
                            "CC1B"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC15, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC16, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC17, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC18, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC19, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC1A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC1B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CL07, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CC1C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CC1D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CC1E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CC1F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-5-subproperties", 
                            "CC20"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-6-subproperties", 
                            "CC21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-7-subproperties", 
                            "CC22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-8-subproperties", 
                            "CC23"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC1C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC1D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC1E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC1F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC20, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC21, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC22, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CC23, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (PO07, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-posture-cluster-index-control", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-posture-volume-control", 
                            "(1,logical left), (2,logical right), (3,logical surr left), (4,logical surr right)"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-posture-mute-control", 
                            "(3,mute all), (4,attenuate)"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (PO09, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-posture-cluster-index-control", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-posture-volume-control", 
                            "(1,logical left), (2,logical right)"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-posture-mute-control", 
                            "(8,mute all), (7,attenuate)"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN01, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-clock-valid-max-delay", 
                            "0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                0x02, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO10"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO11"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN02, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x01                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x06)
                            {
                                0x04, 
                                0x08, 
                                0x10, 
                                0x11, 
                                0x12, 
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO13"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO14"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x11-subproperties", 
                            "CO15"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO16"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO17"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN03, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN02"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x07)
                            {
                                One, 
                                0x06, 
                                0x07, 
                                0x08, 
                                0x30, 
                                0x31, 
                                0x32
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO18"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x6-subproperties", 
                            "CO19"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x7-subproperties", 
                            "CO1A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO1B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "CO1C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "CO1D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "CO1E"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN04, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN03"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO1F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO20"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN05, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN04"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x17)
                            {
                                0x04, 
                                0x08, 
                                0x12, 
                                0x13, 
                                0x14, 
                                0x15, 
                                0x16, 
                                0x17, 
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
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x18)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x13-subproperties", 
                            "CO24"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x14-subproperties", 
                            "CO25"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x15-subproperties", 
                            "CO26"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x16-subproperties", 
                            "CO27"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x17-subproperties", 
                            "CO28"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "CO29"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "CO2A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "CO2B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x33-subproperties", 
                            "CO2C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x34-subproperties", 
                            "CO2D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x35-subproperties", 
                            "CO2E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x36-subproperties", 
                            "CO2F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x37-subproperties", 
                            "CO30"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x38-subproperties", 
                            "CO31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x39-subproperties", 
                            "CO32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3a-subproperties", 
                            "CO33"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3b-subproperties", 
                            "CO34"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3c-subproperties", 
                            "CO35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3d-subproperties", 
                            "CO36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO37"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN06, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-state-list", 
                            0x19
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01C2, 
                                0x03, 
                                One, 
                                0xFA
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01F4, 
                                0x03, 
                                One, 
                                0x012C
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            "EN05"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO38"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO39"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN07, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x12
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-geselectedmode-controls-affected", 
                            "EN05"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-ge-default-selectedmode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO3A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO3B"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN11, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-clock-valid-max-delay", 
                            "0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                0x02, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO3C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO3D"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x03                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x06)
                            {
                                0x04, 
                                0x08, 
                                0x10, 
                                0x11, 
                                0x12, 
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO3E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO3F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO40"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x11-subproperties", 
                            "CO41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO42"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO43"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN13, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x07)
                            {
                                One, 
                                0x06, 
                                0x07, 
                                0x08, 
                                0x30, 
                                0x31, 
                                0x32
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO44"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x6-subproperties", 
                            "CO45"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x7-subproperties", 
                            "CO46"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO47"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "CO48"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "CO49"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "CO4A"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN14, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN13"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO4B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO4C"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN15, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN14"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x17)
                            {
                                0x04, 
                                0x08, 
                                0x12, 
                                0x13, 
                                0x14, 
                                0x15, 
                                0x16, 
                                0x17, 
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
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x18)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO4D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO4E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO4F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x13-subproperties", 
                            "CO50"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x14-subproperties", 
                            "CO51"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x15-subproperties", 
                            "CO52"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x16-subproperties", 
                            "CO53"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x17-subproperties", 
                            "CO54"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "CO55"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "CO56"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "CO57"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x33-subproperties", 
                            "CO58"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x34-subproperties", 
                            "CO59"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x35-subproperties", 
                            "CO5A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x36-subproperties", 
                            "CO5B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x37-subproperties", 
                            "CO5C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x38-subproperties", 
                            "CO5D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x39-subproperties", 
                            "CO5E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3a-subproperties", 
                            "CO5F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3b-subproperties", 
                            "CO60"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3c-subproperties", 
                            "CO61"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3d-subproperties", 
                            "CO62"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO63"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN16, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-state-list", 
                            0x19
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01C2, 
                                0x03, 
                                One, 
                                0xFA
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01F4, 
                                0x03, 
                                One, 
                                0x012C
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            "EN15"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO64"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO65"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN17, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x12
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-geselectedmode-controls-affected", 
                            "EN15"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-ge-default-selectedmode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO66"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO67"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN21, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-clock-valid-max-delay", 
                            "0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                0x02, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO68"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO69"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN22, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x05                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x06)
                            {
                                0x04, 
                                0x08, 
                                0x10, 
                                0x11, 
                                0x12, 
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO6A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO6B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO6C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x11-subproperties", 
                            "CO6D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO6E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO6F"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN23, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x07)
                            {
                                One, 
                                0x06, 
                                0x07, 
                                0x08, 
                                0x30, 
                                0x31, 
                                0x32
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO70"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x6-subproperties", 
                            "CO71"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x7-subproperties", 
                            "CO72"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO73"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "CO74"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "CO75"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "CO76"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN24, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO77"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO78"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN25, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN24"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x17)
                            {
                                0x04, 
                                0x08, 
                                0x12, 
                                0x13, 
                                0x14, 
                                0x15, 
                                0x16, 
                                0x17, 
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
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x18)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO79"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO7A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO7B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x13-subproperties", 
                            "CO7C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x14-subproperties", 
                            "CO7D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x15-subproperties", 
                            "CO7E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x16-subproperties", 
                            "CO7F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x17-subproperties", 
                            "CO80"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "CO81"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "CO82"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "CO83"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x33-subproperties", 
                            "CO84"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x34-subproperties", 
                            "CO85"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x35-subproperties", 
                            "CO86"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x36-subproperties", 
                            "CO87"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x37-subproperties", 
                            "CO88"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x38-subproperties", 
                            "CO89"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x39-subproperties", 
                            "CO8A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3a-subproperties", 
                            "CO8B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3b-subproperties", 
                            "CO8C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3c-subproperties", 
                            "CO8D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3d-subproperties", 
                            "CO8E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO8F"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN26, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-state-list", 
                            0x19
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01C2, 
                                0x03, 
                                One, 
                                0xFA
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01F4, 
                                0x03, 
                                One, 
                                0x012C
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            "EN25"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO90"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO91"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN27, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x12
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-geselectedmode-controls-affected", 
                            "EN25"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-ge-default-selectedmode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO92"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO93"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN31, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-clock-valid-max-delay", 
                            "0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                0x02, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "CO94"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO95"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN32, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x07                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x06)
                            {
                                0x04, 
                                0x08, 
                                0x10, 
                                0x11, 
                                0x12, 
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "CO96"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO97"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "CO98"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x11-subproperties", 
                            "CO99"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "CO9A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "CO9B"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN33, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x07)
                            {
                                One, 
                                0x06, 
                                0x07, 
                                0x08, 
                                0x30, 
                                0x31, 
                                0x32
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "CO9C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x6-subproperties", 
                            "CO9D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x7-subproperties", 
                            "CO9E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "CO9F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "COA0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "COA1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "COA2"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN34, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN33"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "COA3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "COA4"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN35, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN34"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x17)
                            {
                                0x04, 
                                0x08, 
                                0x12, 
                                0x13, 
                                0x14, 
                                0x15, 
                                0x16, 
                                0x17, 
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
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x18)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "COA5"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "COA6"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "COA7"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x13-subproperties", 
                            "COA8"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x14-subproperties", 
                            "COA9"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x15-subproperties", 
                            "COAA"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x16-subproperties", 
                            "COAB"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x17-subproperties", 
                            "COAC"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "COAD"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x31-subproperties", 
                            "COAE"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x32-subproperties", 
                            "COAF"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x33-subproperties", 
                            "COB0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x34-subproperties", 
                            "COB1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x35-subproperties", 
                            "COB2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x36-subproperties", 
                            "COB3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x37-subproperties", 
                            "COB4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x38-subproperties", 
                            "COB5"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x39-subproperties", 
                            "COB6"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3a-subproperties", 
                            "COB7"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3b-subproperties", 
                            "COB8"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3c-subproperties", 
                            "COB9"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3d-subproperties", 
                            "COBA"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "COBB"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN36, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-state-list", 
                            0x19
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01C2, 
                                0x03, 
                                One, 
                                0xFA
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x06)
                            {
                                0x03, 
                                Zero, 
                                0x01F4, 
                                0x03, 
                                One, 
                                0x012C
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            "EN35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "COBC"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "COBD"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN37, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x12
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-geselectedmode-controls-affected", 
                            "EN35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-ge-default-selectedmode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                One, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "COBE"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "COBF"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN72, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x21
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "100"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x0F
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN04"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "EN14"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-2", 
                            "EN24"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-3", 
                            "EN34"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x04)
                            {
                                One, 
                                0x08, 
                                0x10, 
                                0x30
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x1-subproperties", 
                            "COC0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "COC1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "COC2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x30-subproperties", 
                            "COC3"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN73, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x09)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "100"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0188
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-dp-numbers", 
                            Buffer (0x02)
                            {
                                 0x00, 0x0D                                       // ..
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-0", 
                            "EN72"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-clock-origin", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x05)
                            {
                                0x04, 
                                0x08, 
                                0x11, 
                                0x12, 
                                0x3F
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x4-subproperties", 
                            "COC4"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x8-subproperties", 
                            "COC5"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x11-subproperties", 
                            "COC6"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x12-subproperties", 
                            "COC7"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x3f-subproperties", 
                            "COC8"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (EN71, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "100"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            "2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-clock-valid-max-delay", 
                            "0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-list", 
                            Package (0x02)
                            {
                                0x02, 
                                0x10
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x2-subproperties", 
                            "COC9"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-0x10-subproperties", 
                            "COCA"
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO00, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO01, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO02, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x09
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO03, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x0105
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO04, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO05, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO06, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO07, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO08, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-interruptposition", 
                            0x0D
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO09, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO0A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO0B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x0105
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO0C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0xD010
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO0D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO0E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO0F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO10, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO11, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO13, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO14, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO15, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO16, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO17, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO18, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO19, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO1A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO1B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO1C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO1D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO1E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO1F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x0C)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-list", 
                            Package (0x04)
                            {
                                One, 
                                0x02, 
                                0x03, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO20, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO21, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO22, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO23, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO24, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO25, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO26, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO27, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO28, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO29, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO2A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO2B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO2C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO2D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO2E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO2F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO30, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO31, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO32, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO33, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO34, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO35, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO36, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO37, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO38, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO39, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO3A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-interruptposition", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO3B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO3C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO3D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO3E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO3F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO40, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO41, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x18
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO42, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO43, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO44, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO45, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO46, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO47, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO48, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO49, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO4A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO4B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x0C)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-list", 
                            Package (0x04)
                            {
                                One, 
                                0x02, 
                                0x03, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO4C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO4D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO4E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO4F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO50, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO51, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO52, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO53, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO54, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO55, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO56, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO57, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO58, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO59, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO5A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO5B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO5C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO5D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO5E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO5F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO60, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO61, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO62, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO63, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO64, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO65, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO66, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-interruptposition", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO67, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO68, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO69, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO6A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO6B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO6C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO6D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x60
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO6E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO6F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO70, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO71, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO72, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO73, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO74, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO75, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO76, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO77, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x0C)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-list", 
                            Package (0x04)
                            {
                                One, 
                                0x02, 
                                0x03, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO78, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO79, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO7A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO7B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO7C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO7D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO7E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO7F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO80, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO81, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO82, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO83, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO84, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO85, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO86, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO87, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO88, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO89, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO8A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO8B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO8C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO8D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO8E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO8F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO90, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO91, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO92, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-interruptposition", 
                            0x12
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO93, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO94, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO95, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO96, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO97, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO98, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO99, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x0180
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO9A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO9B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO9C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO9D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO9E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (CO9F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA0, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA2, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA3, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x0C)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-list", 
                            Package (0x04)
                            {
                                One, 
                                0x02, 
                                0x03, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-1-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-2-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-3-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-4-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA4, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA5, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA6, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA7, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA8, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COA9, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COAA, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COAB, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COAC, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COAD, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COAE, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COAF, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB0, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB2, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB3, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB4, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB5, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB6, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB7, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB8, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COB9, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COBA, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COBB, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COBC, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COBD, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COBE, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-interruptposition", 
                            0x13
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COBF, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC0, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC2, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC3, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC4, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC5, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0x64
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC6, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            0xDE
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC7, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC8, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COC9, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-dc-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
                Name (COCA, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-selector-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-range", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-number-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "dummy", 
                            Zero
                        }
                    }
                })
            }
        }
    }
}

