.686

.model flat
extern _malloc : PROC

.code
_ASCII_na_UTF16 PROC
push ebp
mov ebp, esp
push esi
push edx 
mov eax, [ebp+12] ; d³ugoœæ ci¹gu
mov ecx, 2
mul ecx ; d³ugoœæ jest w bajtach a my chcemy dworda

mov esi, [ebp+8] ; pocz¹tek ciagu
add eax, 2
push eax
call _malloc

add esp, 4
mov ecx, [ebp+12] ; dlugosc ciagu
push eax
ptl:

mov dl, byte ptr [esi]
mov byte ptr[eax], dl
inc esi
inc eax

mov byte ptr[eax], 0
inc eax

loop ptl
mov word ptr [eax], 0

pop eax
pop edx
pop esi
pop ebp
ret
_ASCII_na_UTF16 ENDP
END