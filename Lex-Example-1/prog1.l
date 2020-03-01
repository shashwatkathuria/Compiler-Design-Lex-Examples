%{ 
#include<stdio.h> 
#include<string.h>
char line[100]; 
  
%} 
 
%% 
(.*)      { strcpy(line, yytext); } 
['\n']    { fprintf(yyout, "%s\n", line);} 
%% 
  
int main() 
{ 
    extern FILE *yyin, *yyout; 
    yyin=fopen("input.txt","r"); 
  
    yyout=fopen("output.txt","w"); 
    yylex(); 
} 
