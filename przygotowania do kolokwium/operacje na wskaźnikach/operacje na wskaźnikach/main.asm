.686
.model flat

public	_main

.data 
wskaznik dd ?

linie dd 421, 422, 443
		dd 442, 444, 427, 432

.code


_main PROC
lea eax, wskaznik
mov wskaznik, eax
nop

mov esi, (OFFSET linie)+4
mov ebx, 4
mov edx, [ebx] [esi]

mov eax,125
push eax
mov edx, 0
mov ebx, 10

ptl:
div ebx
add cl, dl
mov edx, 0
cmp eax, 0
jne ptl
nop

mov eax, 1
mov ecx, eax
lea eax, [eax+ eax*4]
nop

mov ecx, 0

loop ptl

_main ENDP
END