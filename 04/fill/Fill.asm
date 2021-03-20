// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// 24567 is keyboard address, 163847-24575 is screen address
@24575
D = A

@0
M = D

@SCREEN
D = A
@1
M = D
(LOOP)
@KBD
D = M
@FILL
D;JGT

@CLEAR
0;JMP

(FILL)
@0
D = M
@1
D = D - M
@LOOP
D;JLT

@1
D=M
A=M
M=-1

@1
M=D+1

@LOOP
0;JMP

(CLEAR)
@SCREEN
D=A
@1
D=D-M
@LOOP
D;JGT

@1
D=M
A=M
M=0

@1
M=D-1

@LOOP
0;JMP
