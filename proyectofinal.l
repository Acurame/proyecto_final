%{
#include "proyectofinal.tab.h"

// Miguel Luis Andres Terraza Lopez 201808010
// Jhony Brayan Hernandez Hernandez 201808012
%}

%%
["-"]               {return RESTA;}
["/"]               {return DIVICION;}
["+"]               {return SUMA;}
["*"]               {return MULTI;}
["&&"]              {return AND;}
["||"]              {return OR;}


["="]               {return ASIG;}


["<"]               {return MENOR;}
[">"]               {return MAYOR;}
">="                {return MAYOIGUAL;}
"<="                {return MENIGUAL;}
"=="                {return COMPARACION;}
"<>"                {return DIPLE;}
["{"]               {return LLAVE1;}
["}"]               {return LLAVE2;} 
["("]               {return PARENTESIS1;}
[")"]               {return PARENTESIS2;}
[","]               {return COMA;}
[" "]               {return ESPACIO;}

[":;"]              {return SEP_ASIG;}

"DEC"|"dec"         {return PA_DEC;}
"MAIN"|"main"       {return PA_MAIN;}
"INPUT"|"intput"    {return PA_INPUT;}
"OUTPUT"|"output"   {return PA_OUTPUT;}
      
"IF"|"if"           {return IF;}
"THEN"|"then"       {return THEN;}
"ELSE"|"else"       {return ELSE;}

\"[^\n"]*\"         {return CADENA;}
[a-zA-Z]+           {return PALABRA;}
[0-9]+              {strcpy(yylval.cadena,yytext); return DIGITOS;}

"//"                {return COM1;}
"*/"                {return COM2;}
[\n]                {return EOL;}

.                   {}

%%