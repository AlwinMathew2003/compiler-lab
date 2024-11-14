%{
    #include<stdio.h>
    int flag = 0;
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
ArithmeticExpression: E {
    printf("Result:%d",$$);
    return 0;
};
E: E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$ = $2;}
| NUMBER {$$ = $1;}
;
%%

void main(){
    printf("Enter the expression:\n");
    yyparse();
    if(flag == 0)                 // If no error, indicate the expression is valid
        printf("\nEntered arithmetic expression is Valid\n\n");
    return 0;
}

void yyerror(){
flag = 1;
printf("Invalid Input");

}
