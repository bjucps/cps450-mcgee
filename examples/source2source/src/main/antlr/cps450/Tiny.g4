// This grammar modified from https://github.com/antlr/grammars-v4/blob/master/tiny/tiny.g4
// Modifications by S. Schaub

/*
BSD License
Copyright (c) 2016, Tom Everett
All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of Tom Everett nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

grammar Tiny;

@header{ 
package cps450; 
} 


program
   : 'BEGIN' stm_lst=stmt_list 'END'
   ;


stmt_list
   : (stmtList += stmt)+
   ;

stmt
   : astmt=assign_stmt 
   | rstmt=read_stmt   
   | wstmt=write_stmt  
   ;

assign_stmt
   : id=ID ':=' exp=expr
   ;

read_stmt
   : 'READ' ids=id_list
   ;

write_stmt
   : 'WRITE' expList=expr_list
   ;

id_list
   : idList+=ID (',' idList+=ID)*
   ;

expr_list
   : exprList+=expr (',' exprList+=expr)*
   ;

expr returns [Double value]
   : e1=expr op=mul_op e2=expr  # MulExpr
   | e1=expr op=add_op e2=expr  # AddExpr
   | te=term                    # TermExpr
   ;

term returns [Double value]
   : id=ID            # IdTerm
   | anInt=integer       # IntTerm
   | '(' e=expr ')'  # ParTerm
   ;

integer
   : '-'? NUMBER
   ;

add_op
   : '+'
   | '-'
   ;

mul_op
   : '*'
   | '/'
   ;



ID
   : ('a' .. 'z' | 'A' .. 'Z')+
   ;

NUMBER
   : ('0' .. '9')+
   ;

WS
   : [ \r\n] -> skip
   ;