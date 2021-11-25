/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_PROYECTOFINAL_TAB_H_INCLUDED
# define YY_YY_PROYECTOFINAL_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    DIGITOS = 258,
    RESTA = 259,
    DIVICION = 260,
    SUMA = 261,
    MULTI = 262,
    AND = 263,
    OR = 264,
    ASIG = 265,
    MENOR = 266,
    MAYOR = 267,
    MAYOIGUAL = 268,
    MENIGUAL = 269,
    COMPARACION = 270,
    DIPLE = 271,
    LLAVE1 = 272,
    LLAVE2 = 273,
    SEP_ASIG = 274,
    PA_DEC = 275,
    PA_MAIN = 276,
    PA_INPUT = 277,
    PA_OUTPUT = 278,
    PARENTESIS1 = 279,
    PARENTESIS2 = 280,
    IF = 281,
    THEN = 282,
    ELSE = 283,
    CADENA = 284,
    LETRA = 285,
    COM1 = 286,
    COM2 = 287,
    PALABRA = 288,
    COMA = 289,
    ESPACIO = 290,
    EOL = 291
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 12 "proyectofinal.y"

        char cadena[50];

#line 98 "proyectofinal.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PROYECTOFINAL_TAB_H_INCLUDED  */
