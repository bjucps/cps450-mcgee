// Generated from com\company\Test.g4 by ANTLR 4.7.2

    package com.company;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link TestParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface TestVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by the {@code var_decl}
	 * labeled alternative in {@link TestParser#start}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar_decl(TestParser.Var_declContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestParser#variable}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariable(TestParser.VariableContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestParser#declared_type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclared_type(TestParser.Declared_typeContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(TestParser.TypeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code int_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInt_type(TestParser.Int_typeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code string_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitString_type(TestParser.String_typeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code bool_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBool_type(TestParser.Bool_typeContext ctx);
	/**
	 * Visit a parse tree produced by the {@code custom_type}
	 * labeled alternative in {@link TestParser#types}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCustom_type(TestParser.Custom_typeContext ctx);
	/**
	 * Visit a parse tree produced by {@link TestParser#expressions}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressions(TestParser.ExpressionsContext ctx);
	/**
	 * Visit a parse tree produced by the {@code int}
	 * labeled alternative in {@link TestParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInt(TestParser.IntContext ctx);
	/**
	 * Visit a parse tree produced by the {@code new}
	 * labeled alternative in {@link TestParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNew(TestParser.NewContext ctx);
}