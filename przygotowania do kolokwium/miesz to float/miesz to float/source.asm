.686

.model flat

.code 
_miesz2float PROC
push ebp
mov ebp, esp
push esi
push edi

mov esi, [ebp+12] ; mlodsza czesc
mov edi, [ebp+8] ; starsza czesc
mov ecx, 31

clc

ptl:
	bt edi, ecx
	jc dalej

	dec ecx
	jmp ptl

dalej:
	push ecx
ptl1:
	shr edi, 1
	rcr esi, 1
	loop ptl1

	pop ecx
	shr esi, 9
	add ecx, 127
	shl ecx, 23
	or esi, ecx

	mov eax, esi
	push eax
	finit
	fld dword ptr [esp]
	pop eax

pop edi
pop esi
pop ebp
ret
_miesz2float ENDP
END