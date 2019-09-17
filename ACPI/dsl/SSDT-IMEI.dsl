/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLnq1S5d.aml, Tue Sep 17 17:22:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000299 (665)
 *     Revision         0x05
 *     Checksum         0x43
 *     OEM ID           "Asher"
 *     OEM Table ID     "IMEI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 5, "Asher", "IMEI", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HEC2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HECI, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)

    Scope (\_SB.PCI0)
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Store (Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (0x05)
                        {
                            "0x00"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x3A, 0x8D, 0x00, 0x00                         
                        }, 

                        "name", 
                        Buffer (0x0D)
                        {
                            "pci8086,8d3a"
                        }, 

                        "model", 
                        Buffer (0x3C)
                        {
                            "Intel Corporation C610/X99 Series Chipset MEI Controller #1"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,1e3a"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }
        }

        Device (MEI2)
        {
            Name (_ADR, 0x00160001)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Store (Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (0x05)
                        {
                            "0x00"
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x3B, 0x8D, 0x00, 0x00                         
                        }, 

                        "name", 
                        Buffer (0x0D)
                        {
                            "pci8086,8d3b"
                        }, 

                        "model", 
                        Buffer (0x3C)
                        {
                            "Intel Corporation C610/X99 Series Chipset MEI Controller #1"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci8086,1e3b"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }
        }

        Name (_SB.PCI0.HECI._STA, Zero)  // _STA: Status
        Name (_SB.PCI0.HEC2._STA, Zero)  // _STA: Status
    }
}

