%{
   #include <stdio.h>
   int yylex();
   int yyerror(const char *s);
%}

%token Thashtag
%token Tinclude
%token Tmenor
%token Tmaior
%token Tdefine
%token Taspas
%token Tfloat
%token Tint
%token Tchar
%token Tvoid
%token Treturn
%token Tfor
%token Tmain
%token Tmenos
%token Tmais
%token Tvezes
%token Tdivisao
%token TabreParenteses
%token TfechaParenteses
%token TpontoVirgula
%token TabreChaves
%token TfechaChaves
%token TabreColchete
%token TfechaColchete
%token Tigual
%token Tvar
%token Tvalor
%token Tvirgula
%token Tporcentagem
%token Tum

%start inicio

%%

inicio: prog;


%%

int main(void)
{
   yyparse();
   return(1);
}
int yywrap(void)
{
   return(1);
}

int yyerror (char const *s) 
{
   fprintf (stderr, "%s\n", s);
}