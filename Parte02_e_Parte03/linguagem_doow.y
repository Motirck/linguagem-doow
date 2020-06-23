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
%token Tvalor
%start inicio

%%

inicio: prog;

declaraBiblioteca: TaddLibs TabreChaves Tvar TfechaChaves caminho |
                   TaddLibs Tvar caminho;
caminho: Tfrom Taspas Tvar Taspas;

replace: Treplace TabreParenteses Taspas palavrasOuNumeros 
         Taspas Tvirgula Taspas palavrasOuNumeros Taspas TfechaParenteses;

palavrasOuNumeros: Tvar | Tvalor;

console: Tlog log;

log: TabreParenteses chamada TfechaParenteses TpontoVirgula;

chamada:  Taspas palavrasOuNumeros Taspas Tvirgula chamada | Taspas palavrasOuNumeros Taspas | ;

ifTern: TifTern TabreParenteses Tvar Tvirgula Tvar Tvirgula Tvar TpontoVirgula;

inArray: TinArray TabreParenteses Tvar Tvirgula Tvar TfechaParenteses TpontoVirgula ;

indexOf: Tponto TindexOf TabreParenteses Taspas palavrasOuNumeros Taspas TpontoVirgula;

isNullEmptyUndefined: TisNullEmptyUndefined TabreParenteses Tvar TfechaParenteses TpontoVirgula ;

tryCatch: Ttry TabreChaves console TfechaChaves Tcatch tabreChaves console TfechaChaves ;

promise: Tnew Tpromise TabreParenteses Tresolve Tvirgula Treject TfechaParenteses;

convertePontoVirgula: TconvertePontoVirgula TabreParenteses Tvar TfechaParenteses TpontoVirgula;

forEach: Tvar Tponto TforEach TabreParenteses Tvar TmaiorIgual corpoForEach TfechaParenteses TpontoVirgula;

corpoForEach: corpoGeral;

map: Tvar Tponto Tmap TabreParenteses Tfunction TabreParenteses Tvar TfechaParenteses TabreChaves corpoMap TfechaChaves TfechaParenteses TpontoVirgula;

corpoMap: corpoGeral;

length: Tponto Tlength ;

reduce: Tponto Treduce TabreParenteses Tvar tfechaParenteses TpontoVirgula;

enum: Tenum Tvar TabreChaves corpoEnum;

corpoEnum: Tvar Tvirgula corpoEnum | Tvar Tvirgula TfechaChaves;

return: Treturn corpoCodigo;

corpoCodigo: corpoGeral;

tiposDeVariavel: var | const;

declaraVariavel: tiposDeVariavel tVar inicializaVarivel TpontoVirgula | tiposDeVariavel tvar TpontoVirgula;

inicializaVarivel: Tigual stringOuNumero;

stringOuNumero: Taspas Tvar Taspas | Tvalor;

switch: Tswitch tabreParenteses tVar tfechaParenteses TabreChaves corpoSwitch;

corpoSwitch:  Tcase Tvar TdoisPontos corpoCase Tbreak TpontoVirgula corpoSwitch | Tcase Tvar TdoisPontos corpoCase Tbreak TpontoVirgula;

corpoCase: corpoGeral;

condicoes: TmaiorIgual | Tmaior | Tmenor | Tmenor Tigual;

while: Twhile tabreParenteses palavrasOuNumeros condicoes palavrasOuNumeros TfechaParenteses TabreChaves corpowhile TfechaChaves;

corpoWhile: corpoGeral;

TiposDeFuncao: void | int | char;

corpoGeral: 
   console
   | chamada
   | ifTern
   | inArray
   | indexOf
   | isNullEmptyUndefined
   | tryCatch
   | promise
   | convertePontoVirgula
   | forEach
   | map
   | length
   | reduce
   | enum
   | declaraVariavel
   | inicializaVarivel
   | switch
   | condicoes
   | while corpoGeral
   | continuacaoCodigo;  

continuacaoCodigo: 



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