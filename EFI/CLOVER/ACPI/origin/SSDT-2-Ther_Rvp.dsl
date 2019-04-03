/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2-Ther_Rvp.aml, Wed Apr  3 11:08:18 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000011A2 (4514)
 *     Revision         0x02
 *     Checksum         0x74
 *     OEM ID           "INTEL "
 *     OEM Table ID     "Ther_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "Ther_Rvp", 0x00001000)
{
    External (_PR_.AAC0, UnknownObj)
    External (_PR_.ACRT, UnknownObj)
    External (_PR_.APSV, UnknownObj)
    External (_PR_.DTS1, UnknownObj)
    External (_PR_.DTS2, UnknownObj)
    External (_PR_.DTS3, UnknownObj)
    External (_PR_.DTS4, UnknownObj)
    External (_PR_.DTSE, UnknownObj)
    External (_PR_.PDTS, UnknownObj)
    External (_PR_.PKGA, UnknownObj)
    External (_PR_.PR00, UnknownObj)
    External (_PR_.PR01, UnknownObj)
    External (_PR_.PR02, UnknownObj)
    External (_PR_.PR03, UnknownObj)
    External (_PR_.PR04, UnknownObj)
    External (_PR_.PR05, UnknownObj)
    External (_PR_.PR06, UnknownObj)
    External (_PR_.PR07, UnknownObj)
    External (_PR_.PR08, UnknownObj)
    External (_PR_.PR09, UnknownObj)
    External (_PR_.PR10, UnknownObj)
    External (_PR_.PR11, UnknownObj)
    External (_PR_.PR12, UnknownObj)
    External (_PR_.PR13, UnknownObj)
    External (_PR_.PR14, UnknownObj)
    External (_PR_.PR15, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.H_EC.PECH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.PECL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.PENV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.PLMX, FieldUnitObj)
    External (AC0F, IntObj)
    External (AC1F, IntObj)
    External (ACT1, IntObj)
    External (ACTT, IntObj)
    External (CRTT, IntObj)
    External (CTYP, IntObj)
    External (PSVT, IntObj)
    External (TC1V, IntObj)
    External (TC2V, IntObj)
    External (TCNT, IntObj)
    External (TSPV, IntObj)
    External (VFN0, IntObj)
    External (VFN1, IntObj)
    External (VFN2, IntObj)
    External (VFN3, IntObj)
    External (VFN4, IntObj)

    Scope (\_TZ)
    {
        Name (ETMD, One)
        Event (FCET)
        Name (FCRN, Zero)
        Mutex (FCMT, 0x00)
        Name (CVF0, Zero)
        Name (CVF1, Zero)
        Name (CVF2, Zero)
        Name (CVF3, Zero)
        Name (CVF4, Zero)
        Mutex (FMT0, 0x00)
        Mutex (FMT1, 0x00)
        Mutex (FMT2, 0x00)
        Mutex (FMT3, 0x00)
        Mutex (FMT4, 0x00)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT0, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF0, Local1)
                    Release (FMT0)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT0, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF0) /* \_TZ_.CVF0 */
                    Release (FMT0)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT0, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF0) /* \_TZ_.CVF0 */
                    Release (FMT0)
                }

                FNCL ()
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT1, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF1, Local1)
                    Release (FMT1)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT1, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF1) /* \_TZ_.CVF1 */
                    Release (FMT1)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT1, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF1) /* \_TZ_.CVF1 */
                    Release (FMT1)
                }

                FNCL ()
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        PowerResource (FN02, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT2, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF2, Local1)
                    Release (FMT2)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT2, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF2) /* \_TZ_.CVF2 */
                    Release (FMT2)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT2, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF2) /* \_TZ_.CVF2 */
                    Release (FMT2)
                }

                FNCL ()
            }
        }

        Device (FAN2)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN02
            })
        }

        PowerResource (FN03, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT3, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF3, Local1)
                    Release (FMT3)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT3, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF3) /* \_TZ_.CVF3 */
                    Release (FMT3)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT3, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF3) /* \_TZ_.CVF3 */
                    Release (FMT3)
                }

                FNCL ()
            }
        }

        Device (FAN3)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN03
            })
        }

        PowerResource (FN04, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT4, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF4, Local1)
                    Release (FMT4)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT4, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF4) /* \_TZ_.CVF4 */
                    Release (FMT4)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT4, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF4) /* \_TZ_.CVF4 */
                    Release (FMT4)
                }

                FNCL ()
            }
        }

        Device (FAN4)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN04
            })
        }

        Method (FNCL, 0, NotSerialized)
        {
            Store (Acquire (FCMT, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (FCRN, Local6)
                Release (FCMT)
            }

            If (LNotEqual (Local6, Zero))
            {
                Signal (FCET)
                Return (Zero)
            }
            Else
            {
                Store (Acquire (FCMT, 0x03E8), Local5)
                If (LEqual (Local5, Zero))
                {
                    Store (One, FCRN) /* \_TZ_.FCRN */
                    Release (FCMT)
                }

                Store (Zero, Local5)
                While (LLess (Local5, 0x04))
                {
                    If (LNotEqual (Wait (FCET, 0x05), Zero))
                    {
                        Store (0x04, Local5)
                    }
                    Else
                    {
                        Increment (Local5)
                    }
                }

                Store (Acquire (FCMT, 0x03E8), Local5)
                If (LEqual (Local5, Zero))
                {
                    Store (Zero, FCRN) /* \_TZ_.FCRN */
                    Release (FCMT)
                }
            }

            Store (Zero, Local0)
            Store (Zero, Local1)
            Store (Zero, Local2)
            Store (Zero, Local3)
            Store (Zero, Local4)
            Store (Acquire (FMT0, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF0, Local0)
                Release (FMT0)
            }

            Store (Acquire (FMT1, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF1, Local1)
                Release (FMT1)
            }

            Store (Acquire (FMT2, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF2, Local2)
                Release (FMT2)
            }

            Store (Acquire (FMT3, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF3, Local3)
                Release (FMT3)
            }

            Store (Acquire (FMT4, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF4, Local4)
                Release (FMT4)
            }

            Store (Local0, \VFN0) /* External reference */
            Store (Local1, \VFN1) /* External reference */
            Store (Local2, \VFN2) /* External reference */
            Store (Local3, \VFN3) /* External reference */
            Store (Local4, \VFN4) /* External reference */
            If (LAnd (\_SB.PCI0.LPCB.H_EC.ECAV, ETMD))
            {
                If (LAnd (LNotEqual (Local0, Zero), LNotEqual (Local1, Zero)))
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (AC0F, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                }
                ElseIf (LAnd (LEqual (Local0, Zero), LNotEqual (Local1, Zero)))
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (AC1F, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                }

                \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
            }
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP) /* External reference */
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If (LNotEqual (\_PR.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.ACRT, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                If (CondRefOf (\_PR.AAC0))
                {
                    If (LNotEqual (\_PR.AAC0, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.AAC0, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\ACTT, 0x0A)))
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (Add (0x0AAC, Multiply (\ACT1, 0x0A)))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x32))
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x64))
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x96))
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN0
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN1
            })
            Name (_AL2, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN2
            })
            Name (_AL3, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN3
            })
            Name (_AL4, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN4
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LNot (ETMD))
                {
                    Return (0x0BB8)
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If (LEqual (\_PR.DTSE, 0x03))
                    {
                        Return (Add (0x0B10, Multiply (\CRTT, 0x0A)))
                    }
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If (LEqual (\_PR.DTSE, One))
                    {
                        If (LEqual (\_PR.PKGA, One))
                        {
                            Store (\_PR.PDTS, Local0)
                            Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                        }

                        Store (\_PR.DTS1, Local0)
                        If (LGreater (\_PR.DTS2, Local0))
                        {
                            Store (\_PR.DTS2, Local0)
                        }

                        If (LGreater (\_PR.DTS3, Local0))
                        {
                            Store (\_PR.DTS3, Local0)
                        }

                        If (LGreater (\_PR.DTS4, Local0))
                        {
                            Store (\_PR.DTS4, Local0)
                        }

                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }
                }

                If (\_SB.PCI0.LPCB.H_EC.ECAV)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PLMX)), Local0)
                    Add (0x0AAC, Multiply (Local0, 0x0A), Local0)
                    Store (Local0, PTMP) /* \_TZ_.TZ00.PTMP */
                    Return (Local0)
                }

                Return (0x0BC2)
            }
        }

        ThermalZone (TZ01)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP) /* External reference */
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_PR.ACRT))
                {
                    If (LNotEqual (\_PR.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.ACRT, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LNot (ETMD))
                {
                    Return (0x0BCC)
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If (LEqual (\_PR.DTSE, 0x03))
                    {
                        Return (Add (0x0B10, Multiply (\CRTT, 0x0A)))
                    }
                }

                If (CondRefOf (\_PR.DTSE))
                {
                    If (LEqual (\_PR.DTSE, One))
                    {
                        If (LEqual (\_PR.PKGA, One))
                        {
                            Store (\_PR.PDTS, Local0)
                            Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                        }

                        Store (\_PR.DTS1, Local0)
                        If (LGreater (\_PR.DTS2, Local0))
                        {
                            Store (\_PR.DTS2, Local0)
                        }

                        If (LGreater (\_PR.DTS3, Local0))
                        {
                            Store (\_PR.DTS3, Local0)
                        }

                        If (LGreater (\_PR.DTS4, Local0))
                        {
                            Store (\_PR.DTS4, Local0)
                        }

                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }
                }

                If (\_SB.PCI0.LPCB.H_EC.ECAV)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECH)), Local0)
                    Multiply (Local0, 0x0A, Local0)
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECL)), Local1)
                    ShiftRight (Local1, 0x02, Local1)
                    Store (Divide (Multiply (Local1, 0x0A), 0x40, ), Local1)
                    Add (Local0, Local1, Local0)
                    Add (0x0AAC, Local0, Local0)
                    Store (Local0, PTMP) /* \_TZ_.TZ01.PTMP */
                    Return (Local0)
                }

                Return (0x0BD6)
            }

            Method (XPSL, 0, Serialized)
            {
                If (LEqual (\TCNT, 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09, 
                        \_PR.PR10, 
                        \_PR.PR11, 
                        \_PR.PR12, 
                        \_PR.PR13, 
                        \_PR.PR14, 
                        \_PR.PR15
                    })
                }

                If (LEqual (\TCNT, 0x0E))
                {
                    Return (Package (0x0E)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09, 
                        \_PR.PR10, 
                        \_PR.PR11, 
                        \_PR.PR12, 
                        \_PR.PR13
                    })
                }

                If (LEqual (\TCNT, 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09, 
                        \_PR.PR10, 
                        \_PR.PR11
                    })
                }

                If (LEqual (\TCNT, 0x0A))
                {
                    Return (Package (0x0A)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07, 
                        \_PR.PR08, 
                        \_PR.PR09
                    })
                }

                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06, 
                        \_PR.PR07
                    })
                }

                If (LEqual (\TCNT, 0x07))
                {
                    Return (Package (0x07)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05, 
                        \_PR.PR06
                    })
                }

                If (LEqual (\TCNT, 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04, 
                        \_PR.PR05
                    })
                }

                If (LEqual (\TCNT, 0x05))
                {
                    Return (Package (0x05)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03, 
                        \_PR.PR04
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02, 
                        \_PR.PR03
                    })
                }

                If (LEqual (\TCNT, 0x03))
                {
                    Return (Package (0x03)
                    {
                        \_PR.PR00, 
                        \_PR.PR01, 
                        \_PR.PR02
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.PR00, 
                        \_PR.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.PR00
                })
            }

            Method (XPSV, 0, Serialized)
            {
                If (CondRefOf (\_PR.APSV))
                {
                    If (LNotEqual (\_PR.APSV, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_PR.APSV, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\PSVT, 0x0A)))
            }

            Method (XTC1, 0, Serialized)
            {
                Return (\TC1V) /* External reference */
            }

            Method (XTC2, 0, Serialized)
            {
                Return (\TC2V) /* External reference */
            }

            Method (XTSP, 0, Serialized)
            {
                Return (\TSPV) /* External reference */
            }
        }
    }
}

