%{
#include<stdio.h>
#include<string.h>
int n = 0;

%}
%%

[a-zA-Z]+ {     
		if(yyleng < 10 && yyleng > 5)
		{ 
			n++;
		}
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

