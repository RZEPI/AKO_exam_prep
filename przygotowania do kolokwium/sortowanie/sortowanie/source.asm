.686

.model flat

.code
_sortowanie PROC
push ebp
mov ebp, esp
push esi
push edi
push ebx

mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
add ecx, ecx
sub ecx, 2

ptl:
push ecx
mov eax, dword ptr [esi+4*ecx+4]
mov ebx, dword ptr [esi+4*ecx]
dec ecx
dec ecx
ptl1:
mov edi, dword ptr [esi+4*ecx+4]
mov edx, dword ptr [esi+4*ecx]

cmp eax,edi
ja skip
je mlodsze

xchg eax, edi
xchg edx, ebx
mov  dword ptr [esi+4*ecx+4], edi
mov  dword ptr [esi+4*ecx], edx
jmp skip
mlodsze:
cmp ebx, edx
jae skip
xchg eax, edi
xchg edx, ebx

mov  dword ptr [esi+4*ecx+4], edi
mov  dword ptr [esi+4*ecx], edx

skip:
dec ecx
dec ecx
cmp ecx, 0
jge ptl1

pop ecx
mov dword ptr [esi+4*ecx+4], eax 
mov dword ptr [esi+4*ecx], ebx
dec ecx
dec ecx
cmp ecx, 0
jg ptl

mov ecx, dword ptr [ebp+12]
add ecx, ecx
mov edx, dword ptr [esi+4*ecx-4]
mov eax, dword ptr [esi+4*ecx-8]

pop ebx
pop edi
pop esi
pop ebp
ret
_sortowanie ENDP
END