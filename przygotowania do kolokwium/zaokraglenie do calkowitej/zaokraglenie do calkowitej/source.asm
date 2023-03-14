.686

.model flat

extern _ExitProcess@4 : PROC

public _main

.data
liczba dd 000002301H ; liczba w danym fomacie 

.code
_main PROC
mov eax, offset liczba
mov edx, dword ptr [eax]

clc

bt edx, 31
jc ujemna

clc
bt edx, 6
jc dodaj

shr edx, 7
jmp skip

dodaj:
shr edx, 7
inc edx
jmp skip

ujemna:
clc 
bt edx, 6
jc odejmij

sar edx, 7
jmp skip

odejmij:
sar edx, 7
dec edx
skip:

nop

push 0
call _ExitProcess@4

_main ENDP
END