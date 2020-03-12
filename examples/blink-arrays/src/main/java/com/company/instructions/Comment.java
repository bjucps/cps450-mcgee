package com.company.instructions;

public class Comment extends InstructionCommand {
	private String comment;
	
	public Comment(String comment) {
		this.comment = comment;
	}
	
	/* emit
	 * Arguments:
	 *   
	 * Purpose: returns the instruction as a formatted string
	 */
	@Override
	public String emit() {
		return "# " + comment + "\n";
	}
}
