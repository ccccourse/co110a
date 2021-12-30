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
//input 24576  
//screen 16384 ~ 24576   8192
//JEQ if out = 0 jump

@8192
M = A

@24576
D = M

@16
D;JEQ

@8192   //black
D = M
M = M - 1
@0
D;JEQ
@16384
A = D + A
M = -1
@6
0;JMP

@8192   //white
D = M
M = M - 1
@0
D;JEQ
@16384
A = D + A
M = 0
@16
0;JMP