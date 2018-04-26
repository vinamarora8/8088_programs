	;; This program tests whether the processor is able to
	;; access RAM

	.model small

	code segment
	assume cs:code

start:	mov AX, 0020h		; reassigning DS
	mov DS, AX

	mov AX, 0000h		; assiging start index
	mov SI, AX

	mov AL, 0Ah
	mov [SI], AL
	mov AL, 00h

	nop

	mov AL, [SI]
	out 0FFh, AL

	hlt

	end start
	code ends
