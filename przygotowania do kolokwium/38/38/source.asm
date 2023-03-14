.686
.model flat

extern _ExitProcess@4 : PROC

public _main

.data
	v1	db 0ABH


.code
_main PROC
	mov al, 0FEH 
	mov cl, 5 ; zostanie zapisane na 3 bicie 
	mov dl, 0FFH 
	shl dl, 5 ; robienie miejsca ¿eby zanegowaæ 5 najm³odszych bitów 
	not dl
	and al, dl ; uzyskiwanie 5 najm³odszych bitów
	mov dl, 0FFH
	shl dl, cl
	shl al, cl
	not dl 

	mov bl, byte ptr v1
	and bl, dl
	or bl, al
	mov byte ptr v1, bl


	push 0
	call _ExitProcess@4
	


	
	
_main ENDP
END