.intel_syntax noprefix

.text

.global izracunaj

izracunaj:
  enter 0, 0
  xor ecx, ecx
  xor r8d, r8d
  xor r9d, r9d

counter:
  mov esi, [rdi + 4 * rcx]
  test esi, esi
  jz start
  inc ecx
  jmp counter

start:
  cmp ecx, r8d
  je end
  mov eax, [rdi + 4 * r8]
  mov esi, 11
  xor edx, edx

mul:
  cmp r8d, 0
  je zero
  mul esi
  cmp r8d, r9d 

zero:
  mov r10d, eax
  jmp start

end:
  leave
  ret
