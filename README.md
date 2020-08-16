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

* >= 2u2 50V Ripple Rejection Capacitor missing from across R22 (LM317 regulator)
** Found to prevent oscillation with hostile downstream load (oscillating LT1763)
* C24 LT1763 Bypass Capacitor is incorrectly placed, causes self-oscillation, and should not be populated.
** Attempt to wire this across to Vout instead as recommended also caused output oscillation when under load (25mA).