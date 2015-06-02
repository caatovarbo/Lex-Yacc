%{
#include "taller2.h"
%}

%%
:			                  return COLON;
"sentencia1"		        return SENTENCIA;
"sentencia2"		        return SENTENCIA;
"sentencia3"		        return SENTENCIA;
"->"			              return CONDICIONAL;
"<->"			              return BICONDICIONAL;
"&"			                return CONJUNCION;
"|"			                return DISYUNCION;
"="			                return ASIGNACION;
[vfVF]			            return VALOR;
[a-zA-Z]   	            return LETRA;
[ \t\n]*      			    ;
%%

int yywrap(void)
{
   return 1;
}
