.686	
.model	flat

public _main
.data
obroty dd 7 dup (0)
stala db 16

.code 
_main proc
lea ecx,[stala-obroty] 
mov eax, 0FFH
mov edx, 21H

xor eax, edx
xor edx, eax
xor eax, edx
xor eax,eax

sub eax, 0FFFFFFFFH
NOP
_main ENDP
END