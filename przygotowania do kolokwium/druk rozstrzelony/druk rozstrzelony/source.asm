.686

.model flat 

public _main

extern __write : PROC

.data
tekst db "Tekst"
rozmiar db ?

.code
_main PROC
lea esi, tekst
mov ecx, 6
mov eax, ecx
mov edx, 0
push ecx
mov ecx, 2
mul ecx
pop ecx
sub esp, eax
dec esp
mov ebp, esp

ptl:

mov dl, byte ptr [esi]
inc esi
mov byte ptr[ebp], dl
inc ebp
mov byte ptr[ebp], ' '
inc ebp

loop ptl
mov byte ptr [ebp], 0
inc eax
mov ecx, eax

push dword ptr eax
push dword ptr esp
push dword ptr 1
call __write
add esp, 12

add esp, ecx


_main ENDP
END
