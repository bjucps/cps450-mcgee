.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl start
start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
# visit DeclarationNode.VariableDeclaration 
	pushq	$5 # visit ExpressionNode.Int
	popq	-56(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	pushq	$8 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
	popq	-64(%rbp)
# visit DeclarationNode.VariableDeclaration 
	pushq	$1 # visit ExpressionNode.Bool
	popq	-72(%rbp)
# visit DeclarationNode.VariableDeclaration 
	pushq	$1 # visit ExpressionNode.Bool
	popq	-80(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Not 
# visit ExpressionNode.Or 
# visit ExpressionNode.Identifier 
	pushq	-72(%rbp)
# visit ExpressionNode.Not 
# visit ExpressionNode.Identifier 
	pushq	-80(%rbp)
	popq	%rax
	xorq	$1, %rax
	pushq	%rax
	popq	%rax
	popq	%r10
	orq	%r10, %rax
	pushq	%rax
	popq	%rax
	xorq	$1, %rax
	pushq	%rax
	popq	-88(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Identifier 
	pushq	-64(%rbp)
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
	popq	-96(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Divide 
	pushq	$2 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	cqo
	popq	%r10
	idiv	%r10
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
	popq	-104(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
# visit ExpressionNode.Identifier 
	pushq	-64(%rbp)
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	-112(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Add 
	pushq	$4 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-112(%rbp)
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
	popq	-120(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Negate 
# visit ExpressionNode.Subtract 
	pushq	$5 # visit ExpressionNode.Int
	pushq	$9 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
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
	popq	-128(%rbp)
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Add 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Multiply 
	pushq	$3 # visit ExpressionNode.Int
	pushq	$2 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
	pushq	$5 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
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
