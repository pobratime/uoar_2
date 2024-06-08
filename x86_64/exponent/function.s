.intel_syntax noprefix

.text

.global exponent

exponent:
  enter 0, 0

  push rsi  # push rsi on stack
  push rdx  # push rdx on stack

  xor edx, edx  # set edx to 0
  mov esi, 1  # move 2 to esi

start:
  xor eax, eax  # set eax to 0
  mov r8d, 1  # set exponent to 1
  cmp edi, esi  # compare n to m
  je error  # if equal go to error
  inc esi # if not increase esi

multiply:
  mov eax, esi  # move esi to eax

repeat:
  inc r8d # increase k by 1
  mul esi # multiply esi by esi
  cmp eax, edi  # compare result to n
  je success  # if equal success
  cmp eax, edi  # compare result to n
  jb repeat # if less repeat
  cmp eax, edi  # compare result to n
  ja start  # if more start again

error:
  pop rdx # pop rdx
  pop rsi # pop rsi

  mov eax, 0  # if error is encountered move 0 to eax
  jmp end   # jump to end

success:
  mov r9d, esi # move esi to r9d so it can be popped

  pop rdx # pop rdx
  pop rsi # pop rsi

  mov [rsi], r9d # move r9d to rsi address
  mov [rdx], r8d # move r8d to rdx address

  mov eax, 1  # if task was succeful move 1 to eax
  jmp end # jump to end

end:
  leave
  ret
