%{
#include<stdio.h>
#include<string.h>

int positiveNos = 0, negativeNos = 0;

%}

%%

\-?\+?[0-9]+\.[0-9]+ {
                int num = atoi(yytext);
                if (num > 0) 
		{
			positiveNos++;
			printf("Positive Nos : %d , Negative Nos : %d \n", positiveNos, negativeNos);
		}
                else if (num < 0) 
		{
			negativeNos++;
			printf("Positive Nos : %d , Negative Nos : %d \n", positiveNos, negativeNos);
		}
		else 
		{
			printf("This is neither a positive number nor a negative number.");
		}
        }

. ;

%%

int main()
{
        yylex();
}
