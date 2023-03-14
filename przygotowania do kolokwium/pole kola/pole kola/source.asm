.686

.model flat

.code
_pole_kola PROC
push ebp
mov ebp, esp
mov eax, [ebp+8] ; adres promienia w eax
finit 
fldpi ; st(0) = pi
fld dword ptr [eax]; st(0) = r st(1) = pi
fld dword ptr [eax]; st(0) = r st(1) = r st(2) = pi
fmulp ; st(0) = r*r st(1) = pi
fmulp; st(0) = pole
fstp dword ptr [eax] ; stos pusty
pop ebp
ret
_pole_kola ENDP
END