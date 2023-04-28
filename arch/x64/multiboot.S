; multiboot.S

.section .text
.globl _start

_start:
    ; Store multiboot_info address from EBX in a safe location
    movl %ebx, multiboot_info_addr

    ; Call uncompress function
    call uncompress

    ; Restore multiboot_info address into EBX
    movl multiboot_info_addr, %ebx

    ; Jump to start32, the entry point of loader.elf (decompressed kernel)
    jmp start32

.section .data
    ; Store multiboot_info address
    multiboot_info_addr:
        .long 0x00000000
