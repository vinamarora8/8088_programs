	;; Test for the PIC
	;; Testing PORT C's bit set/reset functionality
	;; Also tests the input capability of the PIC
	.model small

	code segment
	assume cs:code

start:	mov AL, 90h
	out 0FBh, AL
	;; clear PORT C
	mov AL, 00h
	out 0FAh, AL

	;; Set 5th bit
	mov AL, 0Bh
	out 0FBh, AL

	;; Read input from PORT A and write to DISP1
	in AL, 0F8h
	out 0FFh, AL
	
	hlt

	;; Chec

	end start
	code ends
	
