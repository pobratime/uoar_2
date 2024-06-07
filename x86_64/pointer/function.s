.intel_syntax noprefix

.text

.global swap

swap:
  enter 0, 0

  mov edx, [rdi]
  mov ecx, [rsi]

  mov [rdi], ecx
  mov [rsi], edx

  leave
  ret
