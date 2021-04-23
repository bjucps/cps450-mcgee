.data
.text
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
	subq	$16, %rsp
# visit ExpressionNode.Multiply 
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
	pushq	$12 # visit ExpressionNode.Int
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
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
# visit ExpressionNode.Divide 
# visit ExpressionNode.Negate 
	pushq	$1 # visit ExpressionNode.Int
	popq	%rax
	negq	%rax
	pushq	%rax
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
# visit ExpressionNode.Multiply 
# visit ExpressionNode.Negate 
	pushq	$1 # visit ExpressionNode.Int
	popq	%rax
	negq	%rax
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	-56(%rbp)
	popq	%rax
	popq	%r10
	imul	%r10
	pushq	%rax
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
	pushq	$0 # visit ExpressionNode.Int
	popq	-80(%rbp)
# visit DeclarationNode.VariableDeclaration 
	pushq	$1 # visit ExpressionNode.Int
	popq	-88(%rbp)
# visit StatementNode.Loop 
	pushq	$0 # by default return 0
while_1:
# visit ExpressionNode.Not 
# visit ExpressionNode.Greater 
# visit ExpressionNode.Add 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Assignment 
	pushq	$2 # visit ExpressionNode.Int
	popq	-88(%rbp)
	subq	$8, %rsp
	popq	%rax
	popq	%r10
	addq	%r10, %rax
	pushq	%rax
# visit ExpressionNode.Method 
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	subq	$16, %rsp
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Add 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-80(%rbp)
	popq	%rax
	popq	%r10
	addq	%r10, %rax
	pushq	%rax
	popq	-80(%rbp)
	subq	$8, %rsp
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
	popq	%r10
	cmpq	%r10, %rax
	setg	%al
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
# visit StatementNode.Loop 
	pushq	$0 # by default return 0
while_2:
# visit ExpressionNode.Greater 
# visit ExpressionNode.Negate 
	pushq	$2 # visit ExpressionNode.Int
	popq	%rax
	negq	%rax
	pushq	%rax
# visit ExpressionNode.Identifier 
	pushq	-88(%rbp)
	popq	%rax
	popq	%r10
	cmpq	%r10, %rax
	setg	%al
	andq	$1, %rax
	pushq	%rax
	popq	%rax
	cmpq	$1, %rax
	je	wc_2
	jmp	ew_2
wc_2:
	popq	%rax # we got into the while loop again, remove previous return value
# visit StatementNode.If 
# visit ExpressionNode.Not 
# visit ExpressionNode.Greater 
	pushq	$0 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-88(%rbp)
	popq	%rax
	popq	%r10
	cmpq	%r10, %rax
	setg	%al
	andq	$1, %rax
	pushq	%rax
	popq	%rax
	xorq	$1, %rax
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
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Subtract 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-88(%rbp)
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	-88(%rbp)
	subq	$8, %rsp
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
	jmp	fi_1
else_1:
# visit ExpressionNode.Assignment 
# visit ExpressionNode.Subtract 
	pushq	$1 # visit ExpressionNode.Int
# visit ExpressionNode.Identifier 
	pushq	-88(%rbp)
	popq	%rax
	popq	%r10
	subq	%r10, %rax
	pushq	%rax
	popq	-88(%rbp)
	subq	$8, %rsp
fi_1:
	jmp	while_2
ew_2:
	jmp	while_1
ew_1:
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
