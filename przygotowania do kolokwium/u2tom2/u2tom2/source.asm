.686
.model flat

extern _ExitProcess@4 : proc
public _main

.data

.code
_minus_dwojkowy proc
	mov edx, 0
	mov ecx, 0
ppp:
	or eax, eax ; sprawdzamy czy zero
	jz gotowe
	call dziel ; wynik w eax, reszya w cf
	inc ecx
	adc edx, 0
	ror edx, 1
	jmp ppp
gotowe:
	rol edx, cl
	mov eax, edx
	ret
_minus_dwojkowy endp

dziel proc
	sar eax, 1
	pushf
	neg eax
	popf
	ret
dziel endp

_main proc
	mov eax, 6
	call _minus_dwojkowy

	mov eax, 1431655765
	call _minus_dwojkowy

	push 0
	call _ExitProcess@4
_main endp
end