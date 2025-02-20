
    ; title = 11 (excluded vertical tab) char
    ; unit = 7 (excluded vertical tab) char
    ; description = 51 char (excluded vertical tab)
    ; prerequisites = 21 char (excluded vertical tab)
	; total = 84 (excluded vertical tab) char
.DATA
    studentEval db 10, 9, 9, 9, 9, 9, "Student Evaluation Form", 10, 10, 0

    horLine db 10, 9, "-----------------------------------------------------------------------------------------------", 0
    header db 10, 9, "|   Title   |  Unit |                    Description                    |  Pre/Co-requisites  |", 0
    firstYear1stSem db 10, 9, "|  1st Year / 1st Sem                                                                         |", 0
    ge1 db 10, 9, "|    GE 1   |  3.0  |              UNDERSTANDING THE SELF               |                     |", 0
    ge2 db 10, 9, "|    GE 2   |  6.0  |  PURPOSIVE COMMUNICATION W/ INTERACTIVE LEARNING  |                     |", 0
    nstp1 db 10, 9, "|   NSTP 1  |  3.0  |        NATIONAL SERVICE TRAINING PROGRAM 1        |                     |", 0
    cce101 db 10, 9, "|  CCE 101  |  3.0  |             INTRODUCTION TO COMPUTING             |                     |", 0
    gpe1 db 10, 9, "|   GPE 1   |  2.0  |               MOVEMENT ENHANCEMENT                |                     |", 0
    ge4 db 10, 9, "|    GE 4   |  3.0  |          MATHEMATICS IN THE MODERN WORLD          |                     |", 0
    cce109 db 10, 9, "|  CCE 109  |  3.0  |            FUNDAMENTALS OF PROGRAMMING            |                     |", 0
    ge7 db 10, 9, "|    GE 7   |  3.0  |                  ART APPRECIATION                 |                     |", 0

    firstYear2ndSem db 10, 9, "|  1st Year / 2nd Sem                                                                         |", 0
    uge1 db 10, 9, "|   UGE 1   |  6.0  |               READING COMPREHENSION               |        GE 2         |", 0    
    ge5 db 10, 9, "|    GE 5   |  3.0  |          SCIENCE, TECHNOLOGY AND SOCIETY          |                     |", 0    
    ge3 db 10, 9, "|    GE 3   |  3.0  |              THE CONTEMPORARY WORLD               |                     |", 0    
    gpe2 db 10, 9, "|   GPE 2   |  2.0  |                 FITNESS EXERCISES                 |        GPE 1        |", 0    
    mth101 db 10, 9, "|  MTH 101  |  3.0  |               DIFFERENTIAL CALCULUS               |        GE 4         |", 0    
    cs25 db 10, 9, "|   CS 25   |  3.0  |                DISCRETE STRUCTURES                |                     |", 0    
    nstp2 db 10, 9, "|   NSTP 2  |  3.0  |        NATIONAL SERVICE TRAINING PROGRAM 2        |       NSTP 1        |", 0    
    cce107 db 10, 9, "|  CCE 107  |  3.0  |             INTERMEDIATE PROGRAMMING              |      CCE 109/L      |", 0    
        
 
    secondYear1stSem db 10, 9, "|  2nd Year / 1st Sem                                                                         |", 0
    cs3 db 10, 9, "|    CS 3   |  3.0  |               DISCRETE STRUCTURES 2               |        CS 25        |", 0    
    ge8 db 10, 9, "|    GE 8   |  3.0  |           READINGS IN PHILIPPINE HISTORY          |                     |", 0    
    ge6 db 10, 9, "|    GE 6   |  3.0  |               RIZAL'S LIFE AND WORKS              |                     |", 0    
    gpe3 db 10, 9, "|   GPE 3   |  2.0  |    PHYSICAL ACTIVITIES TOWARDS HEALTH & FITNESS   |        GPE 2        |", 0    
    mth105 db 10, 9, "|  MTH 105  |  3.0  |                 INTEGRAL CALCULUS                 |       MTH 101       |", 0    
    ge9 db 10, 9, "|    GE 9   |  3.0  |               ETHICS (Disciplinal)                |                     |", 0    
    cst4 db 10, 9, "|   CST 4   |  3.0  |              CS PROFESSIONAL TRACK 1              |      CCE 107/L      |", 0    
    cce105 db 10, 9, "|  CCE 105  |  3.0  |          DATA STRUCTURES AND ALGORITHMS           |      CCE 107/L      |", 0    
    cs26 db 10, 9, "|   CS 26   |  3.0  |         SOFTWARE DEVELOPMENT FUNDAMENTALS         |      CCE 107/L      |", 0    


    secondYear2ndSem db 10, 9, "|  2nd Year / 2nd Sem                                                                         |", 0
    bsm312 db 10, 9, "|  BSM 312  |  3.0  |              DIFFERENTIAL EQUATIONS               |       MTH 105       |", 0    
    cs6 db 10, 9, "|    CS 6   |  3.0  |             ALGORITHMS AND COMPLEXITY             |      CCE 105/L      |", 0    
    bsm222 db 10, 9, "|  BSM 222  |  3.0  |                  LINEAR ALGEBRA                   |       MTH 101       |", 0    
    mth103 db 10, 9, "|  MTH 103  |  3.0  |           PROBABILITIES AND STATISTICS            |        GE 4         |", 0    
    hci101 db 10, 9, "|  HCI 101  |  3.0  |            HUMAN COMPUTER INTERACTION             |       CS 26/L       |", 0    
    cs8 db 10, 9, "|    CS 8   |  3.0  |      SOCIAL ISSUES AND PROFESSIONAL PRACTICE      |                     |", 0    
    gpe4 db 10, 9, "|   GPE 4   |  2.0  |   PHYSICAL ACTIVITIES TOWARDS HEALTH & FITNESS    |        GPE 3        |", 0    
    cce104 db 10, 9, "|  CCE 104  |  3.0  |              INFORMATION MANAGEMENT               |      CCE 105/L      |", 0    
    cst5 db 10, 9, "|   CST 5   |  3.0  |              CS PROFESSIONAL TRACK 2              |       CST 4/L       |", 0    


    thirdYear1stSem db 10, 9, "|  3rd Year / 1st Sem                                                                         |", 0   
    cse10 db 10, 9, "|   CSE 10  |  3.0  |            CS PROFESSIONAL ELECTIVE 2             |       CS 6/L        |", 0    
    cs12 db 10, 9, "|   CS 12   |  3.0  |              SOFTWARE ENGINEERING 1               |      CCE 104/L      |", 0    
    ge11 db 10, 9, "|   GE 11   |  3.0  |             THE ENTREPRENEURIAL MIND              |       MTH 101       |", 0    
    phys101 db 10, 9, "|  PHYS 101 |  4.0  |                 COLLEGE PHYSICS 1                 |        GE 4         |", 0    
    bsm325 db 10, 9, "|  BSM 325  |  3.0  |                NUMERICAL ANALYSIS                 |   BSM 222, BSM 312  |", 0    
    cst9 db 10, 9, "|   CST 9   |  3.0  |              CS PROFESSIONAL TRACK 3              |       CST 5/L       |", 0    
    cse7 db 10, 9, "|   CSE 7   |  3.0  |              PROFESSIONAL ELECTIVE 1              |      CCE 104/L      |", 0    
    ge15 db 10, 9, "|   GE 15   |  3.0  |               ENVIRONMENTAL SCIENCE               |                     |", 0    

    
    thirdYear2ndSem db 10, 9, "|  3rd Year / 2nd Sem                                                                         |", 0   
    cs15 db 10, 9, "|   CS 15   |  3.0  |               PROGRAMMING LANGUAGES               |       CST 4/L       |", 0    
    ge20 db 10, 9, "|   GE 20   |  3.0  |                READING VISUAL ARTS                |                     |", 0    
    cse13 db 10, 9, "|   CSE 13  |  3.0  |            CS PROFESSIONAL ELECTIVE 3             |       CSE 10/L      |", 0    
    uge2 db 10, 9, "|   UGE 2   |  3.0  |        TECHNICAL WRITING IN THE DISCIPLINE        |        UGE 1        |", 0    
    phys102 db 10, 9, "|  PHYS 102 |  4.0  |                 COLLEGE PHYSICS 2                 |      PHYS 101/L     |", 0    
    cst14 db 10, 9, "|   CST 14  |  3.0  |              CS PROFESSIONAL TRACK 4              |       CST 9/L       |", 0    
    cs17 db 10, 9, "|   CS 17   |  3.0  |              SOFTWARE ENGINEERING 2               |       CS 12/L       |", 0    
    cs11 db 10, 9, "|   CS 11   |  3.0  |           ARCHITECTURE AND ORGANIZATION           |        CS 3/L       |", 0    


