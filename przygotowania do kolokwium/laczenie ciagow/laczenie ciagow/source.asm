.686
.model flat

.code	
_nowy_strcat PROC
push ebp
mov ebp, esp
push ebx
mov eax, [ebp+12]
mov ebx, [ebp+8]
push esi
push edx
mov esi,0

ptl1:
mov dh, byte ptr [ebx]

cmp dh, 0
je koniecptl1

inc ebx
jmp ptl1


koniecptl1:


ptl2:

mov dh, byte ptr [eax]
cmp dh, 0
je koniec

mov byte ptr [ebx], dh
inc eax
inc ebx

jmp ptl2

koniec:
mov al, 0
mov byte ptr [ebx], al


pop edx
pop esi
pop ebx
pop ebp

ret
_nowy_strcat ENDP
END