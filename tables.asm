include common_data.asm

.CODE

firstYrFirstSemTable PROC
    invoke StdOut, addr firstYear1stSem
	invoke StdOut, addr horLine
    invoke StdOut, addr ge1
    invoke StdOut, addr ge2
    invoke StdOut, addr nstp1
    invoke StdOut, addr cce101
    invoke StdOut, addr gpe1
    invoke StdOut, addr ge4
    invoke StdOut, addr cce109
    invoke StdOut, addr ge7
    ret
firstYrFirstSemTable ENDP

firstYrSecondSemTable PROC
    invoke StdOut, addr firstYear2ndSem
    invoke StdOut, addr horLine
    invoke StdOut, addr uge1
    invoke StdOut, addr ge5
    invoke StdOut, addr ge3
    invoke StdOut, addr gpe2
    invoke StdOut, addr mth101
    invoke StdOut, addr cs25
    invoke StdOut, addr nstp2
    invoke StdOut, addr cce107
    ret
firstYrSecondSemTable ENDP

secondYrFirstSemTable PROC
    invoke StdOut, addr secondYear1stSem
    invoke StdOut, addr horLine
    invoke StdOut, addr cs3
    invoke StdOut, addr ge8
    invoke StdOut, addr ge6
    invoke StdOut, addr gpe3
    invoke StdOut, addr mth105
    invoke StdOut, addr ge9
    invoke StdOut, addr cst4
    invoke StdOut, addr cce105
    invoke StdOut, addr cs26
    ret
secondYrFirstSemTable ENDP

secondYrSecondSemTable PROC
    invoke StdOut, addr secondYear2ndSem
    invoke StdOut, addr horLine
    invoke StdOut, addr bsm312
    invoke StdOut, addr cs6
    invoke StdOut, addr bsm222
    invoke StdOut, addr mth103
    invoke StdOut, addr hci101
    invoke StdOut, addr cs8
    invoke StdOut, addr gpe4
    invoke StdOut, addr cce104
    invoke StdOut, addr cst5
    ret
secondYrSecondSemTable ENDP

thirdYrFirstSemTable PROC
    invoke StdOut, addr thirdYear1stSem
    invoke StdOut, addr horLine
    invoke StdOut, addr cse10
    invoke StdOut, addr cs12
    invoke StdOut, addr ge11
    invoke StdOut, addr phys101
    invoke StdOut, addr bsm325
    invoke StdOut, addr cst9
    invoke StdOut, addr cse7
    invoke StdOut, addr ge15
    ret
thirdYrFirstSemTable ENDP

thirdYrSecondSemTable PROC
    invoke StdOut, addr thirdYear2ndSem
    invoke StdOut, addr horLine
    invoke StdOut, addr cs15
    invoke StdOut, addr ge20
    invoke StdOut, addr cse13
    invoke StdOut, addr uge2
    invoke StdOut, addr phys102
    invoke StdOut, addr cst14
    invoke StdOut, addr cs17
    invoke StdOut, addr cs11
    ret
thirdYrSecondSemTable ENDP

thirdYrSummerTable PROC
    invoke StdOut, addr thirdYearSummer
    invoke StdOut, addr horLine
    invoke StdOut, addr cs16
    invoke StdOut, addr cs20
    ret
thirdYrSummerTable ENDP

fourthYrFirstSemTable PROC
    invoke StdOut, addr fourthYear1stSem
    invoke StdOut, addr horLine
    invoke StdOut, addr cs18
    invoke StdOut, addr cce106
    invoke StdOut, addr caed500c
    invoke StdOut, addr cs21
    invoke StdOut, addr cs24
    invoke StdOut, addr cs19
    ret
fourthYrFirstSemTable ENDP

fourthYrSecondSemTable PROC
    invoke StdOut, addr fourthYear2ndSem
    invoke StdOut, addr horLine
    invoke StdOut, addr cs23
    invoke StdOut, addr cs22
    ret
fourthYrSecondSemTable ENDP
