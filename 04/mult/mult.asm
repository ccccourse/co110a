// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@2       //相加結果歸零
M=0

@1       //相加次數放入D
D=M

@14      //若相加次數為0，跳出
D;JEQ

@0       //被相加數放入D    <-------------
D=M                                 //  |
                                    //  |
@2       //相加結果加入被相加數           |
M=M+D                               //  |
                                    //  |
@1       //相加次數-1                    |
M=M-1                               //  |
                                    //  |
D=M      //相加次數放入D                 |
                                    //  |
@6                                  //  |
D;JGT    //相加次數>0則跳回---------------