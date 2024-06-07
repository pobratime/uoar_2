.intel_syntax noprefix

.text

.global rotate

rotate:
  enter 0, 0

  xor eax, eax
  xor edx, edx
  xor ecx, ecx
  dec esi

start:
  cmp esi, ecx
  jbe end

  mov eax, [rdi + 4 * rcx]
  mov edx, [rdi + 4 * rsi]
  mov [rdi + 4 * rcx], edx
  mov [rdi + 4 * rsi], eax
  
  inc ecx
  dec esi
  jmp start

end:
  leave
  ret
