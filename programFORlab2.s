.data
print_format:
.string "%d\n"
array:
.long 138, 42, 13, 16, 4, 85, 21, 17, 18, 15
array_end:
.text
.global main
.type main, @function
main:
movl $0, %ecx
movl $array,%ebx
movl (%ebx), %eax
movl $255, %edx
jmp ch_bound
loop_start:
xor $128, %eax
and $128, %eax
cmpl $128, %eax
je less
xor %edx, (%ebx)
add (%ebx), %ecx
addl $4, %ebx
movl (%ebx), %eax
jmp ch_bound
less:
add (%ebx), %ecx
addl $4, %ebx
movl (%ebx), %eax
ch_bound:
cmpl $array_end, %ebx
jne loop_start
pushl %ecx
pushl $print_format
call printf
addl $8, %esp
movl $0, %ecx
movl $0, %ebx
movl $0, %eax
ret
