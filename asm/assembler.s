.intel_syntax noprefix

.section .rdata
message:
    .asciz "Hello to 304 from Antropov Ivan Olegovich, number 2, group M3O-109BV-26!"

.text
.globl main
.extern puts

main:
    sub rsp, 40
    lea rcx, [rip + message]
    call puts
    xor eax, eax
    add rsp, 40
    ret