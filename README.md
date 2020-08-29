# scot-resolver

Resolver Interface for the SCOT.

* 22-32V DC Input
* STM32F042K6 Microcontroller @ 48MHz
* MCP2562 CAN 2.0A/B Communication Interface
* AD2S1210 Resolver to Digital Converter
* AD8397 Excitation Driver
* AD8692 Receiver Amplifiers

[**Circuit Board Schematic**](https://github.com/philcrump/scot-resolver/raw/master/scot-resolver-schematic.pdf)

## PCB (CAD Render)

![PCB CAD Render](https://raw.githubusercontent.com/philcrump/scot-resolver/master/scot-resolver-cad.png)

### June 2020 PCB Errata

* C25 has 0603 pad, C27 & C28 have 1210 pads, all should be 0805 to match the part.
* C26 has 1210 pad, should be 1206.
** Not disastrous, part still fits, with careful placement on 1210 to ensure direct contact with the pads.
* Input Voltage rating is 22-32V, not 19-36V as printed on the PCB (limited by U6-LM317 dropout and thermal).
* Optional Ripple Rejection Capacitor should be fitted across R22 (LM317 regulator)
** 2u2 50V found to prevent oscillation with hostile downstream load (oscillating U2-LT1763)
* C24 U2-LT1763 Bypass Capacitor is incorrectly placed, causes self-oscillation, and should not be populated.
** Attempt to wire this across to Vout instead as recommended also caused output oscillation when under load (25mA).
* U6-LM317 regulator gets hot, within limits but would benefit from more heatsinking / different package.