 include 'emu8086.inc'
org 100h

CALL SCAN_NUM  
MOV BL,CL     
MOV AX , 0001H

FACT:
    mul BL 
    dec BL  
    dec CL
    cmp CL,0
    jne FACT
CALL PRINT_NUM

ret
DEFINE_SCAN_NUM   
DEFINE_PRINT_NUM   
DEFINE_PRINT_NUM_UNS
                         