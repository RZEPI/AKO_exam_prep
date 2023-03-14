.686

.model flat

extern _ExitProcess@4 : PROC
extern __write : PROC

public _main

.data

holidays	dd 000000000000000000000000000000B ; miesi¹c zerowy, ³atwiejsza implementacja
			dd 100001000000000000000000000000B
			dd 000000000000000000000000000000B
			dd 000000000000000000000000000000B
			dd 000000000000000000000000000000B
			dd 000000001000000000000000010000B
			dd 000000000000000000000000000000B
			dd 000000000000000010000000000000B
			dd 000000000000000011000000000000B
			dd 000010000000000000000000000000B
			dd 000000000000000100000000000000B
			dd 000000000000000000000000000000B
			dd 000000000000010000010000000000B
			dd 000000000000000000011100000010B


buffor         db 5 dup (?), 10
.code

_wyswietl PROC
push ebp
mov ebp, esp
push edi 

mov eax, dword ptr[ebp+12]
mov ecx, dword ptr[ebp+8]
mov edx, 0
mov edi, 10
div edi

add al, '0'
add dl, '0'
mov byte ptr buffor, al
mov byte ptr buffor[1], dl
mov byte ptr buffor[2], '.'

mov eax, ecx
mov edx, 0
div edi
add al, '0'
add dl, '0'

mov byte ptr buffor[3], al
mov byte ptr buffor[4], dl



push dword ptr 6
push dword ptr offset buffor 
push dword ptr 1
call __write
add esp, 12

pop edi
pop ebp
ret 
_wyswietl ENDP

_main PROC
mov ecx, 12

mov ebx, dword ptr holidays[ecx*4 + 4]
mov esi, ecx
push ecx
mov ecx, 32
mov edi, 1
ptl1:
	clc
	rcl ebx, 1
	jnc skip
	
	push edi
	push esi
	call _wyswietl
	add esp, 8

	skip:
	inc edi
loop ptl1

pop ecx


push 0 
call _ExitProcess@4
_main ENDP
END