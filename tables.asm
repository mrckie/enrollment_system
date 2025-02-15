
    ; title = 9 (excluded vertical tab) char
    ; unit = 7 (excluded vertical tab) char
    ; description = 51 char (excluded vertical tab)
    ; prerequisites = 17 char (excluded vertical tab)
	; total = 84 (excluded vertical tab) char
.DATA
    horLine db 10, 9, "-----------------------------------------------------------------------------------------", 0
    header db 10, 9, "|  Title  |  Unit |                    Description                    |  Prerequisites  |", 0
    firstYear1stSem db 10, 9, "|  1st Year / 1st Sem                                                                   |", 0
    ge1 db 10, 9, "|   GE1   |  3.0  |              UNDERSTANDING THE SELF               |                 |", 0
    ge2 db 10, 9, "|   GE2   |  3.0  |  PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING  |                 |", 0
.CODE

firstYrFirstSemTable PROC
    invoke StdOut, addr horLine
    invoke StdOut, addr header
    invoke StdOut, addr horLine
    invoke StdOut, addr firstYear1stSem
	invoke StdOut, addr horLine
    invoke StdOut, addr ge1
    invoke StdOut, addr ge2
    invoke StdOut, addr horLine
    ret
firstYrFirstSemTable ENDP