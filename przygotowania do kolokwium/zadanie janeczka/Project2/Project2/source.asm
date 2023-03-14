.686
.model	flat

public	_main

extern	_ExitProcess@4 : PROC

.data
dekoder db 185, 05h, 01h, 165, 04h, 01h ; π •
	db 230, 07h, 01h, 198, 06h, 01h ; Ê ∆
	db 234, 19h, 01h, 202, 18h, 01h ; Í  
	db 179, 42h, 01h, 163, 41h, 01h ; ≥ £
	db 241, 44h, 01h, 209, 43h, 01h ; Ò —
	db 243, 0f3h, 00h, 211, 0d3h, 00h ; Û ”
	db 156, 5bh, 01h, 140, 5ah, 01h ; ú å
	db 159, 7ah, 01h, 143, 79h, 01h ; ü è
	db 191, 7ch, 01h, 175, 7bh, 01h ; ø Ø
win_unicode dw 256 dup (?)
win_latin dw 256 dup (?)

.code
_main PROC

push ptl2
ret

	mov word PTR win_unicode[0], 0
	mov ecx, 255
ptl2: mov win_latin[ecx*2], cx
	mov win_unicode[ecx*2], cx
	loop ptl2
	mov ecx, 18

	mov esi, 0
ptl:
	movzx edi, byte ptr dekoder[esi]
	movzx ebx, word ptr dekoder[esi+1]
	mov win_unicode[edi], bx
	add esi, 3
	loop ptl

	push 0
	call _ExitProcess@4
_main ENDP
END