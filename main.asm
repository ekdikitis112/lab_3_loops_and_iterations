TITLE loops and iterations
include Irvine32.inc

.data
message byte "loop finished",0
savedecx dword ?
.code
main proc
	mov eax,0
	mov ecx,10
	label1:
		mov savedecx,ecx
		mov ecx,10
		label2:
			call WriteInt
			inc eax
		loop label2
		mov ecx,savedecx
	loop label1
	mov edx,offset message
	call WriteString
exit
main endp
end main