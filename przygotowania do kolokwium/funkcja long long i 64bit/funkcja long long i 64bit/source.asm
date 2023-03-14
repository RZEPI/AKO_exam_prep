public funkcja 

.data
stala2 dd 2
stala12 dd 1.2
liczba dq ?
wynik dd  ?
.code 
funkcja PROC
push rbx
finit
mov rbx, rcx

cmp rbx, 1
jne skip_ret_1

fld1
jmp skip

skip_ret_1:
cmp rbx, 2
jne skip_ret_2

fild dword ptr stala2
jmp skip

skip_ret_2:

dec rcx
sub rsp, 32
call funkcja
add rsp, 32
inc rcx

fld dword ptr stala12
fxch st(1)
fsubp 
mov qword ptr liczba, rcx
fild qword ptr liczba
fdivp

skip:
pop rbx
fst dword ptr wynik
movss xmm0, wynik
ret 
funkcja ENDP
END