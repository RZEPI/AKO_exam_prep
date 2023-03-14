.686

.model flat


public _main
.code
_main PROC

mov edx, 0FFFFFA00H
or dx, 0040H
mov ax, dx
movsx edx, ax

bt edx, 6
jnc zeruj
sar edx, 7
inc edx
sal edx, 7
jmp koniec
zeruj:
sar edx, 7
sal edx, 7
koniec:

_main ENDP
END