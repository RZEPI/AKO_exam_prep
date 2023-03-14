.686

.model flat

.code 
_avg_wd PROC
push ebp
mov ebp, esp
push edi
push esi
mov edi, [ebp+16]
mov esi, [ebp+12]
mov ecx, [ebp+8]

finit
fld1
ptl:
fld dword ptr[esi]
fld dword ptr[edi]
fmul
fadd
add esi, 4
add edi, 4
loop ptl
fld1
fsubp st(1), st(0)
fild dword ptr [ebp+8]
fdiv

pop esi
pop edi
pop ebp
ret
_avg_wd ENDP
END