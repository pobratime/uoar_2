.intel_syntax noprefix

.text

.global sum

sum:

  enter 0, 0

  mov esi, 0
  mov edx, 0

compare:
  cmp edi, esi
  jb leave
  jmp inc_add

inc_add:
  add edx, esi
  inc esi
  jmp compare

leave:
  mov eax, edx
  leave
  ret
