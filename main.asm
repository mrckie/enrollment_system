.386
.model flat, stdcall
option casemap: none

include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\kernel32.lib
include tables.asm

.DATA
    enrollSystem db 10, 9, 9, 9, 9, 9, "Student Enrollment System", 10, 10, 0
    accountNum db  9, "Account Number: ", 0
    studName db 9, "Full Name: ", 0
    year db  9, "Year: ", 0
    program db 9, "Program: Bachelor of Science in Computer Science", 0
    department db 10, 9, "Department: College of Computing Education", 0
    selectPrompt db 10, 9, "Select Year and Program: ", 10, 9,
                 "[a] 1st Year / 1st Sem", 10, 9,
                 "[b] 1st Year / 2nd Sem", 10, 9,
                 "[c] 2nd Year / 1st Sem", 10, 9,
                 "[d] 2nd Year / 2nd Sem", 10, 9, 
                 "[e] 3rd Year / 1st Sem", 10, 9, 
                 "[f] 3rd Year / 2nd Sem", 10, 9, 
                 "[g] 4th Year / 1st Sem", 10, 9, 
                 "[h] 4th Year / 2nd Sem", 10, 9, 0
    newline db 10, 10, 0
    tab db 9, 0

.data?
    choices db 100 dup(?)
    accountNumIn db 100 dup(?)
    studNameIn db 100 dup(?)
    yearIn db 100 dup(?)
    subject db 100 dup(?)
.code 


start: 
    invoke ClearScreen

    ; invoke StdOut, addr enrollSystem
    ; invoke StdOut, addr newline

    ; invoke StdOut, addr studName
    ; invoke StdIn, addr studNameIn, 100
    ; invoke StdOut, addr accountNum
    ; invoke StdIn, addr accountNumIn, 100
    ; invoke StdOut, addr year
    ; invoke StdIn, addr yearIn, 100
    ; invoke StdOut, addr program
    ; invoke StdOut, addr department
    

    invoke StdOut, addr newline 
    invoke StdOut, addr newline 
    call firstYrFirstSemTable
    call firstYrSecondSemTable
    call secondYrFirstSemTable
    invoke StdOut, addr newline

    invoke StdOut, addr selectPrompt
    invoke StdIn, addr choices, 100

    .if choices == 'a'
    .endif

    invoke ExitProcess, 0
end start