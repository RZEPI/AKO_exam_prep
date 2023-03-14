.686

.model flat

extern _ExitProcess@4 : PROC
extern __write : PROC
public _main

.data

wyjscie dt ?
tekst db 21 dup (?)

.code
_main PROC
mov ecx, 12 ; bêdzie 8 miejsc po przecinku liczby pi 
mov edx, ecx ; kopia ecx

push 10

finit
fldpi
ptl:
fimul dword ptr[esp]
loop ptl

add esp, 4

fbstp  wyjscie

mov esi, offset wyjscie
add esi, 9
mov ecx, 10; 10 bajtow
mov ebx, 20
sub ebx, edx ; gdzie przecinek
mov edi, offset tekst
cmp ebx, 0
jne ptl1
mov ah, 20 ; bedzie liczbyl ile znakow juz zapisano
mov al, '0'
mov byte ptr [edi], al
mov al, '.'
mov byte ptr [edi+1], al
add edi, 2
dec ah


ptl1:
mov al, byte ptr [esi]
push ecx
mov cl, al
shr al, 4
and cl, 00FH
add al, '0'
add cl, '0'
mov byte ptr [edi], al
inc edi
dec ebx
dec ah
cmp ebx, 0 
jne skip

mov al, '.'
mov byte ptr [edi], al
inc edi
dec ah

skip:
mov byte ptr [edi], cl
inc edi
dec ebx
dec ah

cmp ebx, 0 
jne skip1

mov al, '.'
mov byte ptr [edi], al
dec ah
inc edi
dec ebx
skip1:
pop ecx
dec esi
loop ptl1

cmp ah, 0
jne koniec

movzx ecx, ah
mov al, ' '

ptl2:
mov byte ptr [edi], al
inc edi
loop ptl2

koniec:
push dword ptr 22
push dword ptr offset tekst
push dword ptr 1
call __write

add esp, 12

push 0
call _ExitProcess@4


_main ENDP
END