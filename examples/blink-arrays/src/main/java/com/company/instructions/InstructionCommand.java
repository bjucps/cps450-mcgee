package com.company.instructions;

import com.company.instructions.parameters.Parameter;

public class InstructionCommand {
	
	private Instruction instruction;
	private Parameter parameter1;
	private Parameter parameter2;
	
	protected InstructionCommand() {
		
	}
	
	public InstructionCommand(Instruction instruction) {
		this.instruction = instruction;
		this.parameter1 = null;
		this.parameter2 = null;
	}
	
	public InstructionCommand(Instruction instruction, Parameter parameter1) {
		this.instruction = instruction;
		this.parameter1 = parameter1;
		this.parameter2 = null;
	}
	
	public InstructionCommand(Instruction instruction, Parameter parameter1, Parameter parameter2) {
		this.instruction = instruction;
		this.parameter1 = parameter1;
		this.parameter2 = parameter2;
	}
	
	/* emit
	 * Arguments:
	 *   
	 * Purpose: converts an instruction command to the full assembly representation
	 */
	public String emit() {
		if(parameter1 == null && parameter2 == null) {
			return "\t" + instruction.getName() + "\n";
		} else if(parameter2 == null) {
			return "\t" + instruction.getName() + " " + parameter1.toString() + "\n";
		} else {
			return "\t" + instruction.getName() + " " + parameter1.toString() + ", " + parameter2.toString() + "\n";
		}
	}
}
