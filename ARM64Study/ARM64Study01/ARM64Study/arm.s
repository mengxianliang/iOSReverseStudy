
.text ; 把代码放在代码段
.global _test, _add, _sub, _swp ; 公开函数（函数默认是私有的）

; test函数实现（底层函数实现需要添加下划线）
_test:

; mov指令
; mov x0, #0x1
; mov x1, x0

; add指令
; mov x0, #0x1
; mov x1, #0x2
; add x2, x0, x1

; sub指令
; mov x0, #0x5
; mov x1, #0x2
; sub x2, x0, x1

; cmp指令
; mov x0, #0x3
; mov x1, #0x2
; cmp x0, x1

; b指令
; b label
; mov x0, #0x5
; label:
; mov x1, #0x6

; 带条件的b指令
; mov x0, #0x1
; mov x1, #0x3
; cmp x0, x1
; beq label
; mov x0, #0x5
; label:
; mov x1, #0x6

; bl指令
bl myTest
mov x3, #0x2
mov x4, #0x1
ret ; 返回

; 内部/私有函数
myTest:
mov x0, #0x1
mov x1, #0x2
add x2, x0, x1
ret


; add函数的实现
_add:
add x0, x0, x1
ret

; sub函数的实现
_sub:
sub x0, x0, x1
ret
