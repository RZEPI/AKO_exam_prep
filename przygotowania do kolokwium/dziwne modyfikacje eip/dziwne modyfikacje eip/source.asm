.686

.model flat

extern _ExitProcess@4 : PROC

public _main

.code
dodaj PROC
	mov esi, [esp]
	mov eax, [esi]
	add eax, [esi+4]
	add [esp], dword ptr 8
	ret

dodaj ENDP

_main PROC

call	dodaj
		dd		5
		dd		7
		jmp ciag_dalszy

ciag_dalszy:nop

_main ENDP
END