// Generated from com\company\Test.g4 by ANTLR 4.7.2

    package com.company;

import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TestParser}.
 */
public interface TestListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by the {@code var_decl}
	 * labeled alternative in {@link TestParser#start}.
	 * @param ctx the parse tree
	 */
	void enterVar_decl(TestParser.Var_declContext ctx);
	/**
	 * Exit a parse tree produced by the {@code var_decl}
	 * labeled alternative in {@link TestParser#start}.
	 * @param ctx the parse tree
	 */
	void exitVar_decl(TestParser.Var_declContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestParser#variable}.
	 * @param ctx the parse tree
	 */
	void enterVariable(TestParser.VariableContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestParser#variable}.
	 * @param ctx the parse tree
	 */
	void exitVariable(TestParser.VariableContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestParser#declared_type}.
	 * @param ctx the parse tree
	 */
	void enterDeclared_type(TestParser.Declared_typeContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestParser#declared_type}.
	 * @param ctx the parse tree
	 */
	void exitDeclared_type(TestParser.Declared_typeContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(TestParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(TestParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code int_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void enterInt_type(TestParser.Int_typeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code int_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void exitInt_type(TestParser.Int_typeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code string_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void enterString_type(TestParser.String_typeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code string_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void exitString_type(TestParser.String_typeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code bool_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void enterBool_type(TestParser.Bool_typeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code bool_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void exitBool_type(TestParser.Bool_typeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code custom_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void enterCustom_type(TestParser.Custom_typeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code custom_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 */
	void exitCustom_type(TestParser.Custom_typeContext ctx);
	/**
	 * Enter a parse tree produced by {@link TestParser#expressions}.
	 * @param ctx the parse tree
	 */
	void enterExpressions(TestParser.ExpressionsContext ctx);
	/**
	 * Exit a parse tree produced by {@link TestParser#expressions}.
	 * @param ctx the parse tree
	 */
	void exitExpressions(TestParser.ExpressionsContext ctx);
	/**
	 * Enter a parse tree produced by the {@code int}
	 * labeled alternative in {@link TestParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterInt(TestParser.IntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code int}
	 * labeled alternative in {@link TestParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitInt(TestParser.IntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code new}
	 * labeled alternative in {@link TestParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNew(TestParser.NewContext ctx);
	/**
	 * Exit a parse tree produced by the {@code new}
	 * labeled alternative in {@link TestParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNew(TestParser.NewContext ctx);
}