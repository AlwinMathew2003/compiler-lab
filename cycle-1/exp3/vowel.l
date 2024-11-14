%{
int vow_count=0;
int const_count =0;
%}
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}
"\n" {printf("Vowels = %d \nConsonants = %d\n",vow_count, const_count);return 0;}
%%
int main()
{
printf("Enter the string of vowels and consonants:");
yylex();
return 0;
}
int yywrap()
{
return 0;
}
