.686	
.model flat

public _main
.data
stale db 4 dup (3), 2
.code 
_main PROC

mov eax, 0FFFF0000H

rol eax, 16
nop
nop

mov edi, 32
ptl:
dec edi
clc
bt eax, edi
adc cl, 0
cmp edi, 0
jne ptl
nop

lea ecx, [eax*8]
lea edx, [eax*2]
lea eax, [ecx+edx]
nop

_main ENDP
END