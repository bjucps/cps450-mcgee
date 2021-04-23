.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl ComputeChange
ComputeChange:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
# visit ExpressionNode.Divide 
# visit ExpressionNode.Identifier 
	pushq	24(%rbp)
# visit ExpressionNode.Identifier 
	pushq	16(%rbp)
	popq	%rax
	cqo
	popq	%r10
	idiv	%r10
	pushq	%rax
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl ComputeRemain
ComputeRemain:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Identifier 
	pushq	32(%rbp)
# visit ExpressionNode.Identifier 
	pushq	24(%rbp)
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	16(%rbp)
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl start
start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$0, %rsp
	callq	readint
	addq	$0, %rsp
	pushq	%rax
	popq	-8(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
	pushq	$25 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	callq	ComputeChange
	addq	$16, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-16(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
	pushq	$10 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Method 
	subq	$32, %rsp
# visit ExpressionNode.Identifier 
	pushq	-16(%rbp)
	popq	%rax
	movq	%rax, 16(%rsp)
	pushq	$25 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r8
	callq	ComputeRemain
	addq	$32, %rsp
	pushq	%rax
	popq	-8(%rbp)
	subq	$8, %rsp
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	callq	ComputeChange
	addq	$16, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-24(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
	pushq	$5 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Method 
	subq	$32, %rsp
# visit ExpressionNode.Identifier 
	pushq	-24(%rbp)
	popq	%rax
	movq	%rax, 16(%rsp)
	pushq	$10 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r8
	callq	ComputeRemain
	addq	$32, %rsp
	pushq	%rax
	popq	-8(%rbp)
	subq	$8, %rsp
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	callq	ComputeChange
	addq	$16, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-32(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$32, %rsp
# visit ExpressionNode.Identifier 
	pushq	-32(%rbp)
	popq	%rax
	movq	%rax, 16(%rsp)
	pushq	$5 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r8
	callq	ComputeRemain
	addq	$32, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	-40(%rbp)
	pushq	$1 # visit ExpressionNode.Bool
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
