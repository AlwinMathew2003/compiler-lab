%{
    #include<stdio.h>
    int word=0,ch=0,l=1;
%}
%%
[a-zA-Z]+ {word++;ch+=yyleng;}
"\n" {l++;}
. {ch++;}
%%
int main(){
    yyin = fopen("input.txt","r");
    yylex();
    printf("Characters:%d Word:%d Lines:%d\n",ch,word,l);
    return 0;
}
int yywrap(){
    return 1;
}