%{
#include<stdio.h>
#include<stdlib.h>
char p = 'A';
%}
%union{char dval;}
%token NUM
%type <dval> S
%type <dval> E
%left '+''-'
%left '*''/'
%%
S:E {printf("\nX=%c\n",$$);}
E:NUM{}
| E'+'E {printf("\n%c=%c+%c",p,$1,$3);$$=p;p++;}
| E'-'E {printf("\n%c=%c-%c",p,$1,$3);$$=p;p++;}
| E'*'E {printf("\n%c=%c*%c",p,$1,$3);$$=p;p++;}
| E'/'E {printf("\n%c=%c/%c",p,$1,$3);$$=p;p++;}
%%
int main()
{
    printf("Enter the expression:\n");
    yyparse();
    printf("\nExpression is valid\n");
    return 0;
}
int yyerror()
{
    printf("\nExpression is invalid");
    return 0;
}
