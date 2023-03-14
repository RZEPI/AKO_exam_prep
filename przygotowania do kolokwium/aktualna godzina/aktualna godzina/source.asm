.686

.model flat

extern	_GetSystemTime@4 : PROC

.code
_aktualna_godzina PROC
push ebp
mov ebp, esp
sub esp, 16

lea eax, [ebp-16]
push eax
call _GetSystemTime@4

push edi
push edx
mov edi, [ebp+8]
lea eax, [ebp-16]
add eax, 8
mov cx, word ptr [eax] ; w cx godzina [int]
mov edx, 0
movzx eax, cx
mov ecx, 10
div ecx
add dl, '0'
add al, '0'
mov byte ptr[edi], al
mov byte ptr[edi+1], dl

add esp, 16

pop edx
pop edi
pop ebp
ret
_aktualna_godzina ENDP
END