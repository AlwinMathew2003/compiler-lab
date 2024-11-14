%{
    #include<stdio.h>
    int valid = 1;
%}

%token letter digit

%%
start: letter s
s: letter s | digit s | ;
%%

void yyerror(){
valid = 0;
printf("Not and identifier\n");
}

int main() {
    printf("Enter the you expression: ");
    yyparse();
    if (valid == 1)
    {
        printf("It is an identifier\n");
    }
    return 0;
}