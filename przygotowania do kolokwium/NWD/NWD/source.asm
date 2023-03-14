.686

.model flat

.code 
_NWD PROC
push ebp
mov ebp, esp
push esi
push edi

mov esi, [ebp+8]; a
mov edi, [ebp+12]; b

cmp esi, edi
jnz dalej

mov eax, esi
jmp koniec

dalej:
cmp esi, edi
jb dalej1

sub esi, edi
push edi
push esi
call _NWD
add esp, 8
jmp koniec

dalej1:
sub edi, esi
push edi
push esi
call _NWD
add esp, 8

koniec:
pop edi
pop esi
pop ebp
ret
_NWD ENDP
END