.intel_syntax noprefix

.text

.global devide4

devide4:
  push rbp
  mov rbp, rsp

  mov esi, 4
  mov edx, edi
  cdq

  idiv esi
  cmp edx, 0
  je equal
  jmp nequal

equal:
  mov eax, 0
  jmp end

nequal:
  mov eax, 1

end:
  mov rsp, rbp
  pop rbp
  ret
