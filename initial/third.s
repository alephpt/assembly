.global _start
.intel_syntax noprefix

_start:
  mov rax, 1                  # sys_write  - system call number
  mov rdi, 1                  # stdout     - file descriptor
  lea rsi, [_hello_assembly]  # message    - load effective address
  mov rdx, 18                 # length     - message length
  syscall                     # call sys_write

  mov rax, 60                 # sys_exit   - system call number
  mov rdi, 0                  # exit code  - return code
  syscall                     # call sys_exit

_hello_assembly:
  .asciz "Hello, Assembly!\n"
