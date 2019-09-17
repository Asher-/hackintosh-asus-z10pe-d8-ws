/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLnIYDQl.aml, Tue Sep 17 17:22:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000018D (397)
 *     Revision         0x05
 *     Checksum         0x2C
 *     OEM ID           "Asher"
 *     OEM Table ID     "ETH0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 5, "Asher", "ETH0", 0x00000000)
{
    External (_SB_.PCI0.RP03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP03.D084, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP03.D086, DeviceObj)    // (from opcode)
    External (D084, DeviceObj)    // Warning: Unknown object
    External (D086, DeviceObj)    // Warning: Unknown object
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)

    Scope (\_SB.PCI0.RP03)
    {
        Scope (D084)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D086)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ETH0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }, 

                        "name", 
                        Buffer (0x28)
                        {
                            "Intel i210 PCI Express Gigabit Ethernet"
                        }, 

                        "model", 
                        Buffer (0x1F)
                        {
                            "Intel i210 Ethernet Controller"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x57, 0x85, 0x00, 0x00                         
                        }, 

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x33, 0x15, 0x00, 0x00                         
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x43, 0x10, 0x00, 0x00                         
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

