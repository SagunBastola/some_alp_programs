.MODEL SMALL
.STACK 100H
.DATA
STRING DB "MADAM"
LEN EQU 5

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Push characters onto stack
    LEA SI, STRING
    MOV CX, LEN

PUSH_LOOP:
    MOV AL, [SI]
    PUSH AX
    INC SI
    LOOP PUSH_LOOP

    ; Compare while popping
    LEA SI, STRING
    MOV CX, LEN

COMPARE_LOOP:
    POP AX
    CMP AL, [SI]
    JNE NOT_PAL
    INC SI
    LOOP COMPARE_LOOP

PAL:
    MOV DL, 'Y'     ; Palindrome
    JMP PRINT

NOT_PAL:
    MOV DL, 'N'     ; Not palindrome

PRINT:
    MOV AH, 02H
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
