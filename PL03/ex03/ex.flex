%{
    int count = 0;
%}
%option nounput
%%
[0-9]{2}-[A-Z]{2}-[0-9]{2}  { printf("Matricula Válida: %s", yytext); }
\n              { printf("\n"); }
.               { ; }
<<EOF>>         return 0;
%%
    int main() {
        yylex();
        printf("\n");
        return 0;
    }