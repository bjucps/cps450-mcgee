package com.company.instructions.parameters;

public class OffsetRegister extends Parameter {
	private Register register;
	private int offset;
	
	public OffsetRegister(Register register, int offset) {
		this.register = register;
		this.offset = offset;
	}
	
	/* toString
	 * Arguments:
	 *   
	 * returns the register and offset as a formatted string
	 */
	public String toString() {
		return this.offset + "(" + this.register.toString() + ")";
	}
}
