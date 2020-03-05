// Generated from com\company\Test.g4 by ANTLR 4.7.2

    package com.company;

import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class TestParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, IDENTIFIER=16, 
		WHITESPACE=17;
	public static final int
		RULE_start = 0, RULE_variable = 1, RULE_declared_type = 2, RULE_type = 3, 
		RULE_types = 4, RULE_expressions = 5, RULE_expression = 6;
	private static String[] makeRuleNames() {
		return new String[] {
			"start", "variable", "declared_type", "type", "types", "expressions", 
			"expression"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'let'", "':='", "':'", "'['", "']'", "'int'", "'string'", "'bool'", 
			"','", "'42'", "'new'", "'('", "')'", "'{'", "'}'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, "IDENTIFIER", "WHITESPACE"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Test.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public TestParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class StartContext extends ParserRuleContext {
		public StartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_start; }
	 
		public StartContext() { }
		public void copyFrom(StartContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Var_declContext extends StartContext {
		public VariableContext variable() {
			return getRuleContext(VariableContext.class,0);
		}
		public Var_declContext(StartContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterVar_decl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitVar_decl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitVar_decl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StartContext start() throws RecognitionException {
		StartContext _localctx = new StartContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_start);
		try {
			_localctx = new Var_declContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(14);
			match(T__0);
			setState(15);
			variable();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableContext extends ParserRuleContext {
		public Token id;
		public Declared_typeContext typ;
		public ExpressionContext value;
		public TerminalNode IDENTIFIER() { return getToken(TestParser.IDENTIFIER, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Declared_typeContext declared_type() {
			return getRuleContext(Declared_typeContext.class,0);
		}
		public VariableContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variable; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterVariable(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitVariable(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitVariable(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableContext variable() throws RecognitionException {
		VariableContext _localctx = new VariableContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_variable);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(17);
			((VariableContext)_localctx).id = match(IDENTIFIER);
			setState(19);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(18);
				((VariableContext)_localctx).typ = declared_type();
				}
			}

			setState(21);
			match(T__1);
			setState(22);
			((VariableContext)_localctx).value = expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Declared_typeContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public Declared_typeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declared_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterDeclared_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitDeclared_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitDeclared_type(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Declared_typeContext declared_type() throws RecognitionException {
		Declared_typeContext _localctx = new Declared_typeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_declared_type);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(24);
			match(T__2);
			setState(25);
			type();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TypesContext typ;
		public Token s4;
		public List<Token> open = new ArrayList<Token>();
		public ExpressionContext expression;
		public List<ExpressionContext> sizes = new ArrayList<ExpressionContext>();
		public TypesContext types() {
			return getRuleContext(TypesContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(27);
			((TypeContext)_localctx).typ = types();
			setState(35);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__3) {
				{
				{
				setState(28);
				((TypeContext)_localctx).s4 = match(T__3);
				((TypeContext)_localctx).open.add(((TypeContext)_localctx).s4);
				setState(30);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__9 || _la==T__10) {
					{
					setState(29);
					((TypeContext)_localctx).expression = expression();
					((TypeContext)_localctx).sizes.add(((TypeContext)_localctx).expression);
					}
				}

				setState(32);
				match(T__4);
				}
				}
				setState(37);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypesContext extends ParserRuleContext {
		public TypesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_types; }
	 
		public TypesContext() { }
		public void copyFrom(TypesContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class String_typeContext extends TypesContext {
		public String_typeContext(TypesContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterString_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitString_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitString_type(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Custom_typeContext extends TypesContext {
		public Token id;
		public TerminalNode IDENTIFIER() { return getToken(TestParser.IDENTIFIER, 0); }
		public Custom_typeContext(TypesContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterCustom_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitCustom_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitCustom_type(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Int_typeContext extends TypesContext {
		public Int_typeContext(TypesContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterInt_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitInt_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitInt_type(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Bool_typeContext extends TypesContext {
		public Bool_typeContext(TypesContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterBool_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitBool_type(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitBool_type(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypesContext types() throws RecognitionException {
		TypesContext _localctx = new TypesContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_types);
		try {
			setState(42);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__5:
				_localctx = new Int_typeContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(38);
				match(T__5);
				}
				break;
			case T__6:
				_localctx = new String_typeContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(39);
				match(T__6);
				}
				break;
			case T__7:
				_localctx = new Bool_typeContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(40);
				match(T__7);
				}
				break;
			case IDENTIFIER:
				_localctx = new Custom_typeContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(41);
				((Custom_typeContext)_localctx).id = match(IDENTIFIER);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionsContext extends ParserRuleContext {
		public ExpressionContext first;
		public ExpressionContext expression;
		public List<ExpressionContext> last = new ArrayList<ExpressionContext>();
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExpressionsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressions; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterExpressions(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitExpressions(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitExpressions(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionsContext expressions() throws RecognitionException {
		ExpressionsContext _localctx = new ExpressionsContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_expressions);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(44);
			((ExpressionsContext)_localctx).first = expression();
			setState(49);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(45);
				match(T__8);
				setState(46);
				((ExpressionsContext)_localctx).expression = expression();
				((ExpressionsContext)_localctx).last.add(((ExpressionsContext)_localctx).expression);
				}
				}
				setState(51);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class NewContext extends ExpressionContext {
		public TypeContext typ;
		public ExpressionsContext value;
		public ExpressionsContext init;
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<ExpressionsContext> expressions() {
			return getRuleContexts(ExpressionsContext.class);
		}
		public ExpressionsContext expressions(int i) {
			return getRuleContext(ExpressionsContext.class,i);
		}
		public NewContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterNew(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitNew(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitNew(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class IntContext extends ExpressionContext {
		public IntContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).enterInt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof TestListener ) ((TestListener)listener).exitInt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof TestVisitor ) return ((TestVisitor<? extends T>)visitor).visitInt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		ExpressionContext _localctx = new ExpressionContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_expression);
		int _la;
		try {
			setState(69);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__9:
				_localctx = new IntContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(52);
				match(T__9);
				}
				break;
			case T__10:
				_localctx = new NewContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(53);
				match(T__10);
				setState(54);
				((NewContext)_localctx).typ = type();
				setState(60);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__11) {
					{
					setState(55);
					match(T__11);
					setState(57);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la==T__9 || _la==T__10) {
						{
						setState(56);
						((NewContext)_localctx).value = expressions();
						}
					}

					setState(59);
					match(T__12);
					}
				}

				setState(67);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__13) {
					{
					setState(62);
					match(T__13);
					setState(64);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la==T__9 || _la==T__10) {
						{
						setState(63);
						((NewContext)_localctx).init = expressions();
						}
					}

					setState(66);
					match(T__14);
					}
				}

				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\23J\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\3\2\3\2\3\2\3\3\3\3\5\3\26"+
		"\n\3\3\3\3\3\3\3\3\4\3\4\3\4\3\5\3\5\3\5\5\5!\n\5\3\5\7\5$\n\5\f\5\16"+
		"\5\'\13\5\3\6\3\6\3\6\3\6\5\6-\n\6\3\7\3\7\3\7\7\7\62\n\7\f\7\16\7\65"+
		"\13\7\3\b\3\b\3\b\3\b\3\b\5\b<\n\b\3\b\5\b?\n\b\3\b\3\b\5\bC\n\b\3\b\5"+
		"\bF\n\b\5\bH\n\b\3\b\2\2\t\2\4\6\b\n\f\16\2\2\2N\2\20\3\2\2\2\4\23\3\2"+
		"\2\2\6\32\3\2\2\2\b\35\3\2\2\2\n,\3\2\2\2\f.\3\2\2\2\16G\3\2\2\2\20\21"+
		"\7\3\2\2\21\22\5\4\3\2\22\3\3\2\2\2\23\25\7\22\2\2\24\26\5\6\4\2\25\24"+
		"\3\2\2\2\25\26\3\2\2\2\26\27\3\2\2\2\27\30\7\4\2\2\30\31\5\16\b\2\31\5"+
		"\3\2\2\2\32\33\7\5\2\2\33\34\5\b\5\2\34\7\3\2\2\2\35%\5\n\6\2\36 \7\6"+
		"\2\2\37!\5\16\b\2 \37\3\2\2\2 !\3\2\2\2!\"\3\2\2\2\"$\7\7\2\2#\36\3\2"+
		"\2\2$\'\3\2\2\2%#\3\2\2\2%&\3\2\2\2&\t\3\2\2\2\'%\3\2\2\2(-\7\b\2\2)-"+
		"\7\t\2\2*-\7\n\2\2+-\7\22\2\2,(\3\2\2\2,)\3\2\2\2,*\3\2\2\2,+\3\2\2\2"+
		"-\13\3\2\2\2.\63\5\16\b\2/\60\7\13\2\2\60\62\5\16\b\2\61/\3\2\2\2\62\65"+
		"\3\2\2\2\63\61\3\2\2\2\63\64\3\2\2\2\64\r\3\2\2\2\65\63\3\2\2\2\66H\7"+
		"\f\2\2\678\7\r\2\28>\5\b\5\29;\7\16\2\2:<\5\f\7\2;:\3\2\2\2;<\3\2\2\2"+
		"<=\3\2\2\2=?\7\17\2\2>9\3\2\2\2>?\3\2\2\2?E\3\2\2\2@B\7\20\2\2AC\5\f\7"+
		"\2BA\3\2\2\2BC\3\2\2\2CD\3\2\2\2DF\7\21\2\2E@\3\2\2\2EF\3\2\2\2FH\3\2"+
		"\2\2G\66\3\2\2\2G\67\3\2\2\2H\17\3\2\2\2\f\25 %,\63;>BEG";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}