.686

.model flat

.code
_zaokroglij PROC
push ebp
mov ebp, esp

finit
fild dword ptr [ebp+8]
frndint	
push eax
fstp dword ptr [esp]
pop eax

pop ebp
ret
_zaokroglij ENDP
END