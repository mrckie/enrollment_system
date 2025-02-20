.CODE

firstYrFirstSemEnroll PROC
    call firstYrFirstSemTable
    invoke StdOut, addr ge5
    invoke StdOut, addr ge3
    invoke StdOut, addr cs25
    invoke StdOut, addr horLine
    ret
firstYrFirstSemEnroll ENDP

firstYrSecondSemEnroll PROC
    call firstYrSecondSemTable
    invoke StdOut, addr ge8
    invoke StdOut, addr ge6
    invoke StdOut, addr ge9
    invoke StdOut, addr horLine
    ret
firstYrSecondSemEnroll ENDP

secondYrFirstSemEnroll PROC
    call secondYrFirstSemTable
    invoke StdOut, addr cs8
    invoke StdOut, addr horLine
    ret
secondYrFirstSemEnroll ENDP

secondYrSecondSemEnroll PROC
    call secondYrSecondSemTable
    invoke StdOut, addr ge11
    invoke StdOut, addr ge15
    invoke StdOut, addr horLine
    ret
secondYrSecondSemEnroll ENDP

thirdYrFirstSemEnroll PROC
    call thirdYrFirstSemTable
    invoke StdOut, addr ge20
    invoke StdOut, addr uge2
    invoke StdOut, addr horLine
    ret
thirdYrFirstSemEnroll ENDP

thirdYrSecondSemEnroll PROC
    call thirdYrSecondSemTable
    invoke StdOut, addr horLine
    ret
thirdYrSecondSemEnroll ENDP

thirdYrSummerEnroll PROC
    call thirdYrSummerTable
    invoke StdOut, addr horLine
    ret
thirdYrSummerEnroll ENDP

fourthYrFirstSemEnroll PROC
    call fourthYrFirstSemTable
    invoke StdOut, addr horLine
    ret
fourthYrFirstSemEnroll ENDP

fourthYrSecondSemEnroll PROC
    call fourthYrSecondSemTable
    invoke StdOut, addr horLine
    ret
fourthYrSecondSemEnroll ENDP


totalUnitsEnrolled PROC
	invoke StdOut, addr horLine
	invoke StdOut, addr totalUnits
	invoke StdOut, addr horLine
	ret
totalUnitsEnrolled ENDP

selectToEnrollFirstYrFirstSem PROC
	invoke StdOut, addr horLine
	invoke StdOut, addr header
	invoke StdOut, addr horLine

	invoke StdOut, addr "1. GE 1"
    invoke StdOut, addr "2. GE 2"
    invoke StdOut, addr "3. NSTP 1"
    invoke StdOut, addr "4. CCE 101"
    invoke StdOut, addr "5. GPE 1"
    invoke StdOut, addr "6. GE 4"
    invoke StdOut, addr "7. CCE 109"
    invoke StdOut, addr "8. GE 7"
    invoke StdOut, addr "9. GE 5"
    invoke StdOut, addr "10. GE 3"
    invoke StdOut, addr "11. CS 25"


	.if subject == "1"
        invoke StdOut, addr ge1
        call totalUnitsEnrolled
    .endif
    .if subject == "2"
        invoke StdOut, addr ge2
    .endif
	ret
	invoke StdOut, newline
selectToEnrollFirstYrFirstSem ENDP