; feb 19, in physics
; will be on mondy

    thirdYearSummer db 10, 9, "|  3rd Year / Summer                                                                          |", 0   
    cs16 db 10, 9, "|   CS 16   |  6.0  |                     PRACTICUM                     |   CS 17/L, CS 11/L  |", 0    
    cs20 db 10, 9, "|   CS 20   |  3.0  |              CS PROFESSIONAL TRACK 5              |       CST 14/L      |", 0    

   
    fourthYear1stSem db 10, 9, "|  4th Year / 1st Sem                                                                         |", 0   
    cs18 db 10, 9, "|   CS 18   |  3.0  |                CS THESIS WRITING 1                |       CS 17/L       |", 0    
    cce106 db 10, 9, "|  CCE 106  |  3.0  |    APPLICATIONS DEV'T AND EMERGING TECHNOLOGIES   |       CST 9/L       |", 0    
    caed500c db 10, 9, "| CAED 500C |  3.0  |         CAREER AND PERSONALITY DEVELOPMENT        |  4th Year Standing  |", 0    
    cs21 db 10, 9, "|   CS 21   |  3.0  |            NETWORKS AND COMMUNICATIONS            |       CS 11/L       |", 0    
    cs24 db 10, 9, "|   CS 24   |  4.0  |              CS PROFESSIONAL TRACK 6              |       CS 20/L       |", 0    
    cs19 db 10, 9, "|   CS 19   |  3.0  |                 OPERATING SYSTEMS                 |       CS 11/L       |", 0    
