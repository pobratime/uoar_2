.intel_syntax noprefix

.text

.global euler

euler:

  enter 0, 0

  xor r8d, r8d  # clear r8d
  xor ecx, ecx  # clear ecx

start:
  inc ecx #increase ecx by 1
  cmp edi, ecx  #compare edi and ecx  
  je end  #if equal jump to the end

  xor eax, eax  # clear eax
  mov eax, edi  # move edi to eax
  xor esi, esi  # clear esi
  mov esi, ecx  # move ecx to esi
  cdq #eax to edx:eax

nzd:
  xor edx, edx # clear edx
  div esi # devide eax by esi
  mov eax, esi  #move esi to eax
  mov esi, edx  # move edx to esi
  cmp esi, 0  # compare esi to 0
  je check  # if equal jump to check
  jmp nzd # if not jump back

check:
  cmp eax, 1 # compare eax to 1
  je increase # if unequal jump to increase
  jmp start # instead jump to start

increase:
  inc r8d # increase counter by 1
  jmp start # jump to start

end:
  mov eax, r8d # move counter to output
  leave
  ret
