.intel_syntax noprefix

.text

.global maksimum

maksimum:

  push rbp
  mov rbp, rsp

  cmp edi, esi
  jg more
  jmp less

more:
  mov eax, edi
  jmp end

less:
  mov eax, esi
  jmp end

end:
  mov rsp, rbp
  pop rbp
  ret
