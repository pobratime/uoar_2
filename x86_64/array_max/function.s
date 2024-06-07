.intel_syntax noprefix

.text

.global max

max:
  enter 0, 0

  xor ecx, ecx
  xor eax, eax

start:
  cmp esi, ecx
  je end

  cmp eax, [rdi + 4 * rcx]
  jl more
  inc ecx
  jmp start
  
more:
  mov eax, [rdi + 4 * rcx]
  inc ecx
  jmp start

end:
  leave
  ret
