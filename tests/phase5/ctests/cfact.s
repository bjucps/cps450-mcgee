.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl _fact
_fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
# visit StatementNode.If 
# visit ExpressionNode.Equal 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	%rdi
	popq	%rax
	popq	%r10
	cmpq	%r10, %rax
	sete	%al
	andq	$1, %rax
	pushq	%rax
	popq	%rax
	cmpq	$1, %rax
	je	if_1
	jmp	else_1
if_1:
	pushq	$1 # visit ExpressionNode.Int
	jmp	fi_1
else_1:
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Subtract 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	%rdi
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	_fact
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
# visit ExpressionNode.Identifier 
	pushq	%rdi
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
fi_1:
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl _go
_go:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
# visit DeclarationNode.VariableDeclaration 
	pushq	$0 # visit ExpressionNode.Int
	popq	-56(%rbp)
# visit StatementNode.Loop 
	pushq	$0 # by default return 0
while_1:
# visit ExpressionNode.Not 
# visit ExpressionNode.GreaterEqual 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	popq	%r10
	cmpq	%r10, %rax
	setge	%al
	andq	$1, %rax
	pushq	%rax
	popq	%rax
	xorq	$1, %rax
	pushq	%rax
	popq	%rax
	cmpq	$1, %rax
	je	wc_1
	jmp	ew_1
wc_1:
	popq	%rax # we got into the while loop again, remove previous return value
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$0, %rsp
	addq	$0, %rsp
	callq	_readint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	popq	-56(%rbp)
	subq	$8, %rsp
	jmp	while_1
ew_1:
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$0, %rsp
	addq	$0, %rsp
	callq	_go
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	_printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	_fact
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	_printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	popq	%rax
	leave
	ret
.globl _main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_start
	leave
	ret
