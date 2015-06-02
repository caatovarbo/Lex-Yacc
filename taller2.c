#include <stdio.h>
#include "taller2.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL, "sentencia1", "sentencia2", "sentencia3"};

int main(void)
{
   int ntoken, vtoken;

   ntoken = yylex();
   while(ntoken){
      printf("%d\n", ntoken);
      ntoken = yylex();
   }
   return 0;
}
