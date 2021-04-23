.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
# visit StatementNode.If 
# visit ExpressionNode.Equal 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	24(%rbp)
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
	pushq	16(%rbp)
	jmp	fi_1
else_1:
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Subtract 
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Identifier 
	pushq	24(%rbp)
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
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	24(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	callq	gcd
	addq	$16, %rsp
	pushq	%rax
fi_1:
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl displayres
displayres:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Identifier 
	pushq	16(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl start
start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$0, %rsp
	callq	readint
	addq	$0, %rsp
	pushq	%rax
	popq	-8(%rbp)
# visit DeclarationNode.VariableDeclaration 
# visit ExpressionNode.Method 
	subq	$0, %rsp
	callq	readint
	addq	$0, %rsp
	pushq	%rax
	popq	-16(%rbp)
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Identifier 
	pushq	-16(%rbp)
	popq	%rax
	movq	%rax, 8(%rsp)
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	movq	8(%rsp), %rdx
	callq	gcd
	addq	$16, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	displayres
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
