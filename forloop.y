%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token FOR TYPE ID NUM RELOP INC

%%

loop:
    FOR '(' init ';' condition ';' increment ')' 
    { printf("Valid C++ for loop\n"); }
;

init:
    TYPE ID '=' NUM
;

condition:
    ID RELOP NUM
;

increment:
    ID INC
;

%%

void yyerror(const char *s) {
    printf("Invalid C++ for loop\n");
}

int main() {
    printf("Enter for loop:\n");
    yyparse();
    return 0;
}