; CS 18	3.0	CS THESIS WRITING 1	CS 17/L
; CCE 106	3.0	APPLICATIONS DEV'T AND EMERGING TECHNOLOGIES	CST 9/L
; CAED 500C	3.0	CAREER AND PERSONALITY DEVELOPMENT	4th Year Standing
; CS 21	3.0	NETWORKS AND COMMUNICATIONS	CS 11/L
; CS 24	3.0	CS PROFESSIONAL TRACK 6	CS 20/L
; CS 19	4.0	OPERATING SYSTEMS	CS 11/L
    fourthYear2ndSem db 10, 9, "|  4th Year / 2nd Sem                                                                         |", 0   
    cs23 db 10, 9, "|  CS 23  |  6.0  |                 CS THESIS WRITING 2                 |       CS 18/L       |", 0    
    cs22 db 10, 9, "|  CS 22  |  3.0  |          INFORMATION ASSURANCE AND SECURITY         |       CS 21/L       |", 0    
; CS 23	6.0	CS THESIS WRITING 2	CS 18/L
; CS 22	3.0	INFORMATION ASSURANCE AND SECURITY	CS 21/L


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
    invoke StdOut, addr bsm312
    invoke StdOut, addr cs6
    invoke StdOut, addr bsm222
    invoke StdOut, addr mth103
    invoke StdOut, addr hci101
    invoke StdOut, addr cs8
    invoke StdOut, addr gpe4
    invoke StdOut, addr cce104
    invoke StdOut, addr cst5
    invoke StdOut, addr horLine
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
    invoke StdOut, addr horLine
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
    invoke StdOut, addr horLine
    ret
thirdYrSecondSemTable ENDP

thirdYrSummerTable PROC
    invoke StdOut, addr thirdYearSummer
    invoke StdOut, addr horLine
    invoke StdOut, addr cs16
    invoke StdOut, addr cs20
    invoke StdOut, addr horLine
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
    invoke StdOut, addr horLine
    ret
fourthYrFirstSemTable ENDP

fourthYrSecondSemTable PROC
    invoke StdOut, addr fourthYear2ndSem
    invoke StdOut, addr horLine
    invoke StdOut, addr cs23
    invoke StdOut, addr cs22
    invoke StdOut, addr horLine
    ret
fourthYrSecondSemTable ENDP
