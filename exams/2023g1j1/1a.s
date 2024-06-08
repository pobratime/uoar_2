.intel_syntax noprefix

.text

.global broj_ponavljanja

broj_ponavljanja:
  enter 0, 0

  push rcx
  push rsi
  push rdx

  xor ecx, ecx  # clear out ecx register
  xor eax, eax  # set eax to 0

start:
  cmp esi, ecx  # compare esi and ecx (n and n counter)
  je end # if equal end

repeat:
  cmp edx, [rdi + 4 * rcx]  # compare x and a[i]
  je add  # if equal go to add
  jmp increase  # else go to increase

add:
  inc eax # increase eax 
  jmp increase  # go to increase

increase:
  inc ecx # go to a[i+1]
  jmp start # jump to start

end:
  pop rdx
  pop rsi
  pop rcx

  leave
  ret
