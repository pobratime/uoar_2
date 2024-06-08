.intel_syntax noprefix

.text

.global prime

prime:
  enter 0, 0
  xor rcx, rcx
  push r8
  xor r8d, r8d
  push r9
  xor r9d, r9d
  push r10
  xor r10d, r10d

start:
  push rdx
  xor edx, edx
  cdq
  mov r9d, 2
  cmp esi, ecx
  je end

two:
  xor edx, edx

  mov eax, [rdi + 4 * rcx]
  idiv r9d
  cmp eax, 1
  je write
  cmp edx, 0
  je cancel

three:
  xor edx, edx
  add r9d, 1

  mov eax, [rdi + 4 * rcx]
  idiv r9d
  cmp eax, 1
  je write
  cmp edx, 0
  je cancel

five:
  xor edx, edx
  add r9d, 2

  mov eax, [rdi + 4 * rcx]
  idiv r9d
  cmp eax, 1
  je write
  cmp edx, 0
  je cancel
  jmp write

cancel:
  pop rdx
  inc ecx
  jmp start

write:
  pop rdx
  mov r10d, [rdi + 4 * rcx]
  mov [rdx + 4 * r8], r10d
  inc ecx
  inc r8d
  jmp start

end:
  pop rdx
  pop r8
  pop r9
  pop r10
  leave
  ret
