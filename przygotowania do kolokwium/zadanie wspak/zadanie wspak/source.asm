.686
.model flat

extern _ExitProcess@4 : PROC
extern _MessageBoxW@16 : PROC

public _main
.data
jbk		db 6aH,00H,65H,00H,62H,00H,61H,00H,07H,01H,20H,00H,6bH,00H,75H,00H,62H,00H,61H,00H,6cH,00H,65H,00H, 0

.code
_main PROC

mov ecx, 6; rozmiar tekstu w dwordach w ecx 
mov esi, offset jbk
mov ebx, 0
mov edi, 24

ptl:
	mov dx, word ptr [esi][edi-2]
	mov ax, word ptr[esi][ebx*2]
	mov word ptr[esi][edi-2], ax
	mov word ptr[esi][ebx*2], dx
	inc ebx
	sub edi, 2
loop ptl 

push dword ptr 0
push dword ptr 00H
push dword ptr offset jbk
push dword ptr 0
call _MessageBoxW@16

push 0
call _ExitProcess@4

_main ENDP 
END