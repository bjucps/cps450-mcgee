.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
# visit StatementNode.If 
# visit ExpressionNode.Equal 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	%rsi
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
# visit ExpressionNode.Identifier 
	pushq	%rdi
	jmp	fi_1
else_1:
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Identifier 
	pushq	%rsi
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
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	%rsi
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	addq	$16, %rsp
	callq	gcd
	addq	$0, %rsp
	pushq	%rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
fi_1:
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl displayres
displayres:
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
# visit ExpressionNode.Identifier 
	pushq	%rdi
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
	popq	-64(%rbp)
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
# visit ExpressionNode.Identifier 
	pushq	-64(%rbp)
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rdi
	movq	8(%rsp), %rsi
	addq	$16, %rsp
	callq	gcd
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
	callq	displayres
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
