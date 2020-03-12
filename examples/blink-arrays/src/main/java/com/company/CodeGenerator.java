package com.company;

import com.company.instructions.Instruction;
import com.company.instructions.InstructionCommand;
import com.company.instructions.InstructionSet;
import com.company.instructions.parameters.IntegerLiteral;
import com.company.instructions.parameters.Label;
import com.company.instructions.parameters.Register;

public class CodeGenerator extends TestBaseVisitor {
    @Override
    public Object visitVar_decl(TestParser.Var_declContext ctx) {
        return super.visitVar_decl(ctx);
    }

    @Override
    public Object visitVariable(TestParser.VariableContext ctx) {
        return super.visitVariable(ctx);
    }

    @Override
    public Object visitDeclared_type(TestParser.Declared_typeContext ctx) {
        return super.visitDeclared_type(ctx);
    }

    @Override
    public Object visitType(TestParser.TypeContext ctx) {
        return super.visitType(ctx);
    }

    @Override
    public Object visitInt_type(TestParser.Int_typeContext ctx) {
        return super.visitInt_type(ctx);
    }

    @Override
    public Object visitString_type(TestParser.String_typeContext ctx) {
        return super.visitString_type(ctx);
    }

    @Override
    public Object visitBool_type(TestParser.Bool_typeContext ctx) {
        return super.visitBool_type(ctx);
    }

    @Override
    public Object visitCustom_type(TestParser.Custom_typeContext ctx) {
        return super.visitCustom_type(ctx);
    }

    @Override
    public Object visitExpressions(TestParser.ExpressionsContext ctx) {
        return super.visitExpressions(ctx);
    }

    @Override
    public Object visitInt(TestParser.IntContext ctx) {
        InstructionSet instructions = new InstructionSet();
        instructions.appendInstruction(new InstructionCommand(Instruction.move, new IntegerLiteral(ctx.getText()), Register.rdi));
        instructions.appendInstruction(new InstructionCommand(Instruction.call, new Label("my_push")));
        return instructions;
        /* or */
        //return "mov $" + ctx.getText() + ", %rdi\ncall my_push\n";
    }

    @Override
    public Object visitNew(TestParser.NewContext ctx) {
        return super.visitNew(ctx);
    }
}
