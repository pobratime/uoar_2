.intel_syntax noprefix
    
.global add

.text
    
    add:

    push rbp
    mov rbp, rsp

    add edi, esi
    mov eax, edi

    mov rsp, rbp
    pop rbp
    ret

