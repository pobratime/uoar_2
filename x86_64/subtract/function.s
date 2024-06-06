.intel_syntax noprefix

.data

.global subtract

.text

subtract:

  push rbp
  mov rbp, rsp

  sub edi, esi
  mov eax, edi

  mov rsp, rbp
  pop rbp
  ret
