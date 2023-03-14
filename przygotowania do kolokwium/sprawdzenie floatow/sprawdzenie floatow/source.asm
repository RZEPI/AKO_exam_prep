.686

.model flat

public _main

.data
testowe db 4 dup (?)

.code	
_function PROC
mov eax, 30H
ret
_function ENDP

_main PROC	
mov ebx, offset _function

call ebx

nop 
nop

_main ENDP
END