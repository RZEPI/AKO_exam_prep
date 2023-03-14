.686
.model flat

extern	_MessageBoxA@16 : PROC

public _main

.data 
napis db 'informatyka', 0, 4 dup (?)
obszar dw 2 dup (?)

linie dd 421, 422, 443
	  dd 442, 444, 427, 432

.code

get_eip PROC
mov eax, [esp]
ret
get_eip ENDP

_main PROC
mov ecx, -1
mov cx, 22

skok:

sub cx,11
je et2
call skok
et2:
mov ecx,[esp]
neg ecx
lea ecx, [ecx+et2+1]

mov ebx,32 
mov edx, 2
mov eax, 514
div ebx

mov eax, 1
lea ecx, [eax+ eax*8]
lea ecx, [ecx+eax]

mov esi, OFFSET linie
add esi, 4
mov ebx, 4
mov edx, [ebx] [esi]


nop
_main ENDP
END