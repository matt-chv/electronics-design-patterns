
Open-collector logic is a common configuration wherein the output of a digital logic circuit can drive a signal line low, but is high-impedance when the output is high. A pull-up resistor is required on the signal line to pull the line high.
This has several advantages. It makes it possible for an IC operating at one voltage level to drive a line at another voltage level. It can also be used with multiple drivers for 'wired AND', since the output signal is implicitly the AND of all the input signals. This is taken advantage of by protocols like I2C to support multiple devices on a bus.
