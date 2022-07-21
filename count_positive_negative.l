%{
#include <stdio.h>
int pn = 0, nn=0;
%}
%%
\+?[0-9]+ {pn++;}
\-[0-9]+ {nn++;}
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
printf("Positive = %d", pn);
printf("Negative = %d", nn);
return 0;
}