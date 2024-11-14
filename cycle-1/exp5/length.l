%{
#include<stdio.h>
int  length;
%}

/* Rules Section*/
%%
[a-z A-Z0-9]+ {length=yyleng; }
"\n" {printf("Length of given string is : %d\n", length); return 0;}
%%

int main()
{
printf("Enter the string: ");
yylex();
return 0;
}