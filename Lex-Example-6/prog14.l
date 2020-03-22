%{
#include<stdio.h>
#include<string.h>
%}
%%

[0-9]+ {
		int num = atoi(yytext);
		if (num % 2 == 0) printf("This number is an even number");
		else printf("This number is an odd number");
	}

. ;

%%

int main()
{
        yylex();
}

