.686

.model flat
extern	_GetSystemInfo@4 : PROC


.code 
_liczba_procesorow PROC
push ebp
mov ebp, esp
sub esp, 36
push ebx

lea eax, dword ptr [ebp-36]
push eax
call _GetSystemInfo@4

mov ebx, dword ptr [ebp-16]
mov eax, ebx
add esp, 36
pop ebx
pop ebp
ret
_liczba_procesorow ENDP
END