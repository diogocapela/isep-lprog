1 %{
2 #include <stdio.h>
3 int numArgs=0, numErros=0;
4 %}
5
6 %token ID INT REAL
7 %start inicio
8
9 %%
10 inicio: /*vazio*/
11 | lista_args
12 ;
13 lista_args: arg
14 | lista_args ',' arg
15 ;
16 arg: ID {numArgs++;}
17 | INT {numArgs++;}
18 | REAL {numArgs++;}
19 ;
20 %%
21
22 int main () {
23 yyparse () ;
24 if (numErros==0)
25 printf("Frase válida \n") ;
26 else
27 printf ("Frase inválida \nNúmero de erros : %d\n" ,numErros) ;
28 printf ("Número de argumentos é %d\n",numArgs) ;
29 return 0;
30 }
31 int yyerror (char *s) {
32 numErros++;
33 printf("erro sintactico/semantico:%s\n",s) ;
34 }