
An SR latch is a simple digital logic circuit with memory - once set or reset, it remains in that state until it receives a pulse on the opposite input.
Assume that Q is high and both inputs are low; the latch will remain in this state. If the R input is brought high, however, the top NOR gate will change its output to low; the bottom NOR gate now has low on both its inputs, and sets its output to high. This ensures that the new state persists even after the R input ends. Since the circuit is symmetrical, the same applies when asserting the S input.
