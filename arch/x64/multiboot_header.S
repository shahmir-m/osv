; multiboot_header.S

.section .multiboot
.align 4

; The magic field
multiboot_magic:
    .long 0x1BADB002

ENTRY(_start)

; The flags field
multiboot_flags:
    .long 0x00000003 ; Set bit 0 (align modules) and bit 1 (provide memory info)

; The checksum field
multiboot_checksum:
    .long -(0x1BADB002 + 0x00000003)

; The other fields will be zero-filled by default
header_addr:
    .long 0x00000000

load_addr:
    .long 0x00000000

load_end_addr:
    .long 0x00000000

bss_end_addr:
    .long 0x00000000

entry_addr:
    .long 0x00000000

mode_type:
    .long 0x00000000

width:
    .long 0x00000000

height:
    .long 0x00000000

depth:
    .long 0x00000000
