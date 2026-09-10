.MODEL SMALL              ; tells the assembler to use the small memory model
                          ; (code and data each fit in one 64KB segment)

.STACK 100H               ; reserve 256 bytes for the stack

.DATA
    MSG DB 'Hello, World!$'  ; define the string; DOS's print function
                             ; requires the string to end in '$' as a terminator
                             ; (not a null byte, unlike C strings)

.CODE
MAIN PROC
    MOV AX, @DATA          ; @DATA is the segment address of our data segment
    MOV DS, AX             ; DS (Data Segment register) can't be loaded directly
                            ; with an immediate value on 8086, so we route it
                            ; through AX first

    MOV AH, 09H            ; AH = function number for DOS interrupt 21H
                            ; function 09H = "display string"
    LEA DX, MSG             ; load the OFFSET address of MSG into DX
                            ; (DOS's print-string function expects DS:DX
                            ; to point at the string)
    INT 21H                 ; software interrupt — calls DOS's service routine
                            ; DOS reads AH to know which function to run,
                            ; then reads DS:DX to find the string to print

    MOV AH, 4CH             ; function 4CH = "terminate program"
    INT 21H                 ; return control to DOS cleanly

MAIN ENDP
END MAIN                    ; tells the assembler where execution starts