.intel_syntax noprefix

.text

.global find_power
                                  # int find_power (n,  k,  *ms,  nm);
                                  # eax            edi  esi  edx  ecx 
find_power:
  enter 0, 0

  push rsi                        # push rsi to the top of the stack
  push rdx
  push r8
  push r9
  push rcx

  mov r8d, esi                    # move esi to r8d (the element we are searching for to r8d)
  xor r9d, r9d                    # clear out the r9d (counter)

start:
  xor eax, eax                    # clear out the eax (we are getting power output here)
  cmp r9d, ecx                    # compare nm to a counter
  je fail                         # if equal go to fail

function:
  mov esi, [rdx + 4 * r9]         # move ms[i] to esi
  
  push rsi
  push rdx
  push r8
  push r9
  push rcx

  call power                      # call power function to which we are passing edi and esi
  
  pop rcx
  pop r9
  pop r8
  pop rdx
  pop rsi

  inc eax                         # increase eax by one
  cmp eax, r8d                    # compare result to the k
  je success                      # if succesful move to success
  inc r9d                         # increase counter by 1
  jmp start                       # jump to start

success:
  mov eax, r9d                    # move i (index) to eax (output)
  jmp end                         # jump to end

fail:
  mov eax, -1                     # if fail move -1 to output

end:
  pop rcx
  pop r9
  pop r8
  pop rdx
  pop rsi

  leave
  ret
