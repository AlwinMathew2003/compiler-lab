%{
#include <stdio.h>
int word_count = 0;
%}

%%
[a-zA-Z]+ { word_count++; }  // Match a word and increment the count

\n      { /* Do nothing for new lines */ }

%%

int main() {
    yylex();
    printf("Total words: %d\n", word_count);
    return 0;
}
