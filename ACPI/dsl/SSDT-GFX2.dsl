/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLx9QkMG.aml, Tue Sep 17 17:22:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002A5 (677)
 *     Revision         0x05
 *     Checksum         0xCF
 *     OEM ID           "Asher"
 *     OEM Table ID     "VegaFE-2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 5, "Asher", "VegaFE-2", 0x00000000)
{
    External (_SB_.PCI1.QR2A, DeviceObj)    // (from opcode)
    External (_SB_.PCI1.QR2A.D07F, DeviceObj)    // (from opcode)
    External (_SB_.PCI1.QR2A.H000, DeviceObj)    // (from opcode)
    External (D07F, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)
    External (H000, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI1.QR2A)
    {
        Scope (H000)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D07F)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x02)
                {
                    "pci-aspm-default", 
                    Buffer (One)
                    {
                         0x00                                           
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }

        Device (PEGP)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x02)
                    {
                        "pci-aspm-default", 
                        Buffer (One)
                        {
                             0x00                                           
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Device (EGP0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x02)
                        {
                            "pci-aspm-default", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Device (GFX2)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x0A)
                            {
                                "pci-aspm-default", 
                                Buffer (One)
                                {
                                     0x00                                           
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x09)
                                {
                                    "VegaFE-2"
                                }, 

                                "model", 
                                Buffer (0x1D)
                                {
                                    "Vega Frontier Edition (GFX2)"
                                }, 

                                "PP_DisableDIDT", 
                                Buffer (One)
                                {
                                     0x01                                           
                                }, 

                                "PP_DisablePowerContainment", 
                                Buffer (One)
                                {
                                     0x01                                           
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Device (HDA2)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x08)
                            {
                                "layout-id", 
                                Buffer (0x04)
                                {
                                     0x01, 0x00, 0x00, 0x00                         
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x09)
                                {
                                    "VegaFE-2"
                                }, 

                                "model", 
                                Buffer (0x26)
                                {
                                    "Vega Frontier Edition HD-Audio (HDA2)"
                                }, 

                                "hda-gfx", 
                                Buffer (0x0A)
                                {
                                    "onboard-2"
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }
        }
    }
}

