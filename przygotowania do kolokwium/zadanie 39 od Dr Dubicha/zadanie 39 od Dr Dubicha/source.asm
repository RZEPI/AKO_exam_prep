.686
.model flat

extern	_ExitProcess@4	:	PROC

public _main

.data
lancuch db 'A12BR810'
bufor db 32 dup (?)
suma_kontrolna db ? ; miejsce na przechowanie sumy kontrolnej
znaki db 1, 1, 1, 5 ; kolumna 2 tablicy znaki zgodna z tabela 1 na koñcu zadania
	dw 0 ; wartoœæ z kolumny 3 tabeli 1
	db 1, 1, 2, 4
	dw 15
	db 1, 1, 3, 3 
    dw 17
    db 1, 1, 4, 2 
    dw 29
    db 1, 1, 5, 1 
    dw 11
    db 1, 2, 1, 4 
    dw 33
    db 1, 2, 2, 3 
    dw 19
    db 1, 2, 3, 2 
    dw 21
    db 1, 2, 4, 1 
    dw 8
    db 1, 3, 1, 3
    dw 2
    db 1, 3, 2, 2
    dw 7
    db 1, 3, 3, 1 
    dw 25
    db 1, 4, 1, 2 
    dw 20
    db 1, 4, 2, 1 
    dw 22
    db 1, 5, 1, 1 
    dw 9
    db 2, 1, 1, 4 
    dw 30
    db 2, 1, 2, 3 
    dw 3
    db 2, 1, 3, 2 
    dw 6
    db 2, 1, 4, 1 
    dw 27
    db 2, 2, 1, 3 
    dw 16
    db 2, 2, 2, 2 
    dw 24
    db 2, 2, 3, 1 
    dw 4
    db 2, 3, 1, 2 
    dw 34
    db 2, 3, 2, 1 
    dw 12
    db 2, 4, 1, 1 
    dw 32
    db 3, 1, 1, 3 
    dw 18
    db 3, 1, 2, 2 
    dw 1
    db 3, 1, 2, 2 
    dw 14
    db 3, 2, 1, 2 
    dw 13
    db 3, 2, 2, 1 
    dw 26
    db 3, 3, 1, 1 
    dw 5
    db 4, 1, 1, 2 
    dw 31
    db 4, 1, 2, 1 
    dw 28
    db 4, 2, 1, 1 
    dw 23
	db 5, 1, 1, 1
	dw 10


.code 
_main PROC

mov esi,OFFSET lancuch ; adres obszaru z tekstem do zakodowania
mov edi, OFFSET bufor ; adres na kody w BC412
mov edx, offset znaki
mov ecx,8 ; liczba znaków w buforze do zakodowania
mov ebx, 0
mov suma_kontrolna,0 ; inicjalna suma kontrola ustawiona na 0
nastepny_znak:
mov eax, 0
mov al, [esi+ebx]

cmp al, '0'
jb skip_all

cmp al, '9'
ja por_z_litera

sub al, '0'
jmp skip

por_z_litera:
cmp al, 'A'
jb skip_all

cmp al, 'Z'
ja skip_all

cmp al, 'O'
jb skip_o

cmp al, 'O'
je skip_all

dec al

skip_o:sub al, 'A'
add al, 10

skip:
push ecx
mov ecx, 6
push edx
mul ecx
pop edx
add edx, eax
mov ecx, dword ptr [edx]

mov [edi], ecx
mov ecx, edx
sub edx,eax
add ecx, 4
movzx ecx, word ptr[ecx]
push edi
movzx edi,  suma_kontrolna
add ecx, edi
mov suma_kontrolna, cl
pop edi
pop ecx

skip_all:
add edi, 4
inc ebx
loop nastepny_znak
sub edi, 36

push 0	
call _ExitProcess@4

_main ENDP
END