
.text
.global _test

_test:

; ldr指令：从内存中读取数据
; ldr x0, [x1] ; x1存放的是地址，将x1地址中存放的数据传送到x0中

; ldp指令：从内存中读取数据，放到一对寄存器中
; ldp w0, w1 [x2, #0x10]

; str指令，往内存中写入数据
; str w0, [x1]
; stp w0, w1 [x1 ,#0x10]

ret
