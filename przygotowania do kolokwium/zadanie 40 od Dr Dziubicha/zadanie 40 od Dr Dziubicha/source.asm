.686
.model flat

extern	_ExitProcess@4	:	PROC

public _main

.data
stary	db 1
		db 1
		db 1
		db 1
		db 0
		db 1
		db 1
		db 1
		db 1
		db 0
		db 1
		db 1
		db 1
		db 1
		db 0
		db 1
nowy	db ?
		db ?
.code

_main PROC

mov ecx, 16
mov esi, offset stary
mov edi, offset nowy
mov ebx, 0
mov edx, 0
mov eax, 0
ptl:
	add eax, [esi][ebx]
	shl eax, 1
	and ebx, 7
	jz next

	jmp skip

	next: 
		mov [edi], byte ptr al
		inc edi
	skip:
loop ptl

push 0
call _ExitProcess@4

_main ENDP
END