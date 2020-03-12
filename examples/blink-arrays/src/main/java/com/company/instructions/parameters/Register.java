package com.company.instructions.parameters;

public class Register extends Parameter {

	private String name;
	
	public static Register rax = new Register("rax"),
			               eax = new Register("eax"),
			               ah = new Register("ah"),
					       al = new Register("al"),
						   rbx = new Register("rbx"),
			               ebx = new Register("ebx"),
						   bh = new Register("bh"),
			               bl = new Register("bl"),
						   rcx = new Register("rcx"),
			               ecx = new Register("ecx"),
						   ch = new Register("ch"),
			               cl = new Register("cl"),
			               rdx = new Register("rdx"),
			               edx = new Register("edx"),
						   dh = new Register("dh"),
			               dl = new Register("dl"),
			               rdi = new Register("rdi"),
			               rsi = new Register("rsi"),
			               rsp = new Register("rsp"),
			               rbp = new Register("rbp"),
			               r8 = new Register("r8"),
						   r9 = new Register("r9"),
						   r10 = new Register("r10"),
						   r11 = new Register("r11"),
						   r12 = new Register("r12"),
						   r13 = new Register("r13"),
						   r14 = new Register("r14"),
						   r15 = new Register("r15");
	
	public Register(String name) {
		this.name = name;
	}
	
	/* toString
	 * Arguments:
	 *   
	 * returns the register as a string
	 */
	public String toString() {
		return "%" + this.name;
	}
	
}
