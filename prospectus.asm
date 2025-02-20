
.CODE

prospectus PROC
	invoke StdOut, addr newline 
    invoke StdOut, addr newline 
    invoke StdOut, addr studentEval
    invoke StdOut, addr horLine
    invoke StdOut, addr header
    invoke StdOut, addr horLine
    call firstYrFirstSemTable
    invoke StdOut, addr horLine
    call firstYrSecondSemTable
    invoke StdOut, addr horLine
    call secondYrFirstSemTable
    invoke StdOut, addr horLine
    call secondYrSecondSemTable
    invoke StdOut, addr horLine
    call thirdYrFirstSemTable
    invoke StdOut, addr horLine
    call thirdYrSecondSemTable
    invoke StdOut, addr horLine
    call thirdYrSummerTable
    invoke StdOut, addr horLine
    call fourthYrFirstSemTable
    invoke StdOut, addr horLine
    call fourthYrSecondSemTable
    invoke StdOut, addr horLine
    invoke StdOut, addr newline
	ret
prospectus ENDP