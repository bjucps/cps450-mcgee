package com.company.instructions;

public class LabelInstruction extends InstructionCommand {
	private String label;
	
	public LabelInstruction(String label) {
		this.label = label;
	}
	
	/* emit
	 * Arguments:
	 *   
	 * Purpose: returns the instruction as a formatted string
	 */
	@Override
	public String emit() {
		return label + ":\n";
	}
}
