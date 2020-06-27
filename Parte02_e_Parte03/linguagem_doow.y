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
%token TigualDuplo
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
%token Ttrue
%token Tfalse
%token Timport
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
%token TdoisPontos
%token Tstring
%token Tusing
%token Tvariavel
%token TInterrogacao
%token TComparacaoE
%token TComparacaoOU
%token THashtagComentario
%token TSifrao
%token Tvar
%token Tpromessa
%token Tclass
%token Tvalor
%start inicio

%%

inicio: prog;
prog: declaraBiblioteca prog | declaraBiblioteca2Tipo prog | comecaComponent;

declaraBiblioteca: TaddLibs TabreChaves Tvar TfechaChaves caminho TpontoVirgula | TaddLibs Tvar caminho TpontoVirgula;
declaraBiblioteca2Tipo: TSifrao Tusing Tvar TpontoVirgula;
caminho: Tfrom Tstring;
comecaComponent: Tclass Tvar TabreChaves declaracaoVariaveis;
declaracaoVariaveis: variaveis declaracaoVariaveis | realizarReplace;
variaveis:  Tvariavel VAR TpontoVirgula | constante TpontoVirgula;
VAR: Tvar | Tvar Tigual palavrasOuNumeros | Tvar TabreColchete Tvar TfechaColchete | Tvar TabreColchete Tvalor TfechaColchete | Tvar Tvirgula VAR;
palavrasOuNumeros: Tvar | Tvalor | Tstring;
constante: TSifrao Tconst Tvar Tigual palavrasOuNumeros | TSifrao Tconst Tvar;


realizarReplace: Tvar replace realizarReplace | chamadaFuncao;
replace: TabreParenteses Tstring Tvirgula Tstring TfechaParenteses TpontoVirgula;
chamadaFuncao: convertePontoVirgula chamadaFuncao |
               isNullEmptyUndefined chamadaFuncao | 
               ifTern chamadaFuncao               | 
               inArray chamadaFuncao              |
               indexOf chamadaFuncao              |
               tryCatch chamadaFuncao             |
               condicao chamadaFuncao             |
               qualquerFuncao chamadaFuncao       |
               funcaoUm chamadaFuncao             |
               exemploPromise chamadaFuncao       |
               fechaChaves;
convertePontoVirgula: TconvertePontoVirgula TabreParenteses Tvar TfechaParenteses TpontoVirgula;
isNullEmptyUndefined: TisNullEmptyUndefined TabreParenteses Tvar TfechaParenteses TpontoVirgula ;
tryCatch: Ttry TabreChaves console Tcatch TabreChaves console | Ttry TabreChaves chamadaFuncao Tcatch TabreChaves chamadaFuncao |
          Ttry TabreChaves console Tcatch TabreChaves chamadaFuncao | Ttry TabreChaves chamadaFuncao Tcatch TabreChaves console;
ifTern: TifTern TabreParenteses Tvar Tvirgula Tvar Tvirgula Tvar TfechaParenteses TpontoVirgula;
inArray: TinArray TabreParenteses Tvar Tvirgula Tvar TfechaParenteses TpontoVirgula ;
indexOf: Tvar TabreParenteses Tstring TfechaParenteses TpontoVirgula;
condicao: Tif TabreParenteses Tvar TigualDuplo palavrasOuNumeros TComparacaoOU Tvar Tmaior Tvar TfechaParenteses Treturn Ttrue TpontoVirgula Telse Treturn Tfalse TpontoVirgula;

console: Tlog log console | Tlog log;
log: TabreParenteses chamada TfechaParenteses TpontoVirgula;
chamada:  Tstring Tvirgula chamada | Tstring;
qualquerFuncao: Tvar TabreParenteses TfechaParenteses TpontoVirgula;
fechaChaves: TfechaChaves | TfechaChaves fazerAsync;

fazerAsync: Tconst Tvar Tigual Tasync TabreParenteses TfechaParenteses TmaiorIgual TabreChaves Tawait Tpromessa TpontoVirgula TfechaChaves funcaoUm;
funcaoUm: Tvar TabreParenteses Tvar Tvirgula Tvar TInterrogacao TfechaParenteses TabreChaves switch TfechaChaves exemploPromise funcaoDois;
switch: Tswitch TabreParenteses Tvar TfechaParenteses TabreChaves corpoSwitch Tdefault TdoisPontos console TfechaChaves;
corpoSwitch:  Tcase palavrasOuNumeros TdoisPontos console Tbreak TpontoVirgula corpoSwitch | Tcase palavrasOuNumeros TdoisPontos console Tbreak TpontoVirgula;

exemploPromise:  Tvar TabreParenteses TfechaParenteses TabreChaves promise console Tresolve TabreParenteses TfechaParenteses TpontoVirgula TfechaChaves TfechaParenteses
                 Tponto Tthen TabreParenteses TabreParenteses TfechaParenteses TmaiorIgual TabreChaves Tthrow Tnew Terror TabreParenteses Tstring TfechaParenteses TpontoVirgula TfechaChaves TfechaParenteses
                 Tponto Tcatch TabreParenteses TabreParenteses TfechaParenteses TmaiorIgual TabreChaves console TfechaChaves TfechaParenteses TfechaChaves;

promise: Tnew Tpromise TabreParenteses TabreParenteses Tresolve Tvirgula Treject TfechaParenteses TmaiorIgual TabreChaves;
funcaoDois: Tvar TabreParenteses Tvar Tvirgula Tvar TfechaParenteses TabreChaves Tvar Tigual Tvar Tmais Tvar TpontoVirgula
            Tfor TabreParenteses Tvariavel Tvar Tigual palavrasOuNumeros TpontoVirgula Tvar Tmenor Tvar TpontoVirgula Tvar Tmais Tmais TfechaParenteses TabreChaves
            console TfechaChaves TfechaChaves TfechaChaves;

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