.386
.model flat, stdcall
option casemap: none

include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\kernel32.lib
include tables.asm

.DATA
    studentEval db 10, 9, 9, 9, 9, 9, "Student Evaluation Form", 10, 10, 0
    accountNum db 10, 9, "Account Number: 53120", 0
    studName db 10, 9, "Full Name: Gester Rey Z. Montebon", 0
    yearProgram db 10, 9, "Year/Program: 3rd Year Bachelor of Science in Computer Science", 0
    selectPrompt db 10, 9, "Select Year and Program: ", 10, 9,
                 "[a] 1st Year / 1st Sem", 10, 9,
                 "[b] 1st Year / 2nd Sem", 10, 9,
                 "[c] 2nd Year / 1st Sem", 10, 9,
                 "[d] 2nd Year / 2nd Sem", 10, 9, 
                 "[e] 3rd Year / 1st Sem", 10, 9, 
                 "[f] 3rd Year / 2nd Sem", 10, 9, 
                 "[g] 4th Year / 1st Sem", 10, 9, 
                 "[h] 4th Year / 2nd Sem", 10, 9, 0
    newline db 10, 9, 0

.data?
    choices db 100 dup(?)
    subject db 100 dup(?)
.code 


start: 
    invoke ClearScreen

    invoke StdOut, addr studentEval
    invoke StdOut, addr accountNum
    invoke StdOut, addr studName
    invoke StdOut, addr yearProgram

    invoke StdOut, addr newline 
    call firstYrFirstSemTable
    invoke StdOut, addr newline

    invoke StdOut, addr selectPrompt
    invoke StdIn, addr choices, 100

    .if choices == 'a'
    .endif

    invoke ExitProcess, 0
end start