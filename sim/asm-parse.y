%{

#include "asm.h"



%}

%token INT_LITERAL IDENTIFIER
%token REG
%token NOP MOV LD ST
%token ADD SUB AND OR XOR SHL SHR INC DEC
%token JMP CALL RET JC JB JE JNE
%token EOL

%union {
	int reg_num;
	int ival;
	char *identifier;
}

%%

instruction_list :
	  instruction_list opt_label instruction EOL	{ }
	| /* epsilon */
	;

opt_label :
	   IDENTIFIER ':' EOL		{ }
	;

instruction :
	  NOP				{ }
	| MOV REG ',' REG		{ }
	| MOV REG ',' INT_LITERAL	{ }
	| LD REG ',' '[' pair ']'			{ }
	| LD REG ',' '[' pair '+' INT_LITERAL ']'	{ }
	| LD REG ',' '[' pair '+' REG ']'		{ }
	| ST '[' pair ']' ',' REG			{ }
	| ST '[' pair '+' INT_LITERAL ']' ',' REG	{ }
	| ST '[' pair '+' REG ']' ',' REG		{ }
	| ADD REG ',' REG		{ }
	| SUB REG ',' REG		{ }
	| AND REG ',' REG		{ }
	| OR REG ',' REG		{ }
	| XOR REG ',' REG		{ }
	| SHL REG			{ }
	| SHR REG			{ }
	| INC REG			{ }
	| DEC REG			{ }
	| JMP label			{ }
	| JMP pair			{ }
	| CALL label			{ }
	| CALL pair			{ }
	| RET				{ }
	| JC label			{ }
	| JB label			{ }
	| JE label			{ }
	| JNE label			{ }
	;

pair :
	  REG ':' REG			{ }
	;

label :
	  IDENTIFIER			{ }
	;

%%
