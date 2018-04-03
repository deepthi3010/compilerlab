%{
#include<stdio.h>
void yyerror(char*);
int yylex(void);
char p='A'-1;
char t,t1;
%}
%union
{
char *str;
int num;
}

%token NUM
%type<str> S E
%left '+' '-'
%left '*' '/'
%nonassoc UMINUS
%%
S : E {printf(" x = %cn",$$);}
;
E : NUM {}
| E '+' E {p++;t=$1;t1=$3;printf("n %c = %c + %c ",p,t,t1);$$=p;}
| E '-' E {p++;printf("n %c = %c – %c ",p,$1,$3);$$=p;}
| E '*' E {p++;printf("n %c = %c * %c ",p,$1,$3);$$=p;}
| E '/' E {p++;printf("n %c = %c / %c ",p,$1,$3);$$=p;}
| '(' E ')' {$$=p;}
| '-' E %prec UMINUS {p++;printf("n %c = - %c ",p,$2);$$=p;}
;
%%
void yyerror(char* st){
	printf("error: %s\n",st);
}

int main()
{

yyparse();
return(0);
}


