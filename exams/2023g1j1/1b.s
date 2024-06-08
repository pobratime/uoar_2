.intel_syntax noprefix

.text

.global presek

presek:
  enter 0, 0

  push r8
  push r9     # push impotant registries to stack
  push r10
  push r11
  push r12
  push r13

  xor eax, eax  # set eax to 0
  xor r9d, r9d  # set rest of registries to 0
  xor r10d, r10d
  xor r11d, r11d
  xor r12d, r12d
  xor r13d, r13d

start:
  cmp esi, r9d  # compare n to n-counter
  je end  # if equal jump to end
  mov r11d, [rdi + 4 * r9] # move a[i] to r11d

compare:
  cmp ecx, r10d # compare v to v-counter
  je again  # if equal jump to again
  cmp r11d, [rdx + 4 * r10]  # compare current a[i] to v[j]
  je increase # if equal jump to increase
  jmp check # else go check

check:
  inc r10d  # increase v-counter (j) by one
  jmp compare # jump to compare again

again:
  xor r10d, r10d
  inc r9d # if row came to an end increase the n-counter (i)
  jmp start # jump to start

increase:
  mov [r8 + 4 * r13], r11d # if found move r11d to c
  inc r13d  # increase k by 1
  inc r9d # increase i by 1
  inc eax # increase number of c elements by 1
  jmp start # jump to check

end:
  pop r13 # pop all the registries
  pop r12
  pop r11
  pop r10
  pop r9
  pop r8

  leave
  ret
