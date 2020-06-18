%{
	#include "y.tab.h"
%}
var [A-Za-z]+[A-Za-z0-9.]*
valor [0-9]+

%%


"ifTern" 				{ return TifTern; }
"inArray" 				{ return TinArray; }
"indexOf" 				{ return TindexOf; }
"converteVirgulaPonto" 	{ return TconverteVirgulaPonto; }
"isNullEmptyUndefined" 	{ return TisNullEmptyUndefined; }
"convertePontoVirgula" 	{ return TconvertePontoVirgula; }
"try" 					{ return Ttry; }
"catch" 				{ return Tcatch; }
"addLibs" 				{ return TaddLibs; }
"replace"				{ return Treplace; }
"async" 				{ return Tasync; }
"await" 				{ return Tawait; }
"Promise" 				{ return Tpromise; }
"console.log" 			{ return Tlog; }
"then" 					{ return Tthen; }
"forEach" 				{ return TforEach; }
"map" 					{ return Tmap; }
"length" 				{ return Tlength; }
"reduce" 				{ return Treduce; }
"return" 				{ return Treturn; }
"default" 				{ return Tdefault; }
"enum" 					{ return Tenum; }
"for" 					{ return Tfor; }
"if" 					{ return Tif; }
"break" 				{ return Tbreak; }
"case" 					{ return Tcase; }
"const" 				{ return Tconst; }
"while" 				{ return Twhile; }
"continue" 				{ return Tcontinue; }
"switch" 				{ return Tswitch; }
"else" 					{ return Telse; }
"let" 					{ return Tlet; }
"boolean" 				{ return Tboolean; }
"undefined" 			{ return Tundefined; }
"null" 					{ return Tnull; }
"=>" 					{ return TmaiorIgual; }
"("						{ return TabreParenteses; }
")"						{ return TfechaParenteses; }
";"						{ return TpontoVirgula; }
"{"						{ return TabreChaves; }
"}"						{ return TfechaChaves; }
"["						{ return TabreColchete; }
"]"						{ return TfechaColchete; }
"true"  				{ return tTrue; }
"false" 				{ return tFalse; }
"import" 				{ return tImport; }
"="						{ return Tigual; }
"==="					{ return TigualTriplo; }
","						{ return Tvirgula; }
"%"						{ return Tporcentagem; }
"<" 					{ return Tmenor; }
">" 					{ return Tmaior; }
"-"						{ return Tmenos; }
":"						{ return TdoisPontos; }
"+"						{ return Tmais; }
"*"						{ return Tvezes; }
"/"						{ return Tdivisao; }
"from"  				{ return Tfrom; }
"\""					{ return Taspas; }
"." 					{ return Tponto; }
"throw" 				{ return Tthrow; }
"new"   				{ return Tnew; }
"Error" 				{ return Terror; }
"resolve" 				{ return Tresolve; }
"reject" 				{ return Treject;}
"function" 				{ return Tfunction;}
"using" 				{ return Tusing;}
"var" 					{ return Tvariavel;}
"?" 					{ return TInterrogacao;}
"&&" 					{ return TComparacaoE;}
"||" 					{ return TComparacaoOU;}
"#" 					{ return THashtagComentario;}
"$" 					{ return TSifrao;}
{var} 					{ return Tvar; }
{valor} 				{ return Tvalor; }
[ \n\t] 

%%
