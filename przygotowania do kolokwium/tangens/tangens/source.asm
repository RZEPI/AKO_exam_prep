.686

.model flat

.code
_funkcja PROC
push ebp
mov ebp, esp
finit
fld qword ptr [ebp+8]
fld qword ptr [ebp+16]
faddp
fld qword ptr [ebp+8]
fld qword ptr [ebp+16]
fsubp
fdivp 
fptan 
fdivp

pop ebp
ret
_funkcja ENDP
END