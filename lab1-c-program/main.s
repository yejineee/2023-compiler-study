	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	mov	x8, sp
	adrp	x9, l_.str.1@PAGE
	add	x9, x9, l_.str.1@PAGEOFF
	str	x9, [x8]
	bl	_printf
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	mov	x0, x8
	mov	x8, sp
	adrp	x9, l_.str.3@PAGE
	add	x9, x9, l_.str.3@PAGEOFF
	str	x9, [x8]
	bl	_printf
	mov	w10, #0
	mov	x0, x10
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Hello %s\n"

l_.str.1:                               ; @.str.1
	.asciz	"yejin"

l_.str.2:                               ; @.str.2
	.asciz	"Current time: %s\n"

l_.str.3:                               ; @.str.3
	.asciz	"02:09:09"

.subsections_via_symbols
