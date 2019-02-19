%{
	/* file.lex */
	#include "file.tab.h"
	#include <stdio.h>
	extern double vacinassum;
	extern double servicosum;
	extern double precoVacina;
%}

%option noinput
%option nounput
%option header-file="lex.yy.h"

%%
" "																			{return ESPACO;}
", "																		{return EXTRA;}
"V8"|"V10"|"Anti-Rábica"|"Giardíase"|"Tosse"|"Leptospirose"					{return VACINA;}
"banho"|"massagem"|"tosquia"												{return SERVICO;}
"\r\n"|"\n"																			
20[0-9]{2}\/(0[1-9]|1[012])\/(0[1-9]|1[0-9])|(2[0-9]|3[01])					{return DATA;}
[A-Z][a-zA-Z]+																{yylval.nome = yytext ;return NOME;}
[1-9][0-9]{0,1}\.[0-9]														{return PESO;}
([0-9]|[1-9][0-9]+)\.[0-9]{2}												{ yylval.valor = atof(yytext); return VALOR;}
[A-Z][0-9]{4}																{yylval.codigo = yytext ; return CODIGO;}
[1-9]																		{ yylval.qtd = atoi(yytext); return QUANTIDADE;}
.																			{fprintf(stderr,"Erro léxico: símbolo ->%s<- desconhecido\n",yytext);}
%%
