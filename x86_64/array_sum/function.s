.intel_syntax noprefix

.text

.global sum

sum:
  enter 0, 0

  xor eax, eax
  xor ecx, ecx

start:
  cmp esi, ecx
  je end
  
summing:
  add eax, [rdi + 4 * rcx]
  inc ecx
  jmp start

end:
  leave
  ret
