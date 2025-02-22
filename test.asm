.386
.model flat, stdcall
option casemap: none

include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\kernel32.lib

.data
    horLine         db "==============================================", 10, 13, 0
    header          db "Subject Enrollment System", 10, 13, 0
    subjectPrompt   db "Enter subjects (1-11) separated by spaces: ", 0
    invalid         db "Invalid input! Please enter numbers from 1 to 11.", 10, 13, 0
    totalUnits      db "Total Units Enrolled: ", 0
    newline         db 10, 13, 0

    subject         db 50 dup(0)  ; Buffer for user input
    tempTotalUnitsEnrolled db 20 dup(0)  ; Buffer for total units string

    totalUnitsEnrolled dd 0  ; Variable to store total units

    ; Subject descriptions
    ge1     db "GE 1 - Subject 1", 0
    ge2     db "GE 2 - Subject 2", 0
    nstp1   db "NSTP 1 - Subject 3", 0
    cce101  db "CCE 101 - Subject 4", 0
    gpe1    db "GPE 1 - Subject 5", 0
    ge4     db "GE 4 - Subject 6", 0
    cce109  db "CCE 109 - Subject 7", 0
    ge7     db "GE 7 - Subject 8", 0
    ge5     db "GE 5 - Subject 9", 0
    ge3     db "GE 3 - Subject 10", 0
    cs25    db "CS 25 - Subject 11", 0

    ; Array of subject descriptions (pointers to strings)
    subjectPointers dd offset ge1, offset ge2, offset nstp1, offset cce101, offset gpe1
                    dd offset ge4, offset cce109, offset ge7, offset ge5, offset ge3, offset cs25

    ; Array of subject units
    sub1to3 dd 3, 4, 3, 4, 3, 4, 3, 4, 3, 4, 3  ; Units for subjects 1-11

.code
start:
    ; Display header
    invoke StdOut, addr horLine
    invoke StdOut, addr header
    invoke StdOut, addr horLine

    ; Prompt for subjects
    invoke StdOut, addr subjectPrompt
    invoke StdIn, addr subject, sizeof subject

    ; Initialize total units enrolled
    mov totalUnitsEnrolled, 0

    ; Parse the input
    mov esi, offset subject  ; Point to the input buffer

parse_input:
    ; Skip leading spaces
    skip_spaces:
        mov al, [esi]
        cmp al, ' '
        je skip_next
        cmp al, 0
        je display_results

    ; Convert character to number
    sub al, '0'
    cmp al, 1
    jl invalid_input
    cmp al, 11  ; Adjust if adding more subjects
    jg invalid_input

    ; Convert al to full register and calculate index
    movzx eax, al   ; Zero-extend al to eax
    dec eax         ; Convert to 0-based index


    ; Retrieve and add the corresponding subject units
    mov ecx, [sub1to3 + eax * 4]  ; Get units
    add totalUnitsEnrolled, ecx  ; Add to total units

    ; Retrieve and display the corresponding subject
    mov edi, [subjectPointers + eax * 4]  ; Lookup subject string
    invoke StdOut, edi  ; Display the subject description

    ; Move to next character
skip_next:
    inc esi
    jmp parse_input

invalid_input:
    invoke StdOut, addr invalid
    invoke ExitProcess, 0  

display_results:
    ; Display the total units enrolled
    invoke StdOut, addr totalUnits
    invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  ; Convert total units to string
    invoke StdOut, addr tempTotalUnitsEnrolled  ; Display total units
    invoke StdOut, addr newline

    ; Exit the program
    invoke ExitProcess, 0

end start