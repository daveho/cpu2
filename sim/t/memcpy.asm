	; save sp in r2:r3
	mov r2, r6
	mov r3, r7

	; load dest into r5:r6
	; TODO: support symbolic constants
	mov r5, 111
	mov r6, 222

	; load src into r7:r8
	; TODO: support symbolic constants
	mov r7, 333
	mov r8, 444

	; note: bytes are copied backwards!
again:
	mov r1, 0
	sub r0, r1
	je done
	ld r1, [r5:r6+r0]
	st [r7:r8+r0], r1
	dec r0
	jmp again

done:
	; restore sp
	mov r6, r2
	mov r7, r3
