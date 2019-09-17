/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLebaJZF.aml, Tue Sep 17 17:22:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000015D (349)
 *     Revision         0x05
 *     Checksum         0x8F
 *     OEM ID           "Asher"
 *     OEM Table ID     "LPCB"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 5, "Asher", "LPCB", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC0.FPU_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC0.PIC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC0.TMR_, DeviceObj)    // (from opcode)
    External (ENTK, IntObj)    // (from opcode)
    External (EXTK, IntObj)    // (from opcode)
    External (IO1B, IntObj)    // (from opcode)
    External (IO1L, IntObj)    // (from opcode)
    External (IO2B, IntObj)    // (from opcode)
    External (IO2L, IntObj)    // (from opcode)
    External (IO3B, IntObj)    // (from opcode)
    External (IO3L, IntObj)    // (from opcode)
    External (IO4B, IntObj)    // (from opcode)
    External (IO4L, IntObj)    // (from opcode)
    External (IOST, IntObj)    // (from opcode)
    External (LPC0, DeviceObj)    // (from opcode)
    External (SP1O, IntObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (LPC0.MATH)
        {
            Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
        }

        Name (LPC0.FPU._STA, Zero)  // _STA: Status
        Device (LPC0.IPIC)
        {
            Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
        }

        Name (LPC0.PIC._STA, Zero)  // _STA: Status
        Device (LPC0.TIMR)
        {
            Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
        }
    }
}

