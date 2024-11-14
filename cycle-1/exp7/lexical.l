%{
#include<stdio.h>
int COMMENT = 0;
%}

identifier [a-zA-Z_][a-zA-Z0-9]*

%%

#.* {printf("\nProcessor directive is %s",yytext);}
int|float|char|void|main|for|if|else|while|return|do {printf("\n%s is a keyword",yytext);}
\".*\" {if(!COMMENT){printf("\n%s is a string literal",yytext);}}
[0-9]+ {if(!COMMENT){printf("\n%s is a number",yytext);}}
{identifier} {printf("\n%s is an identifier",yytext);}
{identifier}\( {if(!COMMENT){printf("\nFunction is: \n %s",yytext);}}
{identifier}\([0-9]*\)? {if(!COMMENT){printf("\nFunction Call %s",yytext);}}
\{ {if(!COMMENT){printf("\n%s Block begins",yytext);}}
\} {if(!COMMENT){printf("\n%s Block ends\n",yytext);}}
"/*" {COMMENT = 1;printf("\n %s is a comment",yytext);}
"*/" {COMMENT = 0;}
= {printf("\n%s is an assignment operator",yytext);}
\>=|\<=|\==|\!=|\<|\> {printf("\n%s is a relational operator",yytext);}
[+\-*\/%] { printf("\n%s is an arithmetic operator", yytext); }
%%

int main()
{
    yyin = fopen("var.c","r");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}