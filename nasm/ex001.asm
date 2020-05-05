extern printf

section .data

    count dd 0
    sum dd 0
    func db "%d", 0x0a, 0

section .text

    global main

    main:
        mov rcx, 999 ;

    _loop:
        mov [count], rcx
        mov rax, [count]
        xor rdx, rdx
        mov rbx, 3
        div rbx
        cmp rdx, 0
        je _sum
        mov rax, [count]
        xor rdx, rdx
        mov rbx, 5
        div rbx
        cmp rdx, 0
        je _sum
    _loop2:
        loop _loop
	push qword sum
        push func
        call printf

        mov rax, 1
        xor rbx, rbx
        int 80h

    _sum:
        mov rax, [count]
        add [sum], rax
        jmp _loop2
