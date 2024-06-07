.intel_syntax noprefix

.text

.global quotient

quotient:
  enter 0, 0

  xor eax, eax
  mov r8, rdx
  xor edx, edx

  mov eax, edi
  div esi
  mov [rcx], edx
  mov rdx, r8
  mov [rdx], eax

  leave
  ret
