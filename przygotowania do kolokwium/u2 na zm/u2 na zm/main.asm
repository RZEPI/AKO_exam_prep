.686
.model flat

public _main
.code 
_main PROC
mov eax, -4
test eax, 32
jz skip

neg eax
or eax, 80000000H
skip:nop

_main ENDP
END