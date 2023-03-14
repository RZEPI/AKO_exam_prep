.686

.model flat
public _main
extern	_ExitProcess@4 : PROC
.data
fl dd 2.3
dbl dq ?

.code

_main PROC
mov edi, dword ptr fl ; float
mov eax, edi
rol eax, 9 ; w al wykladnik
mov edx, edi
and edx, 007FFFFFH ; w edx mantysa

sub al, 127
movzx ebx, al
add ebx, 1023 ; wyk³adnik liczby w bx
ror ebx, 12 ; znak| 11 bitow wykladnika| 20bitów zera
mov cl, 20
mov eax, 0
rol edx, 9
ptl:
shl edx, 1
rcl eax, 1

loop ptl

or ebx, eax


mov esi, offset dbl
mov dword ptr [esi], edx
mov dword ptr [esi+4], ebx

finit 
fld qword ptr [esi]
fld dword ptr fl

nop

push 0
call _ExitProcess@4
_main ENDP
END