%{
#include <stdio.h>
#include <string.h>
#include "asm.h"
#include "asm-parse.tab.h"

int lex_src_line;
%}

DIGIT		[0-9]
HEX		({DIGIT}|[A-Fa-f])
IDSTART		[A-Za-z_]
IDCHAR		({IDSTART}|{DIGIT})
HWS		[ \t\r]
SINGLE		[,:+-\[\]]

%%

		/* handle comments */
";".*"\n"	{ ++lex_src_line; return EOL; }

		/* ignore horizontal whitespace */
{HWS}+		{ }

		/* newline */
"\n"		{ ++lex_src_line; return EOL; }

{DIGIT}+	{ yylval.ival = atoi(yytext); return INT_LITERAL; }

		/* registers */
"r"{DIGIT}	{ yylval.reg_num = yytext[1] - '0'; return REG; }

		/* instruction mnemonics */
"nop"		{ return NOP; }
"mov"		{ return MOV; }
"ld"		{ return LD; }
"st"		{ return ST; }
"add"		{ return ADD; }
"sub"		{ return SUB; }
"and"		{ return AND; }
"or"		{ return OR; }
"xor"		{ return XOR; }
"shl"		{ return SHL; }
"shr"		{ return SHR; }
"inc"		{ return INC; }
"dec"		{ return DEC; }
"jmp"		{ return JMP; }
"call"		{ return CALL; }
"ret"		{ return RET; }
"jc"		{ return JC; }
"jb"		{ return JB; }
"je"		{ return JE; }
"jne"		{ return JNE; }

{SINGLE}	{ return yytext[0]; }

		/* Identifier. */
\.?{IDSTART}{IDCHAR}* { yylval.identifier = strdup(yytext); return IDENTIFIER; }

.		{ err_printf("Unknown character: %c\n", yytext[0]); }
