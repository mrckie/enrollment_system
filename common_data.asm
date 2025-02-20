
.DATA
    enrollSystem db 10, 9, 9, 9, 9, 9, "Student Enrollment System", 10, 10, 0
    accountNum db  9, "Account Number: ", 0
    studName db 9, "Full Name: ", 0
    year db  9, "Year: ", 0
    program db 9, "Program: Bachelor of Science in Computer Science", 0
    department db 10, 9, "Department: College of Computing Education", 0
    selectPrompt1 db 10, 9, "Select Year and Semester: ", 10, 9,
                 "[a] 1st Year / 1st Sem", 10, 9,
                 "[b] 1st Year / 2nd Sem", 10, 9,
                 "[c] 2nd Year / 1st Sem", 10, 9,
                 "[d] 2nd Year / 2nd Sem", 10, 9, 
                 "[e] 3rd Year / 1st Sem", 10, 9, 
                 "[f] 3rd Year / 2nd Sem", 10, 9, 
                 "[g] 3rd Year / Summer", 10, 9, 
                 "[h] 4th Year / 1st Sem", 10, 9, 0
	selectPrompt2 db "[i] 4th Year / 2nd Sem", 10, 9, 0
	subjectPrompt db 10, 9, "Select the Corresponding Subject [Number] to Enroll: ", 0
    newline db 10, 10, 0
    tab db 9, 0
    studentEval db 10, 9, 9, 9, 9, 9, "Student Evaluation Form", 10, 10, 0
    header db 10, 9, "|   Title   |  Unit |                    Description                    |  Pre/Co-requisites  |", 0
	
    ; title = 11 (excluded vertical tab) char
    ; unit = 7 (excluded vertical tab) char
    ; description = 51 char (excluded vertical tab)
    ; prerequisites = 21 char (excluded vertical tab)
	; total = 84 (excluded vertical tab) char
    
    totalUnits db 10, 9, "|  Total Units                                                                                |", 0
    horLine db 10, 9, "-----------------------------------------------------------------------------------------------", 0
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


    fourthYear2ndSem db 10, 9, "|  4th Year / 2nd Sem                                                                         |", 0   
    cs23 db 10, 9, "|  CS 23  |  6.0  |                 CS THESIS WRITING 2                 |       CS 18/L       |", 0    
    cs22 db 10, 9, "|  CS 22  |  3.0  |          INFORMATION ASSURANCE AND SECURITY         |       CS 21/L       |", 0    


    GE1 db "1. GE 1", 0
    GE2 db "2. GE 2", 0
    NSTP1 db "3. NSTP 1", 0
    CCE101 db "4. CCE 101", 0
    GPE1 db "5. GPE 1", 0
    GE4 db "6. GE 4", 0
    CCE109 db "7. CCE 109", 0
    GE7 db "8. GE 7", 0
    GE5 db "9. GE 5", 0
    GE3 db "10. GE 3", 0
    CS25 db "11. CS 25", 0
    