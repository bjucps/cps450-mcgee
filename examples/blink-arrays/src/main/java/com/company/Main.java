package com.company;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;

public class Main {

    public static void main(String[] args) {
	    String badInput = "let glob: blob[][] := new blob[42][42] { new blob[42] { new blob() }, new blob[42] { new blob() } }";
        TestLexer lexer = new TestLexer(CharStreams.fromString(badInput));
        CommonTokenStream commonTokenStream = new CommonTokenStream(lexer);
        TestParser parser = new TestParser(commonTokenStream);
        var context = parser.start();
        new SemanticChecker().visit(context);
        new CodeGenerator().visit(context);
    }
}
