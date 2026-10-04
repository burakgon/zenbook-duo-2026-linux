/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt26.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00014239 (82489)
 *     Revision         0x02
 *     Checksum         0x7F
 *     OEM ID           "INTEL"
 *     OEM Table ID     "St04Ssdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "St04Ssdt", 0x00001000)
{
    External (_SB_.PC00.HDAS.IDA_.SNDW, DeviceObj)

    Scope (\_SB)
    {
        Device (AUDC)
        {
            Name (_HID, "ACPI0018")  // _HID: Hardware ID
            Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-interface-revision", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-count", 
                        0x0B
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-0-properties", 
                        "EP01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-1-properties", 
                        "EP02"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-2-properties", 
                        "EP03"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-3-properties", 
                        "EP04"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-4-properties", 
                        "EP05"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-5-properties", 
                        "EP06"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-6-properties", 
                        "EP07"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-7-properties", 
                        "EP08"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-8-properties", 
                        "EPR1"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-9-properties", 
                        "EPR2"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-10-properties", 
                        "EPR3"
                    }
                }
            })
            Name (EP01, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "MicrophoneArray"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC10"
                    }
                }
            })
            Name (EC10, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "MicrophoneArray_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC10"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC11"
                    }
                }
            })
            Name (CC10, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN01"
                    }
                }
            })
            Name (AC00, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-factory-circuit", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "msft-acx-core-circuit", 
                        Zero
                    }
                }
            })
            Name (VN01, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0A)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_MicrophoneArray"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x0201
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0201
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x06
                    }, 

                    Package (0x02)
                    {
                        "conn-info", 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "conn-agg-path-0", 
                                Package (0x04)
                                {
                                    Package (0x02)
                                    {
                                        "sdca-stream-type", 
                                        0x0181
                                    }, 

                                    Package (0x02)
                                    {
                                        "agg-channel-count", 
                                        0x02
                                    }, 

                                    Package (0x02)
                                    {
                                        "agg-component-count", 
                                        One
                                    }, 

                                    Package (0x02)
                                    {
                                        "agg-component-0", 
                                        Package (0x0B)
                                        {
                                            Package (0x02)
                                            {
                                                "function-manufacturer-id", 
                                                0x025D
                                            }, 

                                            Package (0x02)
                                            {
                                                "function-id", 
                                                0x0722
                                            }, 

                                            Package (0x02)
                                            {
                                                "controller-id", 
                                                Zero
                                            }, 

                                            Package (0x02)
                                            {
                                                "link-id", 
                                                Zero
                                            }, 

                                            Package (0x02)
                                            {
                                                "unique-id", 
                                                Zero
                                            }, 

                                            Package (0x02)
                                            {
                                                "function-number", 
                                                0x02
                                            }, 

                                            Package (0x02)
                                            {
                                                "function-type", 
                                                0x03
                                            }, 

                                            Package (0x02)
                                            {
                                                "terminal-entity-id", 
                                                0x20
                                            }, 

                                            Package (0x02)
                                            {
                                                "dp-map", 
                                                One
                                            }, 

                                            Package (0x02)
                                            {
                                                "dp-peripheral-mask", 
                                                0x03
                                            }, 

                                            Package (0x02)
                                            {
                                                "data-port-map-0", 
                                                Package (0x03)
                                                {
                                                    Package (0x02)
                                                    {
                                                        "data-port-num", 
                                                        0x06
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "data-port-mode", 
                                                        One
                                                    }, 

                                                    Package (0x02)
                                                    {
                                                        "data-port-channel-mask", 
                                                        0x03
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x06               // ].0...
                        }
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
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF02"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x26
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0201
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (AC02, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-factory-circuit", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "msft-acx-core-circuit", 
                        One
                    }
                }
            })
            Name (EP02, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "Headphones"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x03
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC20"
                    }
                }
            })
            Name (EC20, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "Headphones_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC20"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC21"
                    }
                }
            })
            Name (CC20, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN02"
                    }
                }
            })
            Name (VN02, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_Headphones"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x06C0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06C0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x01               // ].0...
                        }
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
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x06
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06C0
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EP03, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "LineOut"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x03
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC30"
                    }
                }
            })
            Name (EC30, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "LineOut_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC30"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC31"
                    }
                }
            })
            Name (CC30, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN03"
                    }
                }
            })
            Name (VN03, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_LineOut"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x0690
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0690
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x01               // ].0...
                        }
                    }
                }
            })
            Name (CC31, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x07
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0690
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EP04, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "HeadsetOutput"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x03
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC40"
                    }
                }
            })
            Name (EC40, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "HeadsetOutput_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC40"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC41"
                    }
                }
            })
            Name (CC40, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN04"
                    }
                }
            })
            Name (VN04, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_HeadsetOutput"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x06D0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06D0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x01               // ].0...
                        }
                    }
                }
            })
            Name (CC41, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x48
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06D0
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EP05, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "Microphone"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x04
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC50"
                    }
                }
            })
            Name (EC50, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "Microphone_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC50"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC51"
                    }
                }
            })
            Name (CC50, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN05"
                    }
                }
            })
            Name (VN05, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_Microphone"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x06A0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06A0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x02               // ].0...
                        }
                    }
                }
            })
            Name (CC51, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06A0
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EP06, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "LineIn"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x04
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC60"
                    }
                }
            })
            Name (EC60, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "LineIn_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC60"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC61"
                    }
                }
            })
            Name (CC60, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN06"
                    }
                }
            })
            Name (VN06, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_LineIn"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x0680
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0680
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x02               // ].0...
                        }
                    }
                }
            })
            Name (CC61, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x09
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0680
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EP07, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "HeadsetMic"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x04
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC70"
                    }
                }
            })
            Name (EC70, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "HeadsetMic_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC70"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC71"
                    }
                }
            })
            Name (CC70, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN07"
                    }
                }
            })
            Name (VN07, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_HeadsetMic"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x06D0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06D0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x02               // ].0...
                        }
                    }
                }
            })
            Name (CC71, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF01"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x43
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06D0
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EP08, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "Speaker"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        One
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "EC80"
                    }
                }
            })
            Name (EC80, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "Speaker_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CC80"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CC81"
                    }
                }
            })
            Name (CC80, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VN08"
                    }
                }
            })
            Name (VN08, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_Speaker"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x0380
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0380
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-amp-degraded-mode", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi_vendor_smart_amp", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x03               // ].0...
                        }
                    }
                }
            })
            Name (CC81, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF04"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x42
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0380
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EPR1, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "Microphone"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x05
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "ECR1"
                    }
                }
            })
            Name (ECR1, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "Microphone_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CR10"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CR11"
                    }
                }
            })
            Name (CR10, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VNR1"
                    }
                }
            })
            Name (VNR1, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_Microphone"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x06A0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06A0
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x04
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x04               // ].0...
                        }
                    }
                }
            })
            Name (CR11, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF05"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x66
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x06A0
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EPR2, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "LineIn"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x05
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "ECR2"
                    }
                }
            })
            Name (ECR2, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "LineIn_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CR20"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CR21"
                    }
                }
            })
            Name (CR20, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VNR2"
                    }
                }
            })
            Name (VNR2, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_LineIn"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x0680
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0680
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x04
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x04               // ].0...
                        }
                    }
                }
            })
            Name (CR21, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF05"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x67
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0680
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
            Name (EPR3, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-friendly-name", 
                        "LineOut"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-endpoint-id", 
                        0x06
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "acpi-acd-endpoint-config-0-properties", 
                        "ECR3"
                    }
                }
            })
            Name (ECR3, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x05)
                {
                    Package (0x02)
                    {
                        "acpi-acd-config-priority", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-config-friendly-name", 
                        "LineOut_With_DSP"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-ordering", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-count", 
                        0x02
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-collection-0-properties", 
                        "CR30"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-collection-1-properties", 
                        "CR31"
                    }
                }
            })
            Name (CR30, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.ISSW"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC00"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-vendor-collection-properties", 
                        "VNR3"
                    }
                }
            })
            Name (VNR3, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "acpi-vendor-id", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-config-type", 
                        "Streaming_LineOut"
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-sdca-terminal-type", 
                        0x0690
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0690
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-count", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-dsp-pin", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-stream-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "acpi-vendor-connection-0-peripheral-dp-number", 
                        0x05
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-connection-0-properties", 
                        Buffer (0x0E)
                        {
                            /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x22, 0x07,  // ......".
                            /* 0008 */  0x5D, 0x02, 0x30, 0x00, 0x00, 0x05               // ].0...
                        }
                    }
                }
            })
            Name (CR31, Package (0x04)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "acpi-acd-device-namestring", 
                        "\\_SB.PC00.HDAS.IDA.SNDW.SWD0.AF05"
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-device-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-id", 
                        0x75
                    }, 

                    Package (0x02)
                    {
                        "acpi-acd-sdca-terminal-type", 
                        0x0690
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "msft-acx-properties", 
                        "AC02"
                    }
                }
            })
        }
    }

    Scope (\_SB.PC00.HDAS.IDA.SNDW)
    {
        Device (SWD0)
        {
            Name (_ADR, 0x000330025D072201)  // _ADR: Address
            Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x15)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-sw-interface-revision", 
                        0x00020001
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-sdca-interface-revision", 
                        0x1000
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-sdca-interrupt-register-list", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-commit-register-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-wake-up-unavailable", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-test-mode-supported", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-clock-stop-mode1-supported", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-clockstopprepare-sm-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-clockstopprepare-timeout", 
                        0x05DC
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-peripheral-channelprepare-timeout", 
                        0x96
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-clockstopprepare-hard-reset-behavior", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-highPHY-capable", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-paging-supported", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-bank-delay-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port15-read-behavior", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-manager-list", 
                        Zero
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
                        "mipi-sdw-source-port-list", 
                        0x0454
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-sink-port-list", 
                        0x2A
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-0-supported", 
                        Zero
                    }
                }, 

                ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                Package (0x07)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-dp-1-sink-subproperties", 
                        "DP1S"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-2-source-subproperties", 
                        "DP2S"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-3-sink-subproperties", 
                        "DP3S"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-4-source-subproperties", 
                        "DP4S"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-5-sink-subproperties", 
                        "DP5S"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-6-source-subproperties", 
                        "DP6S"
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-dp-10-source-subproperties", 
                        "DP10"
                    }
                }
            })
            Name (DP1S, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x01)
                        {
                            0x03
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            Zero, 
                            One, 
                            0x02
                        }
                    }
                }
            })
            Name (DP2S, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x01)
                        {
                            0x03
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            Zero, 
                            One, 
                            0x02
                        }
                    }
                }
            })
            Name (DP3S, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x01)
                        {
                            0x03
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            One, 
                            0x02, 
                            Zero
                        }
                    }
                }
            })
            Name (DP4S, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x01)
                        {
                            0x03
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            0x02, 
                            Zero, 
                            One
                        }
                    }
                }
            })
            Name (DP5S, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x01)
                        {
                            0x03
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            0x02, 
                            Zero, 
                            One
                        }
                    }
                }
            })
            Name (DP6S, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x02)
                        {
                            0x03, 
                            0x0F
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            0x02, 
                            Zero, 
                            One
                        }
                    }
                }
            })
            Name (DP10, Package (0x02)
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x0B)
                {
                    Package (0x02)
                    {
                        "mipi-sdw-port-wordlength-configs", 
                        Package (0x03)
                        {
                            0x10, 
                            0x14, 
                            0x18
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-data-port-type", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-grouping-supported", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-simplified-channelprepare-sm", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-min-channel-number", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-channel-number", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-channel-combination-list", 
                        Package (0x01)
                        {
                            0x03
                        }
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-modes-supported", 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-max-async-buffer", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-port-encoding-type", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mipi-sdw-lane-list", 
                        Package (0x03)
                        {
                            One, 
                            0x02, 
                            Zero
                        }
                    }
                }
            })
            Device (AF01)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DSD, Package (0x06)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdw-sw-interface-revision", 
                            0x00020001
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-topology-features", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdw-clockstopprepare-timeout", 
                            0x04E5
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0000F000000301F2
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-list", 
                            Package (0x1A)
                            {
                                One, 
                                0x02, 
                                0x03, 
                                0x42, 
                                0x05, 
                                0x45, 
                                0x46, 
                                0x47, 
                                0x40, 
                                0x06, 
                                0x07, 
                                0x48, 
                                0x41, 
                                0x49, 
                                0x12, 
                                0x08, 
                                0x09, 
                                0x43, 
                                0x0A, 
                                0x0B, 
                                0x44, 
                                0x0C, 
                                0x0D, 
                                0x0F, 
                                0x10, 
                                0x11
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-list", 
                            Package (0x02)
                            {
                                0x11, 
                                0x12
                            }
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x29)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C004"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x5-subproperties", 
                            "C005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "C006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x7-subproperties", 
                            "C007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "C008"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C043"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C044"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2C-subproperties", 
                            "C02C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2D-subproperties", 
                            "C02D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2E-subproperties", 
                            "C02E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2F-subproperties", 
                            "C02F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1-subproperties", 
                            "E001"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x2-subproperties", 
                            "E002"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x3-subproperties", 
                            "E003"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x42-subproperties", 
                            "E042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x5-subproperties", 
                            "E005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x45-subproperties", 
                            "E045"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x46-subproperties", 
                            "E046"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x47-subproperties", 
                            "E047"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x40-subproperties", 
                            "E040"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x6-subproperties", 
                            "E006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x7-subproperties", 
                            "E007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x48-subproperties", 
                            "E048"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x41-subproperties", 
                            "E041"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x49-subproperties", 
                            "E049"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x12-subproperties", 
                            "E012"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x8-subproperties", 
                            "E008"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x9-subproperties", 
                            "E009"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x43-subproperties", 
                            "E043"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0xA-subproperties", 
                            "E00A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0xB-subproperties", 
                            "E00B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x44-subproperties", 
                            "E044"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0xC-subproperties", 
                            "E00C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0xD-subproperties", 
                            "E00D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0xF-subproperties", 
                            "E00F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x10-subproperties", 
                            "E010"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x11-subproperties", 
                            "E011"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subproperties", 
                            "EXT0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x11-subproperties", 
                            "CL11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x12-subproperties", 
                            "CL12"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-initialization-table", 
                            "BUF0"
                        }
                    }
                })
                Name (BUF0, Buffer (0xE1)
                {
                    /* 0000 */  0x00, 0x20, 0xC1, 0x05, 0x48, 0x00, 0x00, 0xC1,  // . ..H...
                    /* 0008 */  0x05, 0x08, 0x00, 0x20, 0x81, 0x05, 0xF0, 0x00,  // ... ....
                    /* 0010 */  0x00, 0x81, 0x05, 0x2D, 0x04, 0x20, 0x00, 0x02,  // ...-. ..
                    /* 0018 */  0xA0, 0x04, 0x00, 0x00, 0x02, 0x01, 0x46, 0x20,  // ......F 
                    /* 0020 */  0x10, 0x06, 0xA0, 0x46, 0x00, 0x10, 0x06, 0x09,  // ...F....
                    /* 0028 */  0x64, 0x20, 0x10, 0x06, 0xCF, 0x64, 0x00, 0x10,  // d ...d..
                    /* 0030 */  0x06, 0x00, 0x65, 0x20, 0x10, 0x06, 0x00, 0x65,  // ..e ...e
                    /* 0038 */  0x00, 0x10, 0x06, 0x0F, 0x60, 0x20, 0x10, 0x06,  // ....` ..
                    /* 0040 */  0x11, 0x60, 0x00, 0x10, 0x06, 0x00, 0x67, 0x20,  // .`....g 
                    /* 0048 */  0x10, 0x06, 0x0C, 0x67, 0x00, 0x10, 0x06, 0x12,  // ...g....
                    /* 0050 */  0x09, 0x20, 0x00, 0x02, 0x70, 0x09, 0x00, 0x00,  // . ..p...
                    /* 0058 */  0x02, 0x02, 0x0A, 0x20, 0x00, 0x02, 0x77, 0x0A,  // ... ..w.
                    /* 0060 */  0x00, 0x00, 0x02, 0x70, 0x3C, 0x20, 0x00, 0x02,  // ...p< ..
                    /* 0068 */  0xC2, 0x3C, 0x00, 0x00, 0x02, 0x15, 0x67, 0x20,  // .<....g 
                    /* 0070 */  0x00, 0x02, 0x41, 0x67, 0x00, 0x00, 0x02, 0x00,  // ..Ag....
                    /* 0078 */  0x4A, 0x20, 0x00, 0x02, 0x00, 0x4A, 0x00, 0x00,  // J ...J..
                    /* 0080 */  0x02, 0x10, 0x25, 0x20, 0x10, 0x06, 0x2A, 0x25,  // ..% ..*%
                    /* 0088 */  0x00, 0x10, 0x06, 0x12, 0x23, 0x20, 0x10, 0x06,  // ....# ..
                    /* 0090 */  0x34, 0x23, 0x00, 0x10, 0x06, 0x29, 0x24, 0x20,  // 4#...)$ 
                    /* 0098 */  0x10, 0x06, 0x41, 0x24, 0x00, 0x10, 0x06, 0x12,  // ..A$....
                    /* 00A0 */  0x22, 0x20, 0x10, 0x06, 0x40, 0x22, 0x00, 0x10,  // " ..@"..
                    /* 00A8 */  0x06, 0x40, 0x76, 0x20, 0x10, 0x06, 0x41, 0x76,  // .@v ..Av
                    /* 00B0 */  0x00, 0x10, 0x06, 0x41, 0x70, 0x20, 0x10, 0x06,  // ...Ap ..
                    /* 00B8 */  0x01, 0x70, 0x00, 0x10, 0x06, 0x01, 0x03, 0x2F,  // .p...../
                    /* 00C0 */  0x00, 0x00, 0x06, 0x45, 0x20, 0x00, 0x02, 0x52,  // ...E ..R
                    /* 00C8 */  0x45, 0x00, 0x00, 0x02, 0x81, 0x63, 0x20, 0x00,  // E....c .
                    /* 00D0 */  0x02, 0xC0, 0x63, 0x00, 0x00, 0x02, 0x3C, 0x58,  // ..c...<X
                    /* 00D8 */  0x2F, 0x00, 0x00, 0x05, 0x59, 0x2F, 0x00, 0x00,  // /...Y/..
                    /* 00E0 */  0x05                                             // .
                })
                Name (C042, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (C043, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x03
                        }
                    }
                })
                Name (C044, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x04
                        }
                    }
                })
                Name (C02C, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C02D, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C02E, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (C02F, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C004, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C005, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x06
                        }
                    }
                })
                Name (C006, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C007, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C008, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (E001, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "CS 41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C110"
                        }
                    }
                })
                Name (C110, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF1"
                        }
                    }
                })
                Name (BUF1, Buffer (0x1C)
                {
                    /* 0000 */  0x02, 0x00, 0x03, 0x00, 0x09, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x80, 0xBB, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x77, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x00,  // .w......
                    /* 0018 */  0x00, 0xEE, 0x02, 0x00                           // ....
                })
                Name (E002, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "IT 41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00030110
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C204"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C210"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C211"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-clock-connection", 
                            "E001"
                        }
                    }
                })
                Name (LC00, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (C204, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG1"
                        }
                    }
                })
                Name (USG1, Buffer (0xAC)
                {
                    /* 0000 */  0x07, 0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x9A, 0x01, 0x00, 0x00, 0x80, 0xBB, 0x00, 0x00,  // ........
                    /* 0010 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x01, 0x00, 0x00, 0x00, 0x9A, 0x01, 0x00, 0x00,  // ........
                    /* 0028 */  0x80, 0xBB, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xCC, 0x01, 0x00, 0x00, 0x00, 0x77, 0x01, 0x00,  // .....w..
                    /* 0048 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xCC, 0x01, 0x00, 0x00,  // ........
                    /* 0060 */  0x00, 0x77, 0x01, 0x00, 0x10, 0x00, 0x00, 0x00,  // .w......
                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0xF4, 0x01, 0x00, 0x00, 0x00, 0xEE, 0x02, 0x00,  // ........
                    /* 0080 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0090 */  0x01, 0x00, 0x00, 0x00, 0xF4, 0x01, 0x00, 0x00,  // ........
                    /* 0098 */  0x00, 0xEE, 0x02, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (C210, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM1"
                        }
                    }
                })
                Name (CLM1, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x11, 0x00, 0x00, 0x00                           // ....
                })
                Name (C211, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "DPS1"
                        }
                    }
                })
                Name (DPS1, Buffer (0x0104)
                {
                    /* 0000 */  0x10, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x01, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0048 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0060 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0068 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0080 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0090 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0098 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0100 */  0xFF, 0x00, 0x00, 0x00                           // ....
                })
                Name (E003, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "XU 42"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x42
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C301"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C301, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (E042, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "MU 35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x42
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E002"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-2", 
                            "E041"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C421"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C421, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x0B)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0xFF
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-0-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-1-dc-value", 
                            0x8000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-2-dc-value", 
                            0x8000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-3-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-4-dc-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-5-dc-value", 
                            0x8000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-6-dc-value", 
                            0x8000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-7-dc-value", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "MUR1"
                        }
                    }
                })
                Name (MUR1, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0x00, 0x80, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00   // ........
                })
                Name (E050, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 42"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x01)
                            {
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP50"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP50"
                        }
                    }
                })
                Name (RP50, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDEC"
                        }
                    }
                })
                Name (PDEC, Buffer (0x08)
                {
                     0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (AP50, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (E005, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010006
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E003"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C501"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "C502"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C501, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (C502, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF3"
                        }
                    }
                })
                Name (BUF3, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0xC0, 0xBE, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00   // ........
                })
                Name (E045, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "SU 43"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C451"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C451, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "SUP1"
                        }
                    }
                })
                Name (SUP1, Buffer (0x0C)
                {
                    /* 0000 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x01, 0x00, 0x00, 0x00                           // ....
                })
                Name (E046, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "SU 44"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C461"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C461, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "SUP1"
                        }
                    }
                })
                Name (E047, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "SU 45"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C471"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C471, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "SUP1"
                        }
                    }
                })
                Name (E040, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 47"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x03)
                            {
                                0x06, 
                                0x07, 
                                0x48
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0005DC00, 
                                Zero, 
                                0x03, 
                                0x0005DC00, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0007A120, 
                                Zero, 
                                0x03, 
                                0x0007A120, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP40"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP40"
                        }
                    }
                })
                Name (RP40, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDER"
                        }
                    }
                })
                Name (PDER, Buffer (0x0C)
                {
                    /* 0000 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x03, 0x00, 0x00, 0x00                           // ....
                })
                Name (AP40, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
                Name (E006, Package (0x06)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 43"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x06C0
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-connector-type", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E045"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C604"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-description", 
                            "TRD1"
                        }
                    }
                })
                Name (TRD1, Buffer (0x0A)
                {
                    /* 0000 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00,  // ........
                    /* 0008 */  0x00, 0x00                                       // ..
                })
                Name (C604, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (USG3, Buffer (0x20)
                {
                    /* 0000 */  0x07, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x9A, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (E007, Package (0x06)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 44"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0690
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-connector-type", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E046"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C704"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-description", 
                            "TRD1"
                        }
                    }
                })
                Name (C704, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (E048, Package (0x06)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x08)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 45"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x06D0
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-connector-type", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E047"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C484"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-description", 
                            "TRD1"
                        }
                    }
                })
                Name (C484, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (E049, Package (0x06)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x12
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "GE 35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-ge-managed-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-ge-default-selectedmode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "GE01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "GE02"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-ge-selectedmode-controls-affected", 
                            "BUF4"
                        }
                    }
                })
                Name (BUF4, Buffer (0xF1)
                {
                    /* 0000 */  0x08, 0x00, 0x04, 0x0C, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x45, 0x01, 0x00, 0x00, 0x00, 0x00,  // ..E.....
                    /* 0010 */  0x00, 0x46, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // .F......
                    /* 0018 */  0x47, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,  // G.......
                    /* 0020 */  0x04, 0x0C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0x45, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46,  // E......F
                    /* 0030 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x47, 0x01,  // ......G.
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x0C,  // ........
                    /* 0040 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x01,  // ......E.
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x01, 0x00,  // .....F..
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x47, 0x01, 0x00, 0x00,  // ....G...
                    /* 0058 */  0x00, 0x00, 0x00, 0x03, 0x04, 0x0C, 0x01, 0x00,  // ........
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x45, 0x01, 0x00, 0x01,  // ....E...
                    /* 0068 */  0x00, 0x00, 0x00, 0x46, 0x01, 0x00, 0x00, 0x00,  // ...F....
                    /* 0070 */  0x00, 0x00, 0x47, 0x01, 0x00, 0x00, 0x00, 0x00,  // ..G.....
                    /* 0078 */  0x00, 0x04, 0x04, 0x0C, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0080 */  0x00, 0x00, 0x45, 0x01, 0x00, 0x00, 0x00, 0x00,  // ..E.....
                    /* 0088 */  0x00, 0x46, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // .F......
                    /* 0090 */  0x47, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,  // G.......
                    /* 0098 */  0x04, 0x0C, 0x01, 0x00, 0x03, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0x45, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46,  // E......F
                    /* 00A8 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x47, 0x01,  // ......G.
                    /* 00B0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x04, 0x0C,  // ........
                    /* 00B8 */  0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x45, 0x01,  // ......E.
                    /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x01, 0x00,  // .....F..
                    /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x47, 0x01, 0x00, 0x00,  // ....G...
                    /* 00D0 */  0x00, 0x00, 0x00, 0x07, 0x04, 0x0C, 0x01, 0x00,  // ........
                    /* 00D8 */  0x02, 0x00, 0x00, 0x00, 0x45, 0x01, 0x00, 0x00,  // ....E...
                    /* 00E0 */  0x00, 0x00, 0x00, 0x46, 0x01, 0x00, 0x00, 0x00,  // ...F....
                    /* 00E8 */  0x00, 0x00, 0x47, 0x01, 0x00, 0x00, 0x00, 0x00,  // ..G.....
                    /* 00F0 */  0x00                                             // .
                })
                Name (GE01, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "GES1"
                        }
                    }
                })
                Name (GES1, Buffer (0x2C)
                {
                    /* 0000 */  0x02, 0x00, 0x05, 0x00, 0x03, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xC0, 0x06, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x90, 0x06, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0xD0, 0x06, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0xA0, 0x06, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0x80, 0x06, 0x00, 0x00                           // ....
                })
                Name (GE02, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
                Name (E041, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010006
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E00C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C411"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "C412"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C411, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-fixed-value", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (C412, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-fixed-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF5"
                        }
                    }
                })
                Name (BUF5, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0xC0, 0xEE, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x1E, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00   // ........
                })
                Name (E012, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 34"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x03)
                            {
                                0x08, 
                                0x09, 
                                0x43
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0005DC00, 
                                Zero, 
                                0x03, 
                                0x0005DC00, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0007A120, 
                                Zero, 
                                0x03, 
                                0x0007A120, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP12"
                        }
                    }
                })
                Name (RP12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDER"
                        }
                    }
                })
                Name (AP12, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
                Name (E008, Package (0x06)
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
                            "IT 31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x06A0
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-connector-type", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C804"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C810"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-description", 
                            "TRD1"
                        }
                    }
                })
                Name (C804, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (C810, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM1"
                        }
                    }
                })
                Name (E009, Package (0x06)
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
                            "IT 32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0680
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-connector-type", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C904"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C910"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-description", 
                            "TRD1"
                        }
                    }
                })
                Name (C904, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (C910, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM1"
                        }
                    }
                })
                Name (E043, Package (0x06)
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
                            "IT 33"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x06D0
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-number", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-connector-type", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C430"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C431"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-reference-description", 
                            "TRD1"
                        }
                    }
                })
                Name (C430, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (C431, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM2"
                        }
                    }
                })
                Name (CLM2, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x12, 0x00, 0x00, 0x00                           // ....
                })
                Name (E00A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010800
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E008"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0xB-subproperties", 
                            "CA0B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (CA0B, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (E00B, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010800
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E009"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0xB-subproperties", 
                            "CB0B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (CB0B, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (E044, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 33"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010800
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E043"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0xB-subproperties", 
                            "C44B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C44B, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (E00C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "SU 35"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x0E
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E00A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-2", 
                            "E00B"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-3", 
                            "E044"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "CC01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (CC01, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "SUP3"
                        }
                    }
                })
                Name (SUP3, Buffer (0x14)
                {
                    /* 0000 */  0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x03, 0x00, 0x00, 0x00                           // ....
                })
                Name (E00D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "XU 36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x42
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E00C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "CD01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (CD01, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (E051, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x01)
                            {
                                0x0D
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP51"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP51"
                        }
                    }
                })
                Name (RP51, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDEC"
                        }
                    }
                })
                Name (AP51, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (E00F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010006
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E00D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "CF01"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "CF02"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (CF01, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (CF02, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            0x1466
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF5"
                        }
                    }
                })
                Name (E010, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00020110
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E00F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-clock-connection", 
                            "E011"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C100"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C101"
                        }
                    }
                })
                Name (C100, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG2"
                        }
                    }
                })
                Name (USG2, Buffer (0x20)
                {
                    /* 0000 */  0x07, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x9A, 0x01, 0x00, 0x00, 0x80, 0xBB, 0x00, 0x00,  // ........
                    /* 0010 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (C101, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "DPS2"
                        }
                    }
                })
                Name (DPS2, Buffer (0x0104)
                {
                    /* 0000 */  0x10, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x02, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0048 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0060 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0068 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0080 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0090 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0098 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0100 */  0xFF, 0x00, 0x00, 0x00                           // ....
                })
                Name (E011, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "CS 36"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C111"
                        }
                    }
                })
                Name (C111, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF7"
                        }
                    }
                })
                Name (BUF7, Buffer (0x1C)
                {
                    /* 0000 */  0x02, 0x00, 0x03, 0x00, 0x09, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x80, 0xBB, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x77, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x00,  // .w......
                    /* 0018 */  0x00, 0xEE, 0x02, 0x00                           // ....
                })
                Name (EXT0, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subsystem-id", 
                            0x1234
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subsystem-revision-id", 
                            0x1234
                        }, 

                        Package (0x02)
                        {
                            "realtek-ge-supported-terminals", 
                            Package (0x05)
                            {
                                Zero, 
                                0x06A0, 
                                0x06D0, 
                                Zero, 
                                0x06C0
                            }
                        }
                    }
                })
                Name (CL11, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH12"
                        }
                    }
                })
                Name (CL12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH13"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH13"
                        }
                    }
                })
                Name (CH11, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x02
                        }
                    }
                })
                Name (CH12, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x03
                        }
                    }
                })
                Name (CH13, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            One
                        }
                    }
                })
            }

            Device (AF02)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_DSD, Package (0x06)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdw-sw-interface-revision", 
                            0x00020001
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-topology-features", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0000F000000301F2
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-list", 
                            Package (0x0A)
                            {
                                0x13, 
                                0x2A, 
                                0x26, 
                                0x15, 
                                0x1C, 
                                0x16, 
                                0x1D, 
                                0x1E, 
                                0x1F, 
                                0x20
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-list", 
                            Package (0x06)
                            {
                                0x11, 
                                0x12, 
                                0x21, 
                                0x22, 
                                0x31, 
                                0x32
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-id-list", 
                            Package (0x01)
                            {
                                0x02
                            }
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x1E)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C004"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x5-subproperties", 
                            "C005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "C006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x7-subproperties", 
                            "C007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "C008"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C043"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C044"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2C-subproperties", 
                            "C02C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2D-subproperties", 
                            "C02D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2E-subproperties", 
                            "C02E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2F-subproperties", 
                            "C02F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x13-subproperties", 
                            "E013"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x15-subproperties", 
                            "E015"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x16-subproperties", 
                            "E016"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1C-subproperties", 
                            "E01C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1D-subproperties", 
                            "E01D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1E-subproperties", 
                            "E01E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1F-subproperties", 
                            "E01F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x20-subproperties", 
                            "E020"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x26-subproperties", 
                            "E026"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x2A-subproperties", 
                            "E02A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subproperties", 
                            "EXT0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x11-subproperties", 
                            "CL11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x12-subproperties", 
                            "CL12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x21-subproperties", 
                            "CL21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x22-subproperties", 
                            "CL22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x31-subproperties", 
                            "CL31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x32-subproperties", 
                            "CL32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-id-0x2-subproperties", 
                            "BSP2"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-initialization-table", 
                            "BUF0"
                        }
                    }
                })
                Name (BUF0, Buffer (0x69)
                {
                    /* 0000 */  0x25, 0x20, 0x10, 0x06, 0x2A, 0x25, 0x00, 0x10,  // % ..*%..
                    /* 0008 */  0x06, 0x12, 0x26, 0x20, 0x10, 0x06, 0x2A, 0x26,  // ..& ..*&
                    /* 0010 */  0x00, 0x10, 0x06, 0x00, 0x28, 0x20, 0x10, 0x06,  // ....( ..
                    /* 0018 */  0x2A, 0x28, 0x00, 0x10, 0x06, 0x2A, 0x10, 0x20,  // *(...*. 
                    /* 0020 */  0x10, 0x06, 0x26, 0x10, 0x00, 0x10, 0x06, 0x26,  // ..&....&
                    /* 0028 */  0x15, 0x20, 0x10, 0x06, 0x1E, 0x15, 0x00, 0x10,  // . ......
                    /* 0030 */  0x06, 0x00, 0x11, 0x20, 0x10, 0x06, 0x15, 0x11,  // ... ....
                    /* 0038 */  0x00, 0x10, 0x06, 0x15, 0x17, 0x20, 0x10, 0x06,  // ..... ..
                    /* 0040 */  0x03, 0x17, 0x00, 0x10, 0x06, 0x04, 0x13, 0x20,  // ....... 
                    /* 0048 */  0x10, 0x06, 0x03, 0x13, 0x00, 0x10, 0x06, 0x04,  // ........
                    /* 0050 */  0x06, 0x20, 0x10, 0x06, 0x00, 0x06, 0x00, 0x10,  // . ......
                    /* 0058 */  0x06, 0x00, 0x00, 0x13, 0x98, 0x40, 0x01, 0x5C,  // .....@.\
                    /* 0060 */  0x2F, 0x00, 0x00, 0x25, 0x03, 0x2F, 0x00, 0x00,  // /..%./..
                    /* 0068 */  0x06                                             // .
                })
                Name (C042, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (C043, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x13
                        }
                    }
                })
                Name (C044, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x04
                        }
                    }
                })
                Name (C02C, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C02D, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C02E, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (C02F, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C004, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C005, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x03
                        }
                    }
                })
                Name (C006, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C007, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C008, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (E013, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "CS 11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x04
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "C132"
                        }
                    }
                })
                Name (C132, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x12
                        }
                    }
                })
                Name (E02A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x01)
                            {
                                0x26
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0002EE00, 
                                Zero, 
                                0x03, 
                                0x0002EE00, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x000493E0, 
                                Zero, 
                                0x03, 
                                0x000493E0, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP2A"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP2A"
                        }
                    }
                })
                Name (RP2A, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDER"
                        }
                    }
                })
                Name (PDER, Buffer (0x0C)
                {
                    /* 0000 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x03, 0x00, 0x00, 0x00                           // ....
                })
                Name (AP2A, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
                Name (E026, Package (0x06)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "IT 11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0205
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010010
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-terminal-clock-connection", 
                            "E013"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C264"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C265"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-microphone-array-geometry", 
                            "MGEO"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-microphone-array-snr", 
                            "MSNR"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-microphone-array-sensitivity", 
                            "MSNS"
                        }
                    }
                })
                Name (MGEO, Buffer (0x2A)
                {
                    /* 0000 */  0x00, 0x01, 0x00, 0x00, 0xEA, 0xDD, 0x16, 0x22,  // ......."
                    /* 0008 */  0x19, 0xD7, 0xE7, 0x28, 0x64, 0x00, 0x4C, 0x1D,  // ...(d.L.
                    /* 0010 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE7, 0xFF,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0x00, 0x00                                       // ..
                })
                Name (MSNR, Buffer (0x0C)
                {
                    /* 0000 */  0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x41, 0x00,  // ......A.
                    /* 0008 */  0x00, 0x00, 0x41, 0x00                           // ..A.
                })
                Name (MSNS, Buffer (0x0C)
                {
                    /* 0000 */  0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0xE6, 0xFF,  // ........
                    /* 0008 */  0x00, 0x00, 0xE6, 0xFF                           // ....
                })
                Name (C264, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG1"
                        }
                    }
                })
                Name (USG1, Buffer (0x20)
                {
                    /* 0000 */  0x07, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xAE, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (C265, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM1"
                        }
                    }
                })
                Name (CLM1, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x11, 0x00, 0x00, 0x00                           // ....
                })
                Name (E015, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0800
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E026"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0xb-subproperties", 
                            "C15B"
                        }
                    }
                })
                Name (C15B, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (E01C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x25
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PPU 11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E015"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C1C1"
                        }
                    }
                })
                Name (C1C1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PSM1"
                        }
                    }
                })
                Name (PSM1, Buffer (0x30)
                {
                    /* 0000 */  0x0B, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0010 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0018 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0020 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0028 */  0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00   // ....!...
                })
                Name (E053, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x01)
                            {
                                0x16
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP53"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP53"
                        }
                    }
                })
                Name (RP53, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDEC"
                        }
                    }
                })
                Name (PDEC, Buffer (0x08)
                {
                     0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (AP53, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (E016, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "XU 12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E01C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C161"
                        }
                    }
                })
                Name (C161, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (E01D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x22
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "MFPU 113"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010032
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E016"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C1D1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C1D2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x5-subproperties", 
                            "C1D3"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C1D4"
                        }
                    }
                })
                Name (C1D1, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (C1D2, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BMT2"
                        }
                    }
                })
                Name (C1D3, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BMT2"
                        }
                    }
                })
                Name (BMT2, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (BSP2, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-cbn-list", 
                            Package (0x01)
                            {
                                0x752F
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-dbn-list", 
                            Package (0x01)
                            {
                                0x0001387F
                            }
                        }
                    }
                })
                Name (C1D4, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x02
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM2"
                        }
                    }
                })
                Name (CLM2, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x31, 0x00, 0x00, 0x00                           // 1...
                })
                Name (E01E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 113"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010006
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E01D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C1E1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "C1E2"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C1E1, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (C1E2, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            0x1500
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF1"
                        }
                    }
                })
                Name (BUF1, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0xC0, 0xEE, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x1E, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00   // ........
                })
                Name (LC00, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (E01F, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "CS 113"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C1F1"
                        }
                    }
                })
                Name (C1F1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF2"
                        }
                    }
                })
                Name (BUF2, Buffer (0x14)
                {
                    /* 0000 */  0x02, 0x00, 0x02, 0x00, 0x09, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x80, 0xBB, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x77, 0x01, 0x00                           // .w..
                })
                Name (E020, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 113"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0181
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00020110
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E01E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-clock-connection", 
                            "E01F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C200"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C201"
                        }
                    }
                })
                Name (C200, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (USG3, Buffer (0x74)
                {
                    /* 0000 */  0x07, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xAE, 0x01, 0x00, 0x00, 0x80, 0xBB, 0x00, 0x00,  // ........
                    /* 0010 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x01, 0x00, 0x00, 0x00, 0xAE, 0x01, 0x00, 0x00,  // ........
                    /* 0028 */  0x80, 0xBB, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xE0, 0x01, 0x00, 0x00, 0x00, 0x77, 0x01, 0x00,  // .....w..
                    /* 0048 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xE0, 0x01, 0x00, 0x00,  // ........
                    /* 0060 */  0x00, 0x77, 0x01, 0x00, 0x10, 0x00, 0x00, 0x00,  // .w......
                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (C201, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "DPS1"
                        }
                    }
                })
                Name (DPS1, Buffer (0x0104)
                {
                    /* 0000 */  0x10, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x06, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0048 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0060 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0068 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0080 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0090 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0098 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0100 */  0xFF, 0x00, 0x00, 0x00                           // ....
                })
                Name (EXT0, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subsystem-id", 
                            0x1234
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subsystem-revision-id", 
                            0x1234
                        }
                    }
                })
                Name (CL11, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH12"
                        }
                    }
                })
                Name (CL12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x04
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CH13"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CH14"
                        }
                    }
                })
                Name (CH11, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x04
                        }
                    }
                })
                Name (CH12, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x04
                        }
                    }
                })
                Name (CH13, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x04
                        }
                    }
                })
                Name (CH14, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x04
                        }
                    }
                })
                Name (CL21, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH22"
                        }
                    }
                })
                Name (CL22, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x04
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CH23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CH24"
                        }
                    }
                })
                Name (CH21, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x53
                        }
                    }
                })
                Name (CH22, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x53
                        }
                    }
                })
                Name (CH23, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x53
                        }
                    }
                })
                Name (CH24, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x53
                        }
                    }
                })
                Name (CL31, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH32"
                        }
                    }
                })
                Name (CL32, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x04
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH32"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-3-subproperties", 
                            "CH33"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-4-subproperties", 
                            "CH34"
                        }
                    }
                })
                Name (CH31, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x51
                        }
                    }
                })
                Name (CH32, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x51
                        }
                    }
                })
                Name (CH33, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x51
                        }
                    }
                })
                Name (CH34, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x51
                        }
                    }
                })
            }

            Device (AF03)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (_DSD, Package (0x06)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdw-sw-interface-revision", 
                            0x00020001
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0000F000000301F2
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-list", 
                            Package (0x01)
                            {
                                One
                            }
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x0D)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C004"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x5-subproperties", 
                            "C005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "C006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x7-subproperties", 
                            "C007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "C008"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C043"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C044"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2C-subproperties", 
                            "C02C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2D-subproperties", 
                            "C02D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2E-subproperties", 
                            "C02E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2F-subproperties", 
                            "C02F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x1-subproperties", 
                            "E001"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-initialization-table", 
                            "BUF0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-hid-descriptor", 
                            "BUF1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-report-descriptor", 
                            "BUF2"
                        }
                    }
                })
                Name (BUF0, Buffer (0x28)
                {
                    /* 0000 */  0x64, 0x20, 0x10, 0x06, 0xCF, 0x64, 0x00, 0x10,  // d ...d..
                    /* 0008 */  0x06, 0x00, 0x65, 0x20, 0x10, 0x06, 0x00, 0x65,  // ..e ...e
                    /* 0010 */  0x00, 0x10, 0x06, 0x0F, 0x60, 0x20, 0x10, 0x06,  // ....` ..
                    /* 0018 */  0x11, 0x60, 0x00, 0x10, 0x06, 0x00, 0x67, 0x20,  // .`....g 
                    /* 0020 */  0x10, 0x06, 0x0C, 0x67, 0x00, 0x10, 0x06, 0x12   // ...g....
                })
                Name (BUF1, Buffer (0x09)
                {
                    /* 0000 */  0x09, 0x21, 0x11, 0x01, 0x00, 0x01, 0x22, 0x33,  // .!...."3
                    /* 0008 */  0x00                                             // .
                })
                Name (BUF2, Buffer (0x33)
                {
                    /* 0000 */  0x05, 0x0C, 0x09, 0x01, 0xA1, 0x01, 0x85, 0x11,  // ........
                    /* 0008 */  0x09, 0xE9, 0x15, 0x00, 0x25, 0x01, 0x75, 0x01,  // ....%.u.
                    /* 0010 */  0x95, 0x01, 0x81, 0x02, 0x09, 0xEA, 0x15, 0x00,  // ........
                    /* 0018 */  0x25, 0x01, 0x75, 0x01, 0x95, 0x01, 0x81, 0x02,  // %.u.....
                    /* 0020 */  0x09, 0xCD, 0x15, 0x00, 0x25, 0x01, 0x75, 0x01,  // ....%.u.
                    /* 0028 */  0x95, 0x01, 0x81, 0x06, 0x75, 0x0D, 0x95, 0x01,  // ....u...
                    /* 0030 */  0x81, 0x03, 0xC0                                 // ...
                })
                Name (C042, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (C043, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x0A
                        }
                    }
                })
                Name (C044, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x04
                        }
                    }
                })
                Name (C02C, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C02D, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C02E, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (C02F, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C004, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C005, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0A
                        }
                    }
                })
                Name (C006, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C007, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C008, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (E001, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x31
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "HIDE 101"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x000D0000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-hide-related-audio-function-list", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-HIDTx-supported-report-ids", 
                            Package (0x01)
                            {
                                0x11
                            }
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "CS10"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x12-subproperties", 
                            "CS12"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x13-subproperties", 
                            "CS13"
                        }
                    }
                })
                Name (CS10, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x04
                        }
                    }
                })
                Name (CS12, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF3"
                        }
                    }
                })
                Name (BUF3, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x44,  // .......D
                    /* 0008 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (CS13, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
            }

            Device (AF04)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Name (_DSD, Package (0x06)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x07)
                    {
                        Package (0x02)
                        {
                            "mipi-sdw-sw-interface-revision", 
                            0x00020001
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdw-clockstopprepare-timeout", 
                            0x04E5
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-topology-features", 
                            0x20
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0000F000000301F2
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-list", 
                            Package (0x0E)
                            {
                                0x30, 
                                0x02, 
                                0x06, 
                                0x04, 
                                0x07, 
                                0x4C, 
                                0x51, 
                                0x41, 
                                0x42, 
                                0x4D, 
                                0x32, 
                                0x31, 
                                0x21, 
                                0x4E
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-list", 
                            Package (0x09)
                            {
                                0x11, 
                                0x21, 
                                0x22, 
                                0x23, 
                                0x24, 
                                0x31, 
                                0x41, 
                                0x42, 
                                0x51
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-id-list", 
                            Package (0x02)
                            {
                                One, 
                                0x02
                            }
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x26)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C004"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x5-subproperties", 
                            "C005"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "C006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x7-subproperties", 
                            "C007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "C008"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C043"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C044"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2C-subproperties", 
                            "C02C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2D-subproperties", 
                            "C02D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2E-subproperties", 
                            "C02E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2F-subproperties", 
                            "C02F"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x30-subproperties", 
                            "E030"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x2-subproperties", 
                            "E002"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x6-subproperties", 
                            "E006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x4-subproperties", 
                            "E004"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x7-subproperties", 
                            "E007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x4C-subproperties", 
                            "E04C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x51-subproperties", 
                            "E051"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x41-subproperties", 
                            "E041"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x42-subproperties", 
                            "E042"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x4D-subproperties", 
                            "E04D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x32-subproperties", 
                            "E032"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x31-subproperties", 
                            "E031"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x21-subproperties", 
                            "E021"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-id-0x4E-subproperties", 
                            "E04E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subproperties", 
                            "EXT0"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x11-subproperties", 
                            "CL11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x21-subproperties", 
                            "CL21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x22-subproperties", 
                            "CL22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x23-subproperties", 
                            "CL23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x24-subproperties", 
                            "CL24"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x31-subproperties", 
                            "CL31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x41-subproperties", 
                            "CL41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x42-subproperties", 
                            "CL42"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-id-0x51-subproperties", 
                            "CL51"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-id-0x1-subproperties", 
                            "BSP1"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-id-0x2-subproperties", 
                            "BSP2"
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-initialization-table", 
                            "BUF0"
                        }
                    }
                })
                Name (BUF0, Buffer (0x78)
                {
                    /* 0000 */  0x3C, 0x20, 0x00, 0x02, 0xC2, 0x3C, 0x00, 0x00,  // < ...<..
                    /* 0008 */  0x02, 0x15, 0x00, 0x20, 0x81, 0x05, 0x70, 0x00,  // ... ..p.
                    /* 0010 */  0x00, 0x81, 0x05, 0x2C, 0x00, 0x20, 0x81, 0x05,  // ...,. ..
                    /* 0018 */  0x70, 0x00, 0x00, 0x81, 0x05, 0x2D, 0x29, 0x20,  // p....-) 
                    /* 0020 */  0x10, 0x06, 0x41, 0x29, 0x00, 0x10, 0x06, 0x41,  // ..A)...A
                    /* 0028 */  0x55, 0x20, 0x10, 0x06, 0x00, 0x55, 0x00, 0x10,  // U ...U..
                    /* 0030 */  0x06, 0x02, 0x38, 0x20, 0x00, 0x02, 0x89, 0x38,  // ..8 ...8
                    /* 0038 */  0x00, 0x00, 0x02, 0x0A, 0x00, 0x81, 0x38, 0x41,  // ......8A
                    /* 0040 */  0x04, 0x03, 0x2F, 0x00, 0x00, 0x06, 0x37, 0x20,  // ../...7 
                    /* 0048 */  0x00, 0x02, 0xFC, 0x37, 0x00, 0x00, 0x02, 0x15,  // ...7....
                    /* 0050 */  0x00, 0x20, 0xD1, 0x05, 0x99, 0x00, 0x00, 0xD1,  // . ......
                    /* 0058 */  0x05, 0xFF, 0x02, 0x20, 0xD1, 0x05, 0x00, 0x02,  // ... ....
                    /* 0060 */  0x00, 0xD1, 0x05, 0x00, 0x03, 0x20, 0xD1, 0x05,  // ..... ..
                    /* 0068 */  0x00, 0x03, 0x00, 0xD1, 0x05, 0x25, 0x04, 0x20,  // .....%. 
                    /* 0070 */  0xD1, 0x05, 0x5F, 0x04, 0x00, 0xD1, 0x05, 0x5F   // .._...._
                })
                Name (C042, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (C043, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x1B
                        }
                    }
                })
                Name (C044, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x04
                        }
                    }
                })
                Name (C02C, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C02D, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C02E, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (C02F, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C004, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x10
                        }
                    }
                })
                Name (C005, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (C006, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x025D
                        }
                    }
                })
                Name (C007, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            0x0722
                        }
                    }
                })
                Name (C008, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (E031, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0B
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "CS 21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cs-type", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C311"
                        }
                    }
                })
                Name (C311, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF1"
                        }
                    }
                })
                Name (BUF1, Buffer (0x1C)
                {
                    /* 0000 */  0x02, 0x00, 0x03, 0x00, 0x09, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x80, 0xBB, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x77, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x00,  // .w......
                    /* 0018 */  0x00, 0xEE, 0x02, 0x00                           // ....
                })
                Name (E030, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "IT 21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0101
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00030110
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C304"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C300"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C301"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-clock-connection", 
                            "E031"
                        }
                    }
                })
                Name (C304, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG1"
                        }
                    }
                })
                Name (USG1, Buffer (0x74)
                {
                    /* 0000 */  0x07, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xAE, 0x01, 0x00, 0x00, 0x80, 0xBB, 0x00, 0x00,  // ........
                    /* 0010 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x01, 0x00, 0x00, 0x00, 0xAE, 0x01, 0x00, 0x00,  // ........
                    /* 0028 */  0x80, 0xBB, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xE0, 0x01, 0x00, 0x00, 0x00, 0x77, 0x01, 0x00,  // .....w..
                    /* 0048 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xE0, 0x01, 0x00, 0x00,  // ........
                    /* 0060 */  0x00, 0x77, 0x01, 0x00, 0x10, 0x00, 0x00, 0x00,  // .w......
                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (LC00, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (C300, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM1"
                        }
                    }
                })
                Name (CLM1, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x11, 0x00, 0x00, 0x00                           // ....
                })
                Name (C301, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "DPS1"
                        }
                    }
                })
                Name (DPS1, Buffer (0x0104)
                {
                    /* 0000 */  0x10, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x03, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0048 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0060 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0068 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0080 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0090 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0098 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0100 */  0xFF, 0x00, 0x00, 0x00                           // ....
                })
                Name (E002, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x25
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PPU 21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E030"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C210"
                        }
                    }
                })
                Name (C210, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PSM1"
                        }
                    }
                })
                Name (PSM1, Buffer (0x30)
                {
                    /* 0000 */  0x0B, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0010 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0018 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0020 */  0x67, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // g.......
                    /* 0028 */  0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00   // ....!...
                })
                Name (E006, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010006
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E002"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C601"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x2-subproperties", 
                            "C602"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C601, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-default-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }
                })
                Name (C602, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-fixed-value", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-cn-list", 
                            0x06
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BUF3"
                        }
                    }
                })
                Name (BUF3, Buffer (0x10)
                {
                    /* 0000 */  0x03, 0x00, 0x01, 0x00, 0xC0, 0xBE, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00   // ........
                })
                Name (E04E, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x22
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "MFPU 21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E006"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C4E1"
                        }
                    }
                })
                Name (C4E1, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }
                })
                Name (E056, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x01)
                            {
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP56"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP56"
                        }
                    }
                })
                Name (RP56, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDEC"
                        }
                    }
                })
                Name (PDEC, Buffer (0x08)
                {
                     0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (AP56, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            Zero
                        }
                    }
                })
                Name (E004, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "XU 22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x42
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E04E"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "C401"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C401, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (E007, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x24
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "SAPU 29"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00030020
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E004"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x5-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C710"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C711"
                        }
                    }
                })
                Name (C710, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-interrupt-position", 
                            0x18
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
                Name (C711, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "BMT1"
                        }
                    }
                })
                Name (BMT1, Buffer (0x1C)
                {
                    /* 0000 */  0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (BSP1, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-cbn-list", 
                            Package (0x01)
                            {
                                0x0424
                            }
                        }
                    }
                })
                Name (BSP2, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-behavior-set-cbn-list", 
                            Package (0x01)
                            {
                                0x044C
                            }
                        }
                    }
                })
                Name (E04C, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x21
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "UDMPU 23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010040
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E007"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C4C1"
                        }
                    }
                })
                Name (C4C1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM3"
                        }
                    }
                })
                Name (CLM3, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x31, 0x00, 0x00, 0x00                           // 1...
                })
                Name (E051, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "FU 23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E04C"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (E041, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x11
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "PDE 23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-managed-list", 
                            Package (0x01)
                            {
                                0x42
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-typical-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0005DC00, 
                                Zero, 
                                0x03, 
                                0x0005DC00, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-powerdomain-transition-max-delay", 
                            Package (0x15)
                            {
                                0x03, 
                                Zero, 
                                0x0007A120, 
                                Zero, 
                                0x03, 
                                0x0007A120, 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x02, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010002
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x1-subproperties", 
                            "RP41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "AP41"
                        }
                    }
                })
                Name (RP41, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "PDER"
                        }
                    }
                })
                Name (PDER, Buffer (0x0C)
                {
                    /* 0000 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x03, 0x00, 0x00, 0x00                           // ....
                })
                Name (AP41, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x03
                        }
                    }
                })
                Name (E042, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x06)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0380
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x0110
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-transducer-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E051"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C424"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }
                    }
                })
                Name (C424, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG2"
                        }
                    }
                })
                Name (USG2, Buffer (0x20)
                {
                    /* 0000 */  0x07, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xAE, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Name (E04D, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x04)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x21
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "UDMPU 25"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010040
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E051"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x6-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C4D1"
                        }
                    }
                })
                Name (C4D1, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "CLM4"
                        }
                    }
                })
                Name (CLM4, Buffer (0x0C)
                {
                    /* 0000 */  0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x51, 0x00, 0x00, 0x00                           // Q...
                })
                Name (E032, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "OT 25"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-type", 
                            0x0188
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-list", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00020110
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x05)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-input-pin-1", 
                            "E04D"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-terminal-clock-connection", 
                            "E031"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x4-subproperties", 
                            "C320"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x8-subproperties", 
                            "LC00"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-0x11-subproperties", 
                            "C321"
                        }
                    }
                })
                Name (C320, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "USG3"
                        }
                    }
                })
                Name (USG3, Buffer (0x74)
                {
                    /* 0000 */  0x07, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0xBC, 0x02, 0x00, 0x00, 0x80, 0xBB, 0x00, 0x00,  // ........
                    /* 0010 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0x01, 0x00, 0x00, 0x00, 0xBC, 0x02, 0x00, 0x00,  // ........
                    /* 0028 */  0x80, 0xBB, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xBC, 0x02, 0x00, 0x00, 0x00, 0x77, 0x01, 0x00,  // .....w..
                    /* 0048 */  0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xBC, 0x02, 0x00, 0x00,  // ........
                    /* 0060 */  0x00, 0x77, 0x01, 0x00, 0x10, 0x00, 0x00, 0x00,  // .w......
                    /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                Name (C321, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-dc-value", 
                            One
                        }
                    }, 

                    ToUUID ("edb12dd0-363d-4085-a3d2-49522ca160c4") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-range", 
                            "DPS2"
                        }
                    }
                })
                Name (DPS2, Buffer (0x0104)
                {
                    /* 0000 */  0x10, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x0A, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0018 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0020 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0028 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0030 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0048 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0058 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0060 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0068 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0070 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0080 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0090 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0098 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00B8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00C8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00D8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00E8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F0 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 00F8 */  0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00,  // ........
                    /* 0100 */  0xFF, 0x00, 0x00, 0x00                           // ....
                })
                Name (E021, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-entity-type", 
                            0x30
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-entity-label", 
                            "TG 23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-list", 
                            0x00010000
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-0x10-subproperties", 
                            "C211"
                        }
                    }
                })
                Name (C211, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-control-access-layer", 
                            0x08
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-control-access-mode", 
                            Zero
                        }
                    }
                })
                Name (EXT0, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subsystem-id", 
                            0x1234
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-function-expansion-subsystem-revision-id", 
                            0x1234
                        }
                    }
                })
                Name (CL11, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH11"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH12"
                        }
                    }
                })
                Name (CH11, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x02
                        }
                    }
                })
                Name (CH12, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x03
                        }
                    }
                })
                Name (CH13, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            One
                        }
                    }
                })
                Name (CL21, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH21"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH22"
                        }
                    }
                })
                Name (CL22, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH23"
                        }
                    }
                })
                Name (CL23, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH22"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH21"
                        }
                    }
                })
                Name (CL24, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH23"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH23"
                        }
                    }
                })
                Name (CH21, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x02
                        }
                    }
                })
                Name (CH22, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x03
                        }
                    }
                })
                Name (CH23, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0xFF
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x47
                        }
                    }
                })
                Name (CL31, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH31"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH32"
                        }
                    }
                })
                Name (CH31, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x50
                        }
                    }
                })
                Name (CH32, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x50
                        }
                    }
                })
                Name (CL41, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH41"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH42"
                        }
                    }
                })
                Name (CL42, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH43"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH44"
                        }
                    }
                })
                Name (CH41, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            0x09
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x5A
                        }
                    }
                })
                Name (CH42, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x5A
                        }
                    }
                })
                Name (CH43, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x58
                        }
                    }
                })
                Name (CH44, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            0x10
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x59
                        }
                    }
                })
                Name (CL51, Package (0x04)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-count", 
                            0x02
                        }
                    }, 

                    ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */, 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-channel-1-subproperties", 
                            "CH51"
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-channel-2-subproperties", 
                            "CH52"
                        }
                    }
                })
                Name (CH51, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x65
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x71
                        }
                    }
                })
                Name (CH52, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x03)
                    {
                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-id", 
                            0x66
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-purpose", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "mipi-sdca-cluster-channel-relationship", 
                            0x72
                        }
                    }
                })
            }
        }
    }
}

