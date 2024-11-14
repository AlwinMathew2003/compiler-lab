%{
#include<stdio.h>
int valid = 1;
%}

%token id num op

%%
start: id '=' s ';'
s: id x | num x | '-'num x | '('s')';
x: op s | '-'s |;
%%

void yyerror(){
printf("Invalid expression\n");
valid = 0;
}

int main()
{
    printf("Enter the expression: ");
    yyparse();
    if(valid == 1)
    {
        printf("Valid Expression\n");
        return 0;
    }
}
