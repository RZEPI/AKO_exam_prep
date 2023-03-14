.686
.model flat
public _main
.data
stale DW 2,1
napis DW 10 dup (3),2
tekst DB 7
	  DQ 1

v2 dw ?

obroty LABEL dword
		ORG $ + 28

jeden DW 0ccccH
.code
_main PROC
MOV CX, napis-1
SUB tekst, CH
mov esi, Offset jeden
sub esi, offset obroty
MOV EDI,1
MOV tekst[4*EDI],CH
MOV EBX, DWORD PTR tekst+1

sub esp, 4
mov dword ptr [esp], 'A'
mov v2, 1111H
mov ax, 1
add ax, 0FFFFH 
nop
nop
_main ENDP
END