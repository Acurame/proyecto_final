%{
#include <stdio.h>
#include <string.h>

void yyerror(char *s); 
int yylex();
void nuevaTemp(char *s);
// Miguel Luis Andres Terraza Lopez 201808010
// Jhony Brayan Hernandez Hernandez 201808012
%}

%union{
        char cadena[50];
}

%token <cadena>DIGITOS

%token RESTA DIVICION SUMA MULTI AND OR ASIG
%token  MENOR MAYOR MAYOIGUAL MENIGUAL COMPARACION DIPLE LLAVE1 LLAVE2
%token  SEP_ASIG PA_DEC PA_MAIN PA_INPUT PA_OUTPUT PARENTESIS1 PARENTESIS2 
%token  IF THEN ELSE CADENA LETRA COM1 COM2 PALABRA
%token COMA ESPACIO
//%token NUM
%token EOL
%type <cadena> expresion termin factor

%%

programa: PA_MAIN LLAVE1 bloque LLAVE2                  { printf("-----------\n");}
        ;
bloque: sentencia otra_sentencia
        ;
otra_sentencia: EOL sentencia otra_sentencia
        |            
        ;
sentencia: asignacion   
        | lectura 
        | escritura
        ;
variable: PA_DEC PALABRA COMA PALABRA
        | PALABRA SEP_ASIG
        ;
asignacion:variable ASIG
        |ASIG expresion
        ;
expresion: expresion SUMA termin                        {nuevaTemp($$);printf("%s=%s+%s\n",$$,$1,$3); }
        | expresion RESTA termin                        {nuevaTemp($$);printf("%s=%s-%s\n",$$,$1,$3); }
        | termin
        ;
termin: termin MULTI factor                             {nuevaTemp($$);printf("%s=%s*%s\n",$$,$1,$3); }
        | termin DIVICION factor                        {nuevaTemp($$);printf("%s=%s/%s\n",$$,$1,$3); }
        | factor
        ;
factor: PARENTESIS1 expresion PARENTESIS2               {strcpy($$,$2);}
        | DIGITOS
        ;

lectura: PA_INPUT variable
        ;
escritura: PA_OUTPUT variable 
        ;


%%
void nuevaTemp(char *s)
{
        static int actual=1;
        sprintf(s,"t%d",actual++);
}

void yyerror(char *msg){
fprintf(stderr, "Error: %s", msg);
}
int main(int argc, char **argv){
yyparse();
return 0;
}