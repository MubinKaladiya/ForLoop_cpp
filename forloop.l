%{
#include "forloop.tab.h"
%}

%%
for             { return FOR; }
int|float|char  { return TYPE; }
[a-zA-Z_][a-zA-Z0-9_]*   { return ID; }
[0-9]+          { return NUM; }
"="             { return '='; }
";"             { return ';'; }
"<"|">"|"=="|"!="|"<="|">="   { return RELOP; }
"++"|"--"       { return INC; }
"("             { return '('; }
")"             { return ')'; }

[ \t\n]         ;
.               { return yytext[0]; }
%%

int yywrap() {
    return 1;
}