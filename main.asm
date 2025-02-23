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

input_loop:
    invoke StdOut, addr selectPrompt1
    invoke StdOut, addr selectPrompt2
    invoke StdIn, addr choices, 100

    .if choices == "A" || choices == "a"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call firstYrFirstSemEnroll
        invoke StdOut, addr newline

        call selectToEnrollFirstYrFirstSem

    .elseif choices == "B" || choices == "b"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call firstYrSecondSemEnroll
        invoke StdOut, addr newline

        call selectToEnrollFirstYrSecondSem
        
    .elseif choices == "C" || choices == "c"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call secondYrFirstSemEnroll
        invoke StdOut, addr newline

        call selectToEnrollSecondYrFirstSem

     .elseif choices == "D" || choices == "d"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call secondYrSecondSemEnroll
        invoke StdOut, addr newline

        call selectToEnrollSecondYrSecondSem

     .elseif choices == "E" || choices == "e"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrFirstSemEnroll
        invoke StdOut, addr newline  
        
        call selectToEnrollThirdYrFirstSem

     .elseif choices == "F" || choices == "f"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrSecondSemEnroll
        invoke StdOut, addr newline   

        call selectToEnrollThirdYrSecondSem

     .elseif choices == "G" || choices == "g"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrSummerEnroll
        invoke StdOut, addr newline   

        call selectToEnrollThirdYrSummer

     .elseif choices == "H" || choices == "h"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call fourthYrFirstSemEnroll
        invoke StdOut, addr newline   

        call selectToEnrollFourthYrFirstSem

    .elseif choices == "I" || choices == "i"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call fourthYrSecondSemEnroll
        invoke StdOut, addr newline     

        call selectToEnrollFourthYrSecondSem
    .else
        jmp input_loop
    .endif

    invoke ExitProcess, 0
end start