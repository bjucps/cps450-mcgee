// Generated from com\company\Test.g4 by ANTLR 4.7.2

    package com.company;

import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class TestLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, IDENTIFIER=16, 
		WHITESPACE=17;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
			"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "IDENTIFIER", "SPACE_AND_TAB", 
			"WHITESPACE"
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


	public TestLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Test.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\23l\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7"+
		"\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\13"+
		"\3\13\3\13\3\f\3\f\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\5\21b\n\21\3\22"+
		"\3\22\3\23\6\23g\n\23\r\23\16\23h\3\23\3\23\2\2\24\3\3\5\4\7\5\t\6\13"+
		"\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\2%\23\3"+
		"\2\3\4\2\13\13\"\"\2m\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2"+
		"\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25"+
		"\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2"+
		"\2\2\2!\3\2\2\2\2%\3\2\2\2\3\'\3\2\2\2\5+\3\2\2\2\7.\3\2\2\2\t\60\3\2"+
		"\2\2\13\62\3\2\2\2\r\64\3\2\2\2\178\3\2\2\2\21?\3\2\2\2\23D\3\2\2\2\25"+
		"F\3\2\2\2\27I\3\2\2\2\31M\3\2\2\2\33O\3\2\2\2\35Q\3\2\2\2\37S\3\2\2\2"+
		"!a\3\2\2\2#c\3\2\2\2%f\3\2\2\2\'(\7n\2\2()\7g\2\2)*\7v\2\2*\4\3\2\2\2"+
		"+,\7<\2\2,-\7?\2\2-\6\3\2\2\2./\7<\2\2/\b\3\2\2\2\60\61\7]\2\2\61\n\3"+
		"\2\2\2\62\63\7_\2\2\63\f\3\2\2\2\64\65\7k\2\2\65\66\7p\2\2\66\67\7v\2"+
		"\2\67\16\3\2\2\289\7u\2\29:\7v\2\2:;\7t\2\2;<\7k\2\2<=\7p\2\2=>\7i\2\2"+
		">\20\3\2\2\2?@\7d\2\2@A\7q\2\2AB\7q\2\2BC\7n\2\2C\22\3\2\2\2DE\7.\2\2"+
		"E\24\3\2\2\2FG\7\66\2\2GH\7\64\2\2H\26\3\2\2\2IJ\7p\2\2JK\7g\2\2KL\7y"+
		"\2\2L\30\3\2\2\2MN\7*\2\2N\32\3\2\2\2OP\7+\2\2P\34\3\2\2\2QR\7}\2\2R\36"+
		"\3\2\2\2ST\7\177\2\2T \3\2\2\2UV\7i\2\2VW\7n\2\2WX\7q\2\2Xb\7d\2\2YZ\7"+
		"d\2\2Z[\7n\2\2[\\\7q\2\2\\b\7d\2\2]^\7u\2\2^_\7n\2\2_`\7q\2\2`b\7d\2\2"+
		"aU\3\2\2\2aY\3\2\2\2a]\3\2\2\2b\"\3\2\2\2cd\t\2\2\2d$\3\2\2\2eg\5#\22"+
		"\2fe\3\2\2\2gh\3\2\2\2hf\3\2\2\2hi\3\2\2\2ij\3\2\2\2jk\b\23\2\2k&\3\2"+
		"\2\2\5\2ah\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}