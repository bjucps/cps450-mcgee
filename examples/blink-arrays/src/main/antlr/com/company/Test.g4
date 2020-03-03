grammar Test;

@header {
    package com.company;
}

/**
 * Parser Rules
 */

start: 'let' variable # var_decl;

variable: id=IDENTIFIER typ=declared_type? ':=' value=expression;

declared_type: ':' type;

type: typ=types (open+='[' sizes+=expression? ']')*;

types: 'int' # int_type | 'string' # string_type | 'bool' # bool_type | id=IDENTIFIER # custom_type;

expressions: first=expression (',' last+=expression)*;

expression: '42' # int
          | 'new' typ=type ('(' value=expressions? ')')? ('{' init=expressions? '}')? # new;

IDENTIFIER: 'glob' | 'blob' | 'slob';

fragment SPACE_AND_TAB: [\u0009\u0020];
WHITESPACE: SPACE_AND_TAB+ -> skip;