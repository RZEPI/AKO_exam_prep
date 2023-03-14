.686

.model flat

extern _ExitProcess@4 : PROC

public _main

.code
_main PROC
	mov eax, 80000000H

	;bt eax, 31
	;jnc koniec

	neg eax
	or eax, 80000000H

	koniec:

	push 0
	call _ExitProcess@4

_main ENDP
END