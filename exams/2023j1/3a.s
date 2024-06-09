.intel_syntax noprefix

.text

.global power


power:
  enter 0, 0

  xor edx, edx
  xor eax, eax
  mov eax, 1
  mov ecx, 0

repeat:
  cmp ecx, esi
  je end
  
  imul edi
  inc ecx
  jmp repeat

end:
  leave
  ret
