.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl _ComputeChange
_ComputeChange:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
# visit ExpressionNode.Divide 
# visit ExpressionNode.Identifier 
	pushq	%rsi
# visit ExpressionNode.Identifier 
	pushq	%rdi
	popq	%rax
	cqo
	popq	%r10
	idiv	%r10
	pushq	%rax
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl _ComputeRemain
_ComputeRemain:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Identifier 
	pushq	%rdx
# visit ExpressionNode.Identifier 
	pushq	%rsi
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	%rdi
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
# visit DeclarationNode.VariableDeclaration 
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
# visit DeclarationNode.VariableDeclaration 
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
	pushq	$25 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	addq	$16, %rsp
	callq	_ComputeChange
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
	popq	-64(%rbp)
# visit DeclarationNode.VariableDeclaration 
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
	pushq	$10 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$32, %rsp
# visit ExpressionNode.Identifier 
	pushq	-64(%rbp)
	popq	%rax
	movq	%rax, 16(%rsp)
	pushq	$25 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
	addq	$32, %rsp
	callq	_ComputeRemain
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
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	addq	$16, %rsp
	callq	_ComputeChange
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
	popq	-72(%rbp)
# visit DeclarationNode.VariableDeclaration 
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
	pushq	$5 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$32, %rsp
# visit ExpressionNode.Identifier 
	pushq	-72(%rbp)
	popq	%rax
	movq	%rax, 16(%rsp)
	pushq	$10 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
	addq	$32, %rsp
	callq	_ComputeRemain
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
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	addq	$16, %rsp
	callq	_ComputeChange
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
	popq	-80(%rbp)
# visit DeclarationNode.VariableDeclaration 
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
	subq	$32, %rsp
# visit ExpressionNode.Identifier 
	pushq	-80(%rbp)
	popq	%rax
	movq	%rax, 16(%rsp)
	pushq	$5 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
	addq	$32, %rsp
	callq	_ComputeRemain
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
	popq	-88(%rbp)
	pushq	$1 # visit ExpressionNode.Bool
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
