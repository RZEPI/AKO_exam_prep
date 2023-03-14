.686	
.model flat
.code
_roznica PROC
push ebp
mov ebp, esp
push ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]

mov eax, [eax]
mov ebx, [ebx]
mov ebx, [ebx]

sub eax, ebx
pop ebx
pop ebp

ret 
_roznica ENDP
END