.386
.model flat, stdcall
option casemap: none

include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\kernel32.lib
include tables.asm
include enroll.asm
include prospectus.asm

.code


start:
    invoke ClearScreen    
    invoke StdOut, addr enrollSystem
    invoke StdOut, addr newline

    invoke StdOut, addr studName
    invoke StdIn, addr studNameIn, 100
    invoke StdOut, addr accountNum
    invoke StdIn, addr accountNumIn, 100
    invoke StdOut, addr year
    invoke StdIn, addr yearIn, 100
    invoke StdOut, addr program
    invoke StdOut, addr department

    call prospectus
    
input_loop:

    invoke StdOut, addr selectPrompt1
    invoke StdOut, addr selectPrompt2
    invoke StdIn, addr choices, 100

    .if choices == "A" || choices == "a"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call firstYrFirstSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline


    .elseif choices == "B" || choices == "b"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call firstYrSecondSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline
        
    .elseif choices == "C" || choices == "c"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call secondYrFirstSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline


     .elseif choices == "D" || choices == "d"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call secondYrSecondSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

     .elseif choices == "E" || choices == "e"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrFirstSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

     .elseif choices == "F" || choices == "f"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrSecondSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

     .elseif choices == "G" || choices == "g"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrSummerTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

     .elseif choices == "H" || choices == "h"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call fourthYrFirstSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

    .elseif choices == "I" || choices == "i"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call fourthYrSecondSemTable
        invoke StdOut, addr horLine
        invoke StdOut, addr newline
    .else
        jmp input_loop
    .endif

    invoke ExitProcess, 0
end start