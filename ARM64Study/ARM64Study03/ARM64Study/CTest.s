
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	
    mov	w8, #4
	stur	w8, [x29, #-4]
	mov	w8, #5
	str	w8, [sp, #8]
	bl	_test1

	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
