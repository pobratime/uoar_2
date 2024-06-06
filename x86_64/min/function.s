.intel_syntax noprefix

.text

.global min

min:
  push rbp
  mov rbp, rsp

  cmp edi, esi
  jl less
  jmp more

less:
  mov eax, edi
  jmp end

more:
  mov eax, esi
  jmp end

end:
  mov rsp, rbp
  pop rbp
  ret
