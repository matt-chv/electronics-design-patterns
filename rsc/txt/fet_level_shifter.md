
A single FET in the configuration shown can be used as a bidirectional level shifter, useful for I2C or other bidirectional buses.
With neither side being driven, the pullups ensure both lines are high. If the low voltage side is driven low, the FET gate is now at a higher voltage than the source, and the FET conducts, driving the high voltage side low. If the high voltage side is driven low, the FET's body diode conducts, bringing the low voltage side low and turning the FET on.
