%{
#include<stdio.h>
#include<string.h>

int newlines = 0, tabs = 0, spaces = 0;

%}

%%

\n { 
		newlines++; 
		printf("Newlines : %d \n", newlines); 
       }
\t { 
		tabs++; 
		printf("Tab : %d \n", tabs); 
       }
[' ']  { 
		spaces++;
		printf("Space : %d \n", spaces);
       }

. ;

%%

int main()
{
        yylex();
}
