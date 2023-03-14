.686

.model flat 

.code
_obj_stozka_sc PROC
push ebp
mov ebp, esp
finit 
fld dword ptr [ebp+16] ;h
fldpi
mov eax, 3
push eax
fild dword ptr [esp]
pop eax
fdiv
fmul
; na czubku stosu pi*h/3
fld dword ptr [ebp+12] ; R
fld dword ptr [ebp+12] ; R
fmul ; R^2
fld dword ptr [ebp+12] ; R
fld dword ptr [ebp+8] ; r 
fmul; R*r
fld dword ptr [ebp+8] ; r 
fld dword ptr [ebp+8] ; r 
fmul 
fadd
fadd
fmul

pop ebp
ret
_obj_stozka_sc ENDP
END