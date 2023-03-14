.686

.model flat

public _main

.data
testowy dd 10 dup (8) ;0202000h

.code
_main PROC


nop

;shld [edx+4*esi], eax, 3
db 00001111B
db 10100100B
db 00000100B
db 10110010B
db 03H

stc
db 01110010B
db 11111000B

db 11000111B
db 10000100B
db 00110110B
db 0
db 20H
db 20H
db 0
db 0AH
db 0
dw 0

;cmp eax, 1823H
db 10000001B
db 11111000B
db 23H
db 18H
db 0
db 0
;jc dalej 
db 01110010B
db 00001010B
;pppa:
;sub bx, 256 
db 66H
db 10000001B
db 11101011B
db 00H
db 01H
;mov [edx+ebx], dl
db 10001000B
db 00010100B
db 00011010B

;loop pppa
db 11100010B
db 11110110B
;dalej:
;xor si, bx
db 66H
db 00110011B
db 11110011B

;mov dl,bl
db 10001010B
db 11010011B
;mov ebx,[esi+1234H]
db 10001011B
db 10011110B
db 23H
db 12H
db 0
db 0
call edi
;mov [eax+ecx], bl
db 10001000B
db 00011100B
db 00000001B


;mov eax, 10
;db 10111000B
;db 00001010B
;db 00H
;db 00H
;db 00H
;mov ecx, offset testowy
;mov eax, 1

;mov al, byte ptr [ecx]
;db 10001010B
;db 00000001B
;dd 0

;mov word ptr [ecx], 1024
;db 11000111B
;db 00000001B
;db 0
;db 00000100B
;dw 0


;mov eax, ecx
;db 10001011B
;db 11000001B

;mov edx, [ecx+eax*4+2]

db 10001011B
db 01010100B
db 10000001B
db 02H

nop 
nop 
nop

_main ENDP
END