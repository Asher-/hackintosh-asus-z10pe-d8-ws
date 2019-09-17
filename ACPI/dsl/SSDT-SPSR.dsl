/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLSni4HT.aml, Tue Sep 17 17:22:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000182 (386)
 *     Revision         0x01
 *     Checksum         0x3B
 *     OEM ID           "Asher"
 *     OEM Table ID     "SPSR"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 5, "Asher", "SPSR", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EVMR, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)

    Device (_SB.PCI0.SPSR)
    {
        Name (_ADR, 0x00110000)  // _ADR: Address
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

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x7C, 0x8D, 0x00, 0x00                         
                    }, 

                    "device_type", 
                    Buffer (0x16)
                    {
                        "Intel SPSR Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,9d21"
                    }, 

                    "name", 
                    Buffer (0x1D)
                    {
                        "C610/X99 Series Chipset SPSR"
                    }, 

                    "model", 
                    Buffer (0x3A)
                    {
                        "Intel Corporation C610/X99 Series Chipset SPSR Controller"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Name (_SB.PCI0.EVMR._STA, Zero)  // _STA: Status
}

