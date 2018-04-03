%{
#include "y.tab.h"
%}
%%
[0-9]+  { yylval.num=atoi(yytext);return NUM;}
[\n\t]  {return 0;}
.       {return yytext[0];}
%% 
int yywrap (void)  
{return 1;} 

