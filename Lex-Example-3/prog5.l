%{
#include<stdio.h>
#include<string.h>
int n = 0;

%}
%%

[a-zA-Z]+ {	
		n++;
	  }
['\n']    {
		printf("Total number of words are : %d \n", n);
	  }
. ;

%%

int main()
{
	yylex();
}
