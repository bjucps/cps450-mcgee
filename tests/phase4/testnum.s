.data
.text
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
# visit StatementNode.If 
# visit ExpressionNode.Greater 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
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
	subq	$16, %rsp
	pushq	$1 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	jmp	fi_1
else_1:
# visit StatementNode.If 
# visit ExpressionNode.Equal 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
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
	subq	$16, %rsp
# visit ExpressionNode.Add 
# visit ExpressionNode.Method 
	subq	$16, %rsp
	pushq	$0 # visit ExpressionNode.Int
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	pushq	$9 # visit ExpressionNode.Int
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
	jmp	fi_2
else_2:
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Add 
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Negate 
	pushq	$1 # visit ExpressionNode.Int
	popq	%rax
	negq	%rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	pushq	$10 # visit ExpressionNode.Int
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
fi_2:
fi_1:
	popq	-16(%rbp)
# visit ExpressionNode.Method 
	subq	$16, %rsp
	pushq	$9 # visit ExpressionNode.Int
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
