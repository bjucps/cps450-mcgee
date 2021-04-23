.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl start
start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
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
	callq	readint
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
# visit StatementNode.If 
# visit ExpressionNode.Greater 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	popq	%r10
	cmpq	%r10, %rax
	setg	%al
	andq	$1, %rax
	pushq	%rax
	popq	%rax
	cmpq	$1, %rax
	je	if_1
	jmp	else_1
if_1:
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
	pushq	$1 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	jmp	fi_1
else_1:
# visit StatementNode.If 
# visit ExpressionNode.Equal 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	popq	%r10
	cmpq	%r10, %rax
	sete	%al
	andq	$1, %rax
	pushq	%rax
	popq	%rax
	cmpq	$1, %rax
	je	if_2
	jmp	else_2
if_2:
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Add 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
	pushq	$0 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	pushq	$9 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	addq	%r10, %rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	jmp	fi_2
else_2:
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Add 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Negate 
	pushq	$1 # visit ExpressionNode.Int
	popq	%rax
	negq	%rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	pushq	$10 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	addq	%r10, %rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	printint
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
fi_2:
fi_1:
	popq	-64(%rbp)
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
	pushq	$9 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	addq	$16, %rsp
	callq	printint
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
.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	start
	leave
	ret
