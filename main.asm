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

    enroll_loop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  ; Initialize total units enrolled to 0
        mov esi, offset subject    ; Point to the input buffer

        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine

        ; Parse the input
    parse_input:
        mov al, [esi]
        inc esi

        ; Check for end of input
        cmp al, 0
        je check_unit_limit

        ; Check for space (skip spaces)
        cmp al, ' '
        je parse_input

        ; Convert letter to uppercase
        and al, 0DFh  ; Convert to uppercase (e.g., 'a' → 'A')

        ; Validate the letter (A-K)
        cmp al, 'A'
        jl invalid_input
        cmp al, 'K'
        jg invalid_input

        ; Convert letter to index (A=0, B=1, ..., K=10)
        sub al, 'A'
        movzx eax, al  ; Zero-extend AL to EAX

        ; Retrieve and add the corresponding subject units
        mov edi, offset sub1to3
        mov ecx, [edi + eax * 4]  ; Get units
        add totalUnitsEnrolled, ecx  ; Add to total units

        ; Retrieve and display the corresponding subject
        mov edi, [subjectPointers1 + eax * 4]  ; Lookup subject string
        invoke StdOut, edi  ; Display the subject description

        ; Move to next character
        jmp parse_input

    invalid_input:
        invoke StdOut, addr invalidInputtMsg
        jmp enroll_loop  ; Ask for input again

    check_unit_limit:
        ; Check if total units exceed 26
        cmp totalUnitsEnrolled, 26
        jg unit_limit_exceeded

        ; Display the total units enrolled
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  ; Convert total units to string
        invoke StdOut, addr tempTotalUnitsEnrolled  ; Display total units
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke ExitProcess, 0

    unit_limit_exceeded:
        invoke StdOut, addr limitedUnitsMsg
        jmp enroll_loop  ; Ask for input again

    .elseif choices == "B" || choices == "b"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call firstYrSecondSemEnroll
        invoke StdOut, addr newline
    .elseif choices == "C" || choices == "c"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call secondYrFirstSemEnroll
        invoke StdOut, addr newline
     .elseif choices == "D" || choices == "d"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call secondYrSecondSemEnroll
        invoke StdOut, addr newline
     .elseif choices == "E" || choices == "e"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrFirstSemEnroll
        invoke StdOut, addr newline  
     .elseif choices == "F" || choices == "f"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrSecondSemEnroll
        invoke StdOut, addr newline   
     .elseif choices == "G" || choices == "g"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call thirdYrSummerEnroll
        invoke StdOut, addr newline   
     .elseif choices == "H" || choices == "h"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call fourthYrFirstSemEnroll
        invoke StdOut, addr newline   
    .elseif choices == "I" || choices == "i"
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        call fourthYrSecondSemEnroll
        invoke StdOut, addr newline     
    .else
        jmp input_loop
    .endif

    invoke ExitProcess, 0
end start