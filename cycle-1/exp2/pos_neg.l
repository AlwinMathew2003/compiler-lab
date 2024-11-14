%{
#include<stdio.h>
int pos=0;
int neg = 0;
%}
%%
[-][0-9]+ {neg++;printf("Negative number:%s",yytext);}
[0-9] {pos++;printf("Positive Number:%s",yytext);}
\n {}
%%
int main(){
printf("Enter the numbers with space between them: ");
yylex();
printf("The number of positive numbers: %d\nThe number of negative numbers: %d",pos,neg);
return 0;
}
int yywrap(){
    return 1;
}