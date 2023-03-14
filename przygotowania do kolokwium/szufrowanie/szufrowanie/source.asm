.686 
.model flat

.data 

.code
_szyfruj PROC
push ebp
mov ebp, esp
push esi
push ebx
push edi

mov esi, [ebp+8]
mov ecx, 52525252H
ptl:
mov bl, byte ptr [esi]
cmp bl, 0
je skip

xor bl, cl
mov byte ptr [esi], bl
mov eax, 80000000H
mov edi, 40000000H
and eax, ecx
and edi, ecx
shl edi, 1
xor eax,edi
clc
shl eax, 1
rcl ecx, 1
inc esi
jmp ptl


skip:

pop edi
pop ebx
pop esi
pop ebp
ret
_szyfruj ENDP
END