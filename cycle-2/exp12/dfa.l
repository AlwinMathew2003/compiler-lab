%{
    #include<stdio.h>
%}

%s Q1 Q2 Q3

%%
<INITIAL>1 BEGIN Q1;
<INITIAL>0 BEGIN Q3;
<INITIAL>\n {printf("ACCEPTED\n"); BEGIN INITIAL;}
<INITIAL>[^01\n] {printf("Invalid Input\n"); BEGIN INITIAL;}

<Q1>1 BEGIN INITIAL;
<Q1>0 BEGIN Q2;
<Q1>\n {printf("NOT ACCEPTED\n"); BEGIN INITIAL;}
<Q1>[^01\n] {printf("Invalid Input\n"); BEGIN INITIAL;}

<Q2>1 BEGIN Q3;
<Q2>0 BEGIN Q1;
<Q2>\n {printf("NOT ACCEPTED\n"); BEGIN INITIAL;}
<Q2>[^01\n] {printf("Invalid Input\n"); BEGIN INITIAL;}

<Q3>1 BEGIN Q2;
<Q3>0 BEGIN INITIAL;
<Q3>\n {printf("NOT ACCEPTED\n"); BEGIN INITIAL;}
<Q3>[^01\n] {printf("Invalid Input\n"); BEGIN INITIAL;}

%%

int main(){
    printf("Enter the binary number: ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}