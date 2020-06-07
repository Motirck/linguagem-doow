%{
   #include <stdio.h>
   int yylex();
   int yyerror(const char *s);
%}

%token TifTern
%token TinArray
%token TindexOf
%token TconverteVirgulaPonto
%token TisNullEmptyUndefined
%token TconvertePontoVirgula
%token Ttry
%token Tcatch
%token TaddLibs
%token Treplace
%token Tasync
%token Tawait
%token Tpromise
%token Tlog
%token Tthen
%token TforEach
%token Tmap
%token Tlength
%token Treduce
%token Treturn
%token Tdefault
%token Tenum
%token Tfor
%token Tif
%token Tbreak
%token Tcase
%token Tconst
%token Twhile
%token Tcontinue
%token Tswitch
%token Telse
%token Tlet
%token Tboolean
%token Tundefined
%token Tnull
%token TmaiorIgual
%token TabreParenteses
%token TfechaParenteses
%token TpontoVirgula
%token TabreChaves
%token TfechaChaves
%token TabreColchete
%token TfechaColchete
%token tTrue
%token tFalse
%token tImport
%token Tigual
%token TigualTriplo
%token Tvirgula
%token Tporcentagem
%token Tmenor
%token Tmaior
%token Tmenos
%token Tmais
%token Tvezes
%token Tdivisao
%token Tfrom
%token Taspas
%token Tponto
%token Tthrow
%token Tnew
%token Terror
%token Tresolve
%token Treject
%token Tfunction
%token Tusing
%token Tvariavel
%token TInterrogacao
%token TComparacaoE
%token TComparacaoOU
%token THashtagComentario
%token TSifrao
%token Tvar
%token Tvalor
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