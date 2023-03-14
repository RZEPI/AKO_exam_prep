.686

.model flat

extern _malloc : PROC

.data

ciag dw 'B', '³', '¹', 'd', '.', 0

.code

_komunikat PROC
push ebp
mov ebp, esp
push esi
push edi
push ebx


mov esi, [ebp+8]

mov eax, 1
ptl:
inc eax
inc esi

mov bl, byte ptr [esi]
cmp bl, 0
jne ptl

push eax
mov ecx, 2
mul ecx
add eax, 12


push eax
call _malloc
add esp, 4

pop ecx

mov edi, eax
mov esi, [ebp+8]
push eax
ptl1:
mov al, byte ptr[esi]
mov byte ptr[edi], al
inc edi
mov byte ptr[edi], 0
inc edi
inc esi

loop ptl1

mov esi, offset ciag

mov ecx, 6
sub edi, 2
ptl2:
mov ax, word ptr [esi]
mov word ptr [edi], ax
add esi, 2
add edi, 2
loop ptl2


pop eax

pop ebx
pop edi
pop esi
pop ebp
ret
_komunikat ENDP
END