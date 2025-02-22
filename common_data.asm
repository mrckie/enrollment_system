
.DATA
    enrollSystem db 10, 9, 9, 9, 9, 9, "Student Enrollment System", 10, 10, 0
    officiallyEnrolled db 10, 10, 10, 9, 9, 9, 9, "Congratulations! You are officially enrolled", 10, 10, 0
    studentEval db 10, 9, 9, 9, 9, 9, "Student Evaluation Form", 10, 10, 0
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
	subjectPrompt db 10, 10, 9, "Select the Subject [Letter] to Enroll separated by spaces: ", 0
    newline db 10, 10, 0
    tab db 9, 0
   
    header db 10, 9, "|   Title   |  Unit |                    Description                    |  Pre/Co-requisites  |", 0
    totalUnitsEnrolled dd 0
    tempTotalUnitsEnrolled db 100 dup(?)
    invalidInputtMsg db 10, 10, 9, "Invalid input! Please enter the correct subject letter", 10, 0
    limitedUnitsMsg db 10, 10, 9, "You have reached the maximum number of units!", 10, 0
	
    ; title = 11 (excluded vertical tab) char
    ; unit = 7 (excluded vertical tab) char
    ; description = 51 char (excluded vertical tab)
    ; prerequisites = 21 char (excluded vertical tab)
	; total = 84 (excluded vertical tab) char
    
    totalUnits db 10, 9, "|  Total Units Enrolled: ", 0
    verticalTab db "                                                                   |", 0
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

    ;20 char 
    sub1 db 10, 9, "[A] GE 1               [D] CCE 101            [G] CCE 109            [J] GE 3", 0
    sub2 db 10, 9, "[B] GE 2               [E] GPE 1              [H] GE 7               [K] CS25", 0
    sub3  db 10, 9, "[C] NSTP 1             [F] GE 4               [I] GE 5", 0


    sub4 db 10, 9, "[A] UGE               [D] GPE 2              [G] NSTP 2             [J] GE 6", 0
    sub5 db 10, 9, "[B] GE 5               [E] MTH 101            [H] CCE 107            [K] GE 9", 0
    sub6  db 10, 9, "[C] GE 3               [F] CS 25              [I] GE 8", 0

    sub7 db 10, 9, "[A] CS 3               [D] GPE 3              [G] CST 4              [J] CS 8", 0
    sub8 db 10, 9, "[B] GE 8               [E] MTH 105            [H] CCE 105            ", 0
    sub9 db 10, 9, "[C] GE 6               [F] GE 9               [I] CS 26", 0


    sub10 db 10, 9, "[A] BSM 312            [D] MTH 103            [G] GPE 4              [J] GE 11", 0
    sub11 db 10, 9, "[B] CS 6               [E] HCI 101            [H] CCE 104            [K] GE 15", 0
    sub12 db 10, 9, "[C] BSM 222            [F] CS 8               [I] CST 5", 0

    sub13 db 10, 9, "[A] CSE 10             [D] PHYS 101           [G] CSE 7              [J] UGE 2", 0
    sub14 db 10, 9, "[B] CS 12              [E] BSM 325            [H] GE 15              ", 0
    sub15 db 10, 9, "[C] GE 11              [F] CST 9              [I] GE 20", 0

    sub16 db 10, 9, "[A] CS 15              [D] UGE 2              [G] CS 17              ", 0
    sub17 db 10, 9, "[B] GE 20              [E] PHYS 102           [H] CS 11              ", 0
    sub18 db 10, 9, "[C] CSE 13             [F] CST 14             ", 0

    sub19 db 10, 9, "[A] CS 16              ", 0
    sub20 db 10, 9, "[B] CS 20              ", 0
    
    sub21 db 10, 9, "[A] CS 18              [D] CS 21              ", 0
    sub22 db 10, 9, "[B] CCE 106            [E] CS 24              ", 0
    sub23 db 10, 9, "[C] CAED 500C          [F] CS 19              ", 0

    sub24 db 10, 9, "[A] CS 23              ", 0
    sub25 db 10, 9, "[B] CS 22              ", 0

    subjectPointers1 dd offset ge1, offset ge2, offset nstp1, offset cce101, offset gpe1
                    dd offset ge4, offset cce109, offset ge7, offset ge5, offset ge3, offset cs25
    
    subjectPointers2 dd offset uge1, offset ge5, offset ge3, offset gpe2, offset mth101
                    dd offset cs25, offset nstp2, offset cce107, offset ge8, offset ge6, offset ge9

    subjectPointers3 dd offset cs3, offset ge8, offset ge6, offset gpe3, offset mth105
                    dd offset ge9, offset cst4, offset cce105, offset cs26, offset cs8

    subjectPointers4 dd offset bsm312, offset cs6, offset bsm222, offset mth103, offset hci101
                    dd offset cs8, offset gpe4, offset cce104, offset cst5, offset ge11, offset ge15

    subjectPointers5 dd offset cse10, offset cs12, offset ge11, offset phys101, offset bsm325
                    dd offset cst9, offset cse7, offset ge15, offset ge20, offset uge2

    subjectPointers6 dd offset cs15, offset ge20, offset cse13, offset uge2, offset phys102
                    dd offset cst14, offset cs17, offset cs11

    subjectPointers7 dd offset cs16, offset cs20

    subjectPointers8 dd offset cs18, offset cce106, offset caed500c, offset cs21, offset cs24
                    dd offset cs19

    subjectPointers9 dd offset cs23, offset cs22
    

    choices db 100 dup(?)
    accountNumIn db 100 dup(?)
    studNameIn db 100 dup(?)
    yearIn db 100 dup(?)
    subject db 100 dup(?)
    sub1to3 dd 3, 6, 3, 3, 2, 3, 3, 3, 3, 3, 3 
    sub4to6 dd 6, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3 
    sub7to9 dd 3, 3, 3, 2, 3, 3, 3, 3, 3, 3  
    sub10to12 dd 3, 3, 3, 3, 3, 3, 2, 3, 3, 3, 3  
    sub13to15 dd 3, 3, 3, 4, 3, 3, 3, 3, 3, 3  
    sub16to18 dd 3, 3, 3, 3, 4, 3, 3, 3  
    sub19to20 dd 6, 3  
    sub21to23 dd 3, 3, 3, 3, 4, 3  
    sub24to25 dd 6, 3  
    