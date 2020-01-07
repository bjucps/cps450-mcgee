package cps450;

import java.util.HashMap;

import cps450.TinyParser.AddExprContext;
import cps450.TinyParser.Assign_stmtContext;
import cps450.TinyParser.ExprContext;
import cps450.TinyParser.IdTermContext;
import cps450.TinyParser.IntTermContext;
import cps450.TinyParser.IntegerContext;
import cps450.TinyParser.MulExprContext;
import cps450.TinyParser.Write_stmtContext;

public class PythonCodeGenerator extends TinyBaseVisitor<Double> {
	
	
	@Override
	public Double visitWrite_stmt(Write_stmtContext ctx) {
		System.out.print("print(");
		for (int i = 0; i < ctx.expr_list().exprList.size(); ++i) {
			ExprContext expr = ctx.expr_list().exprList.get(i);
			visit(expr);
			if (i != ctx.expr_list().exprList.size() - 1) {
				System.out.print(", ");
			}
		}
		System.out.println(")");
		return null;
	}

	@Override
	public Double visitIdTerm(IdTermContext ctx) {
		System.out.print(ctx.ID().getText());
		return null;
	}

	@Override
	public Double visitAddExpr(AddExprContext ctx) {
		System.out.print("(");
		visit(ctx.e1);
		System.out.print(" " + ctx.add_op().getText() + " ");
		visit(ctx.e2);
		System.out.print(")");
		return null;
	}

	@Override
	public Double visitIntTerm(IntTermContext ctx) {
		System.out.print(ctx.integer().getText());
		return null;
	}

	@Override
	public Double visitAssign_stmt(Assign_stmtContext ctx) {
		System.out.print(ctx.ID().getText() + " = ");
		visit(ctx.expr());
		System.out.println();
		return null;
	}
	
	
	
}

