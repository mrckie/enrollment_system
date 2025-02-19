
    ; title = 9 (excluded vertical tab) char
    ; unit = 7 (excluded vertical tab) char
    ; description = 51 char (excluded vertical tab)
    ; prerequisites = 21 char (excluded vertical tab)
	; total = 84 (excluded vertical tab) char
.DATA
    studentEval db 10, 9, 9, 9, 9, 9, "Student Evaluation Form", 10, 10, 0

    horLine db 10, 9, "---------------------------------------------------------------------------------------------", 0
    header db 10, 9, "|  Title  |  Unit |                    Description                    |  Pre/Co-requisites  |", 0
    firstYear1stSem db 10, 9, "|  1st Year / 1st Sem                                                                       |", 0
    ge1 db 10, 9, "|   GE 1  |  3.0  |              UNDERSTANDING THE SELF               |                     |", 0
    ge2 db 10, 9, "|   GE 2  |  6.0  |  PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING  |                     |", 0
    nstp1 db 10, 9, "|  NSTP1  |  3.0  |        NATIONAL SERVICE TRAINING PROGRAM 1        |                     |", 0
    cce101 db 10, 9, "| CCE 101 |  3.0  |             INTRODUCTION TO COMPUTING             |                     |", 0
    gpe1 db 10, 9, "|  GPE 1  |  2.0  |               MOVEMENT ENHANCEMENT                |                     |", 0
    ge4 db 10, 9, "|   GE 4  |  3.0  |          MATHEMATICS IN THE MODERN WORLD          |                     |", 0
    cce109 db 10, 9, "| CCE 109 |  3.0  |            FUNDAMENTALS OF PROGRAMMING            |                     |", 0
    ge7 db 10, 9, "|   GE 7  |  3.0  |                  ART APPRECIATION                 |                     |", 0

    firstYear2ndSem db 10, 9, "|  1st Year / 2nd Sem                                                                       |", 0
    uge1 db 10, 9, "|  UGE 1  |  6.0  |               READING COMPREHENSION               |        GE 2         |", 0    
    ge5 db 10, 9, "|  GE 5   |  3.0  |          SCIENCE, TECHNOLOGY AND SOCIETY          |                     |", 0    
    ge3 db 10, 9, "|  GE 3   |  3.0  |              THE CONTEMPORARY WORLD               |                     |", 0    
    gpe2 db 10, 9, "|  GPE 2  |  2.0  |                 FITNESS EXERCISES                 |        GPE 1        |", 0    
    mth101 db 10, 9, "| MTH 101 |  3.0  |               DIFFERENTIAL CALCULUS               |        GE 4         |", 0    
    cs25 db 10, 9, "|  CS 25  |  3.0  |                DISCRETE STRUCTURES                |                     |", 0    
    nstp2 db 10, 9, "|  NSTP 2 |  3.0  |        NATIONAL SERVICE TRAINING PROGRAM 2        |       NSTP 1        |", 0    
    cce107 db 10, 9, "| CCE 107 |  3.0  |             INTERMEDIATE PROGRAMMING              |      CCE 109/L      |", 0    
        

    secondYear1stSem db 10, 9, "|  2nd Year / 1st Sem                                                                       |", 0
    cs3 db 10, 9, "|  CS 3   |  3.0  |               DISCRETE STRUCTURES 2               |        CS 25        |", 0    
    ge8 db 10, 9, "|  GE 8   |  3.0  |           READINGS IN PHILIPPINE HISTORY          |                     |", 0    
    ge6 db 10, 9, "|  GE 6   |  3.0  |               RIZAL'S LIFE AND WORKS              |                     |", 0    
    gpe3 db 10, 9, "|  GPE 3  |  2.0  |    PHYSICAL ACTIVITIES TOWARDS HEALTH & FITNESS   |        GPE 2        |", 0    
    mth105 db 10, 9, "| MTH 105 |  3.0  |                 INTEGRAL CALCULUS                 |       MTH 101       |", 0    
    ge9 db 10, 9, "|  GE 9   |  3.0  |               ETHICS (Disciplinal)                |                     |", 0    
    cst4 db 10, 9, "|  CST 4  |  3.0  |              CS PROFESSIONAL TRACK 1              |      CCE 107/L      |", 0    
    cce105 db 10, 9, "| CCE 105 |  3.0  |          DATA STRUCTURES AND ALGORITHMS           |      CCE 107/L      |", 0    
    cs26 db 10, 9, "|  CS 26  |  3.0  |         SOFTWARE DEVELOPMENT FUNDAMENTALS         |      CCE 107/L      |", 0    


    secondYear2ndSem db 10, 9, "|  2nd Year / 2nd Sem                                                                       |", 0
    cs3 db 10, 9, "|  CS 3   |  3.0  |               DISCRETE STRUCTURES 2               |        CS 25        |", 0    
    ge8 db 10, 9, "|  GE 8   |  3.0  |           READINGS IN PHILIPPINE HISTORY          |                     |", 0    
    ge6 db 10, 9, "|  GE 6   |  3.0  |               RIZAL'S LIFE AND WORKS              |                     |", 0    
    gpe3 db 10, 9, "|  GPE 3  |  2.0  |    PHYSICAL ACTIVITIES TOWARDS HEALTH & FITNESS   |        GPE 2        |", 0    
    mth105 db 10, 9, "| MTH 105 |  3.0  |                 INTEGRAL CALCULUS                 |       MTH 101       |", 0    
    ge9 db 10, 9, "|  GE 9   |  3.0  |               ETHICS (Disciplinal)                |                     |", 0    
    cst4 db 10, 9, "|  CST 4  |  3.0  |              CS PROFESSIONAL TRACK 1              |      CCE 107/L      |", 0    
    cce105 db 10, 9, "| CCE 105 |  3.0  |          DATA STRUCTURES AND ALGORITHMS           |      CCE 107/L      |", 0    
    cs26 db 10, 9, "|  CS 26  |  3.0  |         SOFTWARE DEVELOPMENT FUNDAMENTALS         |      CCE 107/L      |", 0    

    thirdYear1stSem db 10, 9, "|  3rd Year / 1st Sem                                                                       |", 0   
    thirdYear2ndSem db 10, 9, "|  3rd Year / 2nd Sem                                                                       |", 0   
    fourthYear1stSem db 10, 9, "|  4th Year / 1st Sem                                                                       |", 0   
    fourthYear2ndSem db 10, 9, "|  4th Year / 2nd Sem                                                                       |", 0   
