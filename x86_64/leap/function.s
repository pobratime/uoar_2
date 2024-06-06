.intel_syntax noprefix

.text

.global leap

leap:

  enter 0, 0

  mov esi, 4
  cdq

  mov eax, edi
  idiv esi
  cmp edx, 0
  je div100
  jmp false

div100:
  mov esi, 100
  mov eax, edi
  idiv esi
  cmp edx, 0
  je div400
  jmp true

div400:
  mov esi, 400
  mov eax, edi
  idiv esi
  cmp edx, 0
  je true
  jmp false
 
true:
  mov eax, 0
  jmp leave

false:
  mov eax, 1 
  jmp leave

leave:
  leave
  ret
