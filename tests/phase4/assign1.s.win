.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl start
start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
# visit DeclarationNode.VariableDeclaration 
	pushq	$5 # visit ExpressionNode.Int
	popq	-8(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	pushq	$8 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
	popq	-16(%rbp)
# visit DeclarationNode.VariableDeclaration 
	pushq	$1 # visit ExpressionNode.Bool
	popq	-24(%rbp)
# visit DeclarationNode.VariableDeclaration 
	pushq	$1 # visit ExpressionNode.Bool
	popq	-32(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Not 
# visit ExpressionNode.Or 
# visit ExpressionNode.Identifier 
	pushq	-24(%rbp)
# visit ExpressionNode.Not 
# visit ExpressionNode.Identifier 
	pushq	-32(%rbp)
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
	popq	-40(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Identifier 
	pushq	-16(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-48(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Divide 
	pushq	$2 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	cqo
	popq	%r10
	idiv	%r10
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-56(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
# visit ExpressionNode.Identifier 
	pushq	-16(%rbp)
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	-64(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Add 
	pushq	$4 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-64(%rbp)
	popq	%rax
	popq	%r10
	addq	%r10, %rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-72(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
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
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-80(%rbp)
# visit ExpressionNode.Method 
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
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
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
