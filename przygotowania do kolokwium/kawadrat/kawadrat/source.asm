.686

.model flat

.code
_kwadrat PROC
 push ebp
mov ebp, esp
push ebx
push edx
mov edx, [ebp+8]
mov eax, 0

cmp edx, 0
je skip

cmp edx, 1
je skip


sub edx, 2
push edx
call _kwadrat
add esp, 4

mov ecx, [ebp+8]
lea ebx, [4*ecx-4]

add eax, ebx

skip:
pop edx
pop ebx
pop ebp
ret
_kwadrat ENDP
END