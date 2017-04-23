#ifndef ASM_H
#define ASM_H

void yyerror(const char *msg);
int yylex(void);

void err_printf(const char *fmt, ...);
void yyerror(const char *msg);

extern int lex_src_line;

#endif /* ASM_H */
