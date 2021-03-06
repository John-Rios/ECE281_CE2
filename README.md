ECE281_CE2
==========

Computer Exercise 2

Decoder_Structural.vhd simulation results:

![Structural] (https://raw.github.com/John-Rios/ECE281_CE2/master/Decoder_Structural.JPG)

Decoder_Behavioral.vhd simulation results:

![Behavioral] (https://raw.github.com/John-Rios/ECE281_CE2/master/Decoder_Behavioral.JPG)

The results from both simulations are the same. In addition to matching each other, simulation results match the results shown in the CE2 handout. This leads me to believe, with confidence, that my results, and therefore my code, is correct. 

________________________________________________________________________________________________________________________

Question from step 15 of CE2 handout
(How does a decoder work and how can that functionality be useful in the context of computer memory?)

A decoder has N inputs and has 2^N outputs. A decoder exerts one output per input combination. Decoders decode binary numbers into "one-of-2^N" code where an output has a unique true code.

Decoding allows a processor to address a memory space that is much larger than the memory space covered by an individual memory chip. Decoding is necessary in order to splice a memory divide into the address space of the processor. 

________________________________________________________________________________________________________________________

CE2 Summary

CE2 helped me understand the difference between behavioral code and structural code. This lab allowed me to practice coding both behavioral and structural code in VHDL. My CE2 code was successful based on the simulation results. I ran into one bug on the structural portion of the exercise. C2C Scott Agnolutto helped me spot my error. I had reversed the equal sign for an inverter line and also miss associated my testbench file so that it referenced another file. When I reversed the equal sign and renamed the misnamed association on my testbench file the code worked. After this, I ran into no troubles with my behavioral code. 
