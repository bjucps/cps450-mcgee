.data
.text
# visit DeclarationNode.MethodDeclaration 
.globl fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
# visit StatementNode.If 
# visit ExpressionNode.Equal 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	16(%rbp)
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
	subq	$16, %rsp
# visit ExpressionNode.Subtract 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	16(%rbp)
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	fact
	addq	$16, %rsp
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	16(%rbp)
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
fi_1:
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl go
go:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
# visit DeclarationNode.VariableDeclaration 
	pushq	$0 # visit ExpressionNode.Int
	popq	-8(%rbp)
# visit StatementNode.Loop 
	pushq	$0 # by default return 0
while_1:
# visit ExpressionNode.Not 
# visit ExpressionNode.GreaterEqual 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-8(%rbp)
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
	subq	$0, %rsp
	callq	readint
	addq	$0, %rsp
	pushq	%rax
	popq	-8(%rbp)
	subq	$8, %rsp
	jmp	while_1
ew_1:
	popq	%rax
	leave
	ret
# visit DeclarationNode.MethodDeclaration 
.globl start
start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$0, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$16, %rsp
# visit ExpressionNode.Method 
	subq	$0, %rsp
	callq	go
	addq	$0, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	printint
	addq	$16, %rsp
	pushq	%rax
	popq	%rax
	movq	%rax, 0(%rsp)
	movq	0(%rsp), %rcx
	callq	fact
	addq	$16, %rsp
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
