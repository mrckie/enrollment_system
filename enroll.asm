
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



selectToEnrollFirstYrFirstSem PROC
    invoke StdOut, addr sub1
    invoke StdOut, addr sub2
    invoke StdOut, addr sub3


    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  ; Initialize total units enrolled to 0
        mov esi, offset subject    ; Point to the input buffer
        xor ebx, ebx               ; Clear error flag (0 = no errors)

        

        ; Parse the input
    parseInput:
        mov al, [esi]
        inc esi

        ; Check for end of input
        cmp al, 0
        je checkUnitLimit

        ; Check for space (skip spaces)
        cmp al, ' '
        je parseInput

        ; Convert letter to uppercase
        and al, 0DFh  ; Convert to uppercase (e.g., 'a' → 'A')

        ; Validate the letter (A-K)
        cmp al, 'A'
        jl invalidInput
        cmp al, 'K'
        jg invalidInput

        ; Convert letter to index (A=0, B=1, ..., K=10)
        sub al, 'A'
        movzx eax, al  ; Zero-extend AL to EAX

        ; Retrieve and add the corresponding subject units
        mov edi, offset sub1to3
        mov ecx, [edi + eax * 4]  ; Get units
        add totalUnitsEnrolled, ecx  ; Add to total units

        ; Check if total units exceed 26
        cmp totalUnitsEnrolled, 26
        jg unitLimitExceeded

        ; Move to next character
        jmp parseInput

    invalidInput:
        mov ebx, 1  ; Set error flag (invalid input)
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2  ; Set error flag (exceeded units)
        jmp checkUnitLimit

    checkUnitLimit:
        ; If there was an error, skip displaying the results
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        ; If no errors, display the results
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline


        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr firstYear1stSem
        invoke StdOut, addr horLine

        

        ; Reset ESI to the start of the input buffer to re-parse and display subjects
        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        ; Check for end of input
        cmp al, 0
        je displayTotalUnits

        ; Check for space (skip spaces)
        cmp al, ' '
        je displaySubjects

        ; Convert letter to uppercase
        and al, 0DFh  ; Convert to uppercase (e.g., 'a' → 'A')

        ; Convert letter to index (A=0, B=1, ..., K=10)
        sub al, 'A'
        movzx eax, al  ; Zero-extend AL to EAX

        ; Retrieve and display the corresponding subject
        mov edi, [subjectPointers1 + eax * 4]  ; Lookup subject string
        invoke StdOut, edi  ; Display the subject description

        ; Move to next character
        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  ; Convert total units to string
        invoke StdOut, addr tempTotalUnitsEnrolled  ; Display total units
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif


    displayError:
        ; Display the appropriate error message
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  ; Ask for input again

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  ; Ask for input again

        ret
selectToEnrollFirstYrFirstSem ENDP


selectToEnrollFirstYrSecondSem PROC
    invoke StdOut, addr sub4
    invoke StdOut, addr sub5
    invoke StdOut, addr sub6

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'K'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub4to6
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 26
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline

        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr firstYear2ndSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers2 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollFirstYrSecondSem ENDP


selectToEnrollSecondYrFirstSem PROC
  invoke StdOut, addr sub7
    invoke StdOut, addr sub8
    invoke StdOut, addr sub9

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'J'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub7to9
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 26
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline


        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr secondYear1stSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers3 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollSecondYrFirstSem ENDP

selectToEnrollSecondYrSecondSem PROC
    invoke StdOut, addr sub10
    invoke StdOut, addr sub11
    invoke StdOut, addr sub12

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'K'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub10to12
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 26
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

       
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline

        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr secondYear2ndSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers4 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret

selectToEnrollSecondYrSecondSem ENDP

selectToEnrollThirdYrFirstSem PROC
    invoke StdOut, addr sub13
    invoke StdOut, addr sub14
    invoke StdOut, addr sub15

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'J'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub13to15
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 25
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

       
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline

        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr thirdYear1stSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers5 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollThirdYrFirstSem ENDP

