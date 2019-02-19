
%{	/* file.y */
	#include <stdio.h>
	#include <string.h>
	#include "lex.yy.h"
	void yyerror(const char *s);
	int yyparse();
	float vacinassum=0;

	float servicosum=0;

	float precoVacina=10;

	float numServicos=0;

	int totalCount=0;
	char tempCodigo[20];
	char tempNome[10];
%}
%define parse.error verbose
%union{
	char * codigo;
	char * nome;
	float valor;
	int qtd;
}

%token <codigo> CODIGO 
%token <nome> NOME 
%token PESO 
%token DATA 
%token SERVICO 
%token <valor> VALOR 
%token VACINA
%token <qtd> QUANTIDADE
%token EXTRA
%token ESPACO
%%

entradas : 			cabecalho entradas 
					|
					cabecalho ESPACO
					|
					cabecalho
					|
					entradas cabecalho 				
					;

cabecalho :			codigo_temp ESPACO nome_temp ESPACO data_temp ESPACO linhaext					
					|
					codigo_temp ESPACO nome_temp ESPACO peso_temp ESPACO data_temp ESPACO linhaext			
					|
					error 							{printf("Erro na ordem da linha\n");}
					;

codigo_temp:		CODIGO							{strcpy(tempCodigo, $1);}
					|
					error							{printf("Erro no código!\n");}
					;
				
nome_temp: 			NOME							{strcpy(tempNome, $1);}
					|
					error							{printf("Erro no nome!\n");}	
					;

peso_temp:			PESO
					|
					error							{printf("Erro no peso!\n");}
					;	
				
data_temp:			DATA
					|
					error							{printf("Erro na data!\n");}
					;
entradaservico :    SERVICO ESPACO valorh			{totalCount++;}
                	|
                	error							{printf("Erro no serviço ou falta espaço!\n");}
                	;

entradavacina : 	VACINA ESPACO quantidade_temp	
					|
					error							{printf("Erro na vacina ou falta espaço!\n");}
                	;
                	
quantidade_temp: 	QUANTIDADE						{vacinassum+= $1; totalCount+=1;}
					|
					error							{printf("Erro na quantidade!\n");}
					;

linha	:			entradaservico	
					|
					entradavacina	
					|
					entradaservico extra	
					|
					entradavacina extra      
					;
            
extra: 				EXTRA linha
					|
					error							{printf("Errro na virgula - falta!\n");}
					;
		

linhaext : 			
					linha            				{printf("%s (%s) paga %d serviços/vacinas %.2f\n",tempNome,tempCodigo,totalCount,vacinassum*precoVacina+servicosum);
					                                 vacinassum=0.0;
					                                 servicosum=0.0;
					                                 numServicos=0;
					                                 totalCount=0;}
					|
					linha linhaext    							                        
					;

valorh : 	VALOR									{servicosum+=yylval.valor;}
			|
			error									{printf("Erro no valor!\n");}
			;			

%%
int main(){
	yyparse();
	return 0;
}
void yyerror(const char *s){
	printf("\n\nErro: %s\n",s);
}
