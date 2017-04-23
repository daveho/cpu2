#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include "asm.h"

void err_printf(const char *fmt, ...) {
	va_list args;

	va_start(args, fmt);
	vfprintf(stderr, fmt, args);
	va_end(args);
}

void yyerror(const char *msg) {
	err_printf("Line %d: %s\n", lex_src_line, msg);
}

int main(int argc, char **argv) {

	if (argc != 2) {
		fprintf(stderr, "Usage: asm <filename>\n");
		exit(1);
	}
	const char *filename = argv[1];

	extern FILE* yyin;
	yyin = fopen(filename, "r");
	if (!yyin) {
		printf(stderr, "Couldn't open %s: %s\n", filename, strerror(errno));
		exit(1);
	}

	yyparse();

	return 0;
}
