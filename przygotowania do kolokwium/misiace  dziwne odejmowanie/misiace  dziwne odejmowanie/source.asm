.686

.model flat

public _main

.data 
Sty		dd		255, 256
Lut		dw		16, 17, 18, 19
Mar		db		8,9,10,11

.code
_main PROC
	mov eax, 0
	sub eax,1 
	nop 
_main ENDP
END