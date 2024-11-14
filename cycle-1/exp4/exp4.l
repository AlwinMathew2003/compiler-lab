%{
#include<stdio.h>
%}
%%
[ \n\t] {}
%%
int main()
{
yyin=fopen("input.txt","r");
yylex();
printf("\n");
}
int yywrap()
{
return 1;
}