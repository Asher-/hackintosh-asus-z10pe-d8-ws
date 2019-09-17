/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLOYcuM5.aml, Tue Sep 17 17:22:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000138 (312)
 *     Revision         0x05
 *     Checksum         0xB6
 *     OEM ID           "Asher"
 *     OEM Table ID     "EVSS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 5, "Asher", "EVSS", 0x00000000)
{
    External (_SB_.PCI0.EVSS, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)

    Scope (_SB.PCI0.EVSS)
    {
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
                    Buffer (0x05)
                    {
                        "0x00"
                    }, 

                    "name", 
                    Buffer (0x17)
                    {
                        "Intel sSata Controller"
                    }, 

                    "model", 
                    Buffer (0x1F)
                    {
                        "Intel Chipset sSATA Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,8d62"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "AHCI Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x62, 0x8D, 0x00, 0x00                         
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

