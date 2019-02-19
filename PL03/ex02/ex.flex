%{
    int count = 0;
%}
%option nounput
%%
FEUP            { printf("ISEP"); }
2007            { printf("2008"); }
.               { printf("%s", yytext); }
\n              { printf("\n"); }
<<EOF>>         return 0;
%%
    int main() {
        yylex();
        printf("\n");
        return 0;
    }