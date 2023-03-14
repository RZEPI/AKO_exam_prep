.686

.model flat 
extern	_malloc : PROC

.code 
_kopia_tablicy PROC
push ebp
mov ebp, esp
push ebx
push esi
push edi

mov ebx, [ebp+8] ;adres tablicy
mov eax, [ebp+12] ;rozmiar tablicy
mov ecx, 4
mul ecx
mov ecx, eax

push ecx
call _malloc
add esp, 4
push eax
mov ecx, [ebp+12]
mov edi, ecx
ptl:

mov esi, [ebx]
clc
bt esi, 0
jc skip

mov [eax], esi
add eax, 4
dec edi

skip:
add ebx, 4

loop ptl

mov ecx, edi
mov esi, 0
ptl1:
mov [eax], esi
add eax, 4

loop ptl1

pop eax

pop edi
pop esi
pop ebx
pop ebp
ret

_kopia_tablicy ENDP
END