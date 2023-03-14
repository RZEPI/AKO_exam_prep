.686

.model flat
.data
liczba dword 4.5

.code
_main PROC	

mov eax, dword ptr liczba
xor ebx, ebx
mov ebx, 7F800000H
and ebx,eax
rol ebx, 9
add ebx, 5
ror ebx, 9
and eax, 807FFFFFH
or eax, ebx
mov dword ptr liczba, eax

nop 
nop

_main ENDP
END