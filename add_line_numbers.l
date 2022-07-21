%{
#include<stdio.h>
int line_n = 1;
%}
%%
.*\n {fprintf(yyout, "%10d %s", line_n++);}
%%

int yywrap(void){}
int main()
{
extern FILE *yyin, *yyout;
yyin = fopen("example.c", "r");
yyout = fopen("output.c", "w");
yylex();
return 0;
}