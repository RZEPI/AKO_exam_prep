.686

.model flat
.xmm

.data 
val dd 8 dup (?)

.code
_zeruj PROC
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
push edi
push edx

mov esi, [ebp+8] ; adres tablicy 256bitowych
mov ebx, [ebp+12] ; adres tablicy floatow
mov ecx, [ebp+16] ; rozmiar obu tablic
ptl:
push ecx
mov ecx, 4

ptl1:
mov dword ptr [ebp-4*ecx-4], 0 ;zerowanie zarezerwowanego miejsca na stosie 
loop ptl1

pop ecx

mov eax, dword ptr[ebx]
clc
bt eax, 31
jc skip
mov edx, eax
rol eax, 9
sub al, 127
and edx, 001FFFFFH
or edx, 00200000H
cmp al, 95
jng qskip
mov dword ptr [ebp-32]

qskip:
cmp al, 63
jng dskip

dskip:
cmp al, 31
jng bskip

bskip:
cmp al, 0
jng skip


skip:

loop ptl

pop edx
pop edi
pop esi
pop ebx
pop ebp
ret
_zeruj ENDP
END