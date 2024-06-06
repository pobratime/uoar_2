.intel_syntax noprefix

.global negation

.text

negation:

  push rbp
  mov rbp, rsp

  not edi
  mov eax, edi

  mov rsp, rbp
  pop rbp
  ret

