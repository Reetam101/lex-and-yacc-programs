%{
#include<stdio.h>
%}
%token NUMBER
%token VARIABLE

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
S: VARIABLE'='E {
    printf("\n Valid expression\n");
    return 0;
}
E:E'+'E
|E'-'E
|E'*'E
|E'/'E
|E'%'E
|'('E')'
|NUMBER
|VARIABLE
;

%%

void main()
{ 
printf("\nEnter Any Arithmetic Expression which can have operations Addition, Subtraction, Multiplication, Divison, Modulus and Round brackets:\n");
yyparse();
}

void yyerror()
{
printf("\n Invalid expression\n");
}