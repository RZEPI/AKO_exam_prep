.686

.model flat

extern _malloc : PROC

.code
_spacje PROC

push ebp
mov ebp, esp
push ebx

mov bl, byte ptr[ebp+8]
mov edx, 129

push edx
call _malloc
add esp, 4

mov byte ptr [eax+128], 0


mov ecx, 128

push eax

ptl:
mov byte ptr [eax], bl
inc eax

loop ptl

pop eax

pop ebx
pop ebp
ret

_spacje ENDP
END