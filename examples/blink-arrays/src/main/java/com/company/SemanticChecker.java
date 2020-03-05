package com.company;

import org.antlr.v4.runtime.RuleContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SemanticChecker extends TestBaseVisitor {
    private HashMap<RuleContext, Boolean> contexts = new HashMap<>();

    @Override
    public Type visitVar_decl(TestParser.Var_declContext ctx) {
        return (Type) visit(ctx.variable());
    }

    @Override
    public Type visitDeclared_type(TestParser.Declared_typeContext ctx) {
        return (Type) visit(ctx.type());
    }

    @Override
    public List<TestParser.ExpressionContext> visitExpressions(TestParser.ExpressionsContext ctx) {
        List<TestParser.ExpressionContext> expressions = new ArrayList<TestParser.ExpressionContext>();
        expressions.add(ctx.first);
        expressions.addAll(ctx.last);
        return expressions;
    }

    @Override
    public Type visitVariable(TestParser.VariableContext ctx) {
        contexts.put(ctx.getRuleContext(), false);
        Type lhs = (Type) visit(ctx.typ);
        contexts.put(ctx.getRuleContext(), true);
        Type rhs = (Type) visit(ctx.value);
        if (!lhs.equals(rhs)) {
            // print error here
            return Type.error;
        }
        return lhs;
    }

    @Override
    public Type visitType(TestParser.TypeContext ctx) {
        Type thing = (Type) visit(ctx.typ);
        boolean needSizes = contexts.get(ctx.getParent().getParent().getRuleContext());
        int dimensions = ctx.open.size();
        if (needSizes) {
            if(ctx.sizes != null && !ctx.sizes.isEmpty()) {
                if(dimensions != ctx.sizes.size()) {
                    // report an error
                }
                for (var size : ctx.sizes) {
                    if (!visit(size).equals(Type.integer)) {
                        // report an error
                    }
                }
            }
        }
        thing.setDimensions(dimensions);
        return thing;
    }

    @Override
    public Type visitInt_type(TestParser.Int_typeContext ctx) {
        return Type.integer;
    }

    @Override
    public Type visitString_type(TestParser.String_typeContext ctx) {
        return Type.integer;
    }

    @Override
    public Type visitBool_type(TestParser.Bool_typeContext ctx) {
        return Type.bool;
    }

    @Override
    public Type visitCustom_type(TestParser.Custom_typeContext ctx) {
        return new Type(ctx.id.getText(), 0);
    }

    @Override
    public Type visitInt(TestParser.IntContext ctx) {
        return Type.integer;
    }

    @Override
    public Type visitNew(TestParser.NewContext ctx) {
        contexts.put(ctx.getRuleContext(), true);
        Type child = (Type) visit(ctx.typ);
        if(child.getDimensions() > 0 && !ctx.value.isEmpty()) {
            //report error
        }
        if(child.getDimensions() == 0 && !ctx.init.isEmpty()) {
            //report error
        }
        if(child.getDimensions() > 0 && !ctx.init.isEmpty()) {
            child.setDimensions(child.getDimensions() - 1);
            for(var otherChild : (List< TestParser.ExpressionContext>)visit(ctx.init)) {
                Type typOC = (Type) visit(otherChild);
                if(!child.equals(typOC)) {
                    //report an error
                }
            }
            child.setDimensions(child.getDimensions() + 1);
        }
        return child;
    }
}
