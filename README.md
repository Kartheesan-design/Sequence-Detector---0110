# Sequence-Detector---0110

=> The module is named seq_detector and it has four inputs: x, clk, rst, and z.

=> x is the input signal, clk is the clock signal, rst is the reset signal, and z is the output signal.

=> The sequence detector uses a state machine with four states, represented by the parameters S0, S1, S2, and S3.

=> PS (Present State) and NS (Next State) are two-bit registers used to keep track of the current state and the next state of the state machine.

=> The first always block is a sequential circuit that updates the present state (PS) with the next state (NS) at every positive edge of the clock or when a positive edge of the reset signal is detected. If reset      occurs, the state machine goes to the S0 state.

=> The second always block is a combinational circuit that determines the next state (NS) and the output z based on the current state (PS) and the input x.

=> The case statement inside the second always block describes the state transitions and the output for each state.

This Sequence detector is asynchronous(since it is triggered by both positive edge of clock and reset).In the first always block it is a same logic of a flip flop like if reset is HIGH then the present state will move to S0(first state), else it will move to the next state.

The  second always block is for the changing of states.In this block i have used case statement of present state just following the state diagram the logic will be made.

** “overlapping” refers to the ability of the detector to recognize sequences that share elements.

Non-overlapping sequence detector:

Let’s say the input is 0110110. A non-overlapping sequence detector would process it as follows:

Starts at the beginning of the string.
Sees 0110 - recognizes it as the sequence.
Then sees 0110 - but this 0110 starts from the second 1 of the previous 0110, so it doesn’t count as a separate sequence.
So, in the end, a non-overlapping sequence detector detects "ONE" occurrence of 0110.

Overlapping sequence detector:

Now, let’s see how an overlapping sequence detector would process the same input 0110110:

Starts at the beginning of the string.
Sees 0110 - recognizes it as the sequence.
Then sees 0110 - this 0110 starts from the second 1 of the previous 0110, so it does count as a separate sequence.
So, in the end, an overlapping sequence detector detects "TWO" occurrences of 0110.


Summary:
This sequence detector is a Meely state machine(we can also do the same in moore) to detect a specific sequence in the input signal x and produces an output z based on the detected sequence. The exact sequence it’s looking for isn’t clear from this code snippet, but it would depend on the logic defined in the case statement. The sequence detector resets to the S0 state whenever the reset signal rst is high. The state transitions occur at each positive edge of the clock signal clk.
