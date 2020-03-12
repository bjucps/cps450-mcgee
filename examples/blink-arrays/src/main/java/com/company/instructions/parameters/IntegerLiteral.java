package com.company.instructions.parameters;

public class IntegerLiteral extends Parameter {
	
	private String str;
	
	public IntegerLiteral(String str) {
		this.str = str;
	}
	
	/* toString
	 * Arguments:
	 *   
	 * returns the integer literal as a formatted string
	 */
	public String toString() {
		return "$" + this.str;
	}

}