; CS 3	3.0	DISCRETE STRUCTURES 2	CS 25
; GE 8	3.0	READINGS IN PHILIPPINE HISTORY	
; 	GE 6	3.0	RIZAL'S LIFE AND WORKS	
; 	GPE 3	2.0	PHYSICAL ACTIVITIES TOWARDS HEALTH & FITNESS	GPE 2
; 	MTH 105	3.0	INTEGRAL CALCULUS	MTH 101
; 	GE 9	3.0	ETHICS (Disciplinal)	
; 	CST 4	3.0	CS PROFESSIONAL TRACK 1	CCE 107/L
; 	CCE 105	3.0	DATA STRUCTURES AND ALGORITHMS	CCE 107/L
; 	CS 26	3.0	SOFTWARE DEVELOPMENT FUNDAMENTALS	CCE 107/L

.CODE

firstYrFirstSemTable PROC
    invoke StdOut, addr studentEval
    invoke StdOut, addr horLine
    invoke StdOut, addr header
    invoke StdOut, addr horLine
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
    invoke StdOut, addr horLine
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
    invoke StdOut, addr horLine
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
    invoke StdOut, addr horLine
    ret
secondYrFirstSemTable ENDP

secondYrSecondSemTable PROC
    invoke StdOut, addr secondYear2ndSem
    invoke StdOut, addr horLine
    ; code here
    invoke StdOut, addr horLine
    ret
secondYrSecondSemTable ENDP

thirdYrFirstSemTable PROC
    invoke StdOut, addr thirdYear1stSem
    invoke StdOut, addr horLine
    ; code here
    invoke StdOut, addr horLine
    ret
thirdYrFirstSemTable ENDP

thirdYrSecondSemTable PROC
    invoke StdOut, addr thirdYear2ndSem
    invoke StdOut, addr horLine
    ; code here
    invoke StdOut, addr horLine
    ret
thirdYrSecondSemTable ENDP

fourthYrFirstSemTable PROC
    invoke StdOut, addr fourthYear1stSem
    invoke StdOut, addr horLine
    ; code here
    invoke StdOut, addr horLine
    ret
fourthYrFirstSemTable ENDP

fourthYrSecondSemTable PROC
    invoke StdOut, addr fourthYear2ndSem
    invoke StdOut, addr horLine
    ; code here
    invoke StdOut, addr horLine
    ret
fourthYrSecondSemTable ENDP
