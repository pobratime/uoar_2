.intel_syntax noprefix

.text

.global fibonacci

fibonacci:
  enter 0, 0

  xor ecx, ecx

start:
  cmp edi, ecx  # compare edi to ecx
  je end # if edi is less or equal to ecx, go to end

  cmp ecx, 0  # compare ecx to 0
  je special  # if 0 go to special case
  cmp ecx, 1  # compare ecx to 1
  je special  # if 1 go to special case

  mov eax, [rsi + 4 * rcx - 4]  # add a[i-1] to eax
  add eax, [rsi + 4 * rcx - 8]  # add a[i-2] to eax
  mov [rsi + 4 * rcx], eax  # move eax to a[i] (current element)
  inc ecx # increase ecx by one
  jmp start # jump to start

special:
  mov dword ptr [rsi + 4 * rcx], 1 # move 1 to a register
  inc ecx # increase ecx by one
  jmp start # jump to start

end:
  leave
  ret