selectToEnrollThirdYrSecondSem PROC
  invoke StdOut, addr sub16
    invoke StdOut, addr sub17
    invoke StdOut, addr sub18

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'H'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub16to18
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 25
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline

        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr thirdYear2ndSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers6 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollThirdYrSecondSem ENDP

selectToEnrollThirdYrSummer PROC
    invoke StdOut, addr sub19
    invoke StdOut, addr sub20

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'B'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub19to20
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 9
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline

        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr thirdYearSummer
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers7 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollThirdYrSummer ENDP

selectToEnrollFourthYrFirstSem PROC
    invoke StdOut, addr sub21
    invoke StdOut, addr sub22
    invoke StdOut, addr sub23

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'F'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub21to23
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 19
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline

        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr fourthYear1stSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers8 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollFourthYrFirstSem ENDP

selectToEnrollFourthYrSecondSem PROC
    invoke StdOut, addr sub24
    invoke StdOut, addr sub25

    enrollLoop:
        invoke StdOut, addr subjectPrompt
        invoke StdIn, addr subject, sizeof subject
        mov totalUnitsEnrolled, 0  
        mov esi, offset subject    
        xor ebx, ebx               

        
    parseInput:
        mov al, [esi]
        inc esi

        cmp al, 0
        je checkUnitLimit

        cmp al, ' '
        je parseInput

        and al, 0DFh  

        cmp al, 'A'
        jl invalidInput
        cmp al, 'B'
        jg invalidInput

        sub al, 'A'
        movzx eax, al 

        mov edi, offset sub24to25
        mov ecx, [edi + eax * 4] 
        add totalUnitsEnrolled, ecx  

        cmp totalUnitsEnrolled, 9
        jg unitLimitExceeded

        jmp parseInput

    invalidInput:
        mov ebx, 1
        jmp checkUnitLimit

    unitLimitExceeded:
        mov ebx, 2
        jmp checkUnitLimit

    checkUnitLimit:
        cmp ebx, 1
        je displayError
        cmp ebx, 2
        je displayError

        
        invoke StdOut, addr officiallyEnrolled
        invoke StdOut, addr oneline
        invoke StdOut, addr studName
        invoke StdOut, addr studNameIn
        invoke StdOut, addr oneline
        invoke StdOut, addr accountNum
        invoke StdOut, addr accountNumIn
        invoke StdOut, addr oneline
        invoke StdOut, addr year
        invoke StdOut, addr yearIn
        invoke StdOut, addr oneline
        invoke StdOut, addr program
        invoke StdOut, addr department
        invoke StdOut, addr newline
        
        invoke StdOut, addr horLine
        invoke StdOut, addr header
        invoke StdOut, addr horLine
        invoke StdOut, addr fourthYear2ndSem
        invoke StdOut, addr horLine

        mov esi, offset subject

    displaySubjects:
        mov al, [esi]
        inc esi

        cmp al, 0
        je displayTotalUnits

        cmp al, ' '
        je displaySubjects

        and al, 0DFh  

        sub al, 'A'
        movzx eax, al  

        mov edi, [subjectPointers9 + eax * 4]
        invoke StdOut, edi  

        jmp displaySubjects

    displayTotalUnits:
        invoke StdOut, addr horLine
        invoke StdOut, addr totalUnits

        invoke dwtoa, totalUnitsEnrolled, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr tempTotalUnitsEnrolled  
        invoke StdOut, addr verticalTab
        invoke StdOut, addr horLine
        invoke StdOut, addr newline

        invoke StdOut, addr logInOrOut
        invoke StdIn, addr choices, 100

        .if choices == "J" || choices == "j"
            jmp start
        .elseif choices == "K" || choices == "k"
            invoke StdOut, addr exit
            invoke StdOut, addr newline
            invoke ExitProcess, 0   
        .endif

    displayError:
        cmp ebx, 1
        je invalidInputError
        cmp ebx, 2
        je unitLimitError

    invalidInputError:
        invoke StdOut, addr invalidInputMsg
        jmp enrollLoop  

    unitLimitError:
        invoke StdOut, addr limitedUnitsMsg
        jmp enrollLoop  

        ret
selectToEnrollFourthYrSecondSem ENDP