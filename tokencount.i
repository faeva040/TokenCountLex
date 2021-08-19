%{
#include<stdio.h>
int i = 0;

%}
  

%%

if|else|while|do|switch|case    {printf("keyword ");i++;}
bool|int|float|char		{printf("datatype ");i++;}
[a-zA-Z_][a-zA-Z0-9_]*		{printf("identifier ");i++;}
"!"|"@"|"*"|"&"|"^"|"%"|"$"|"#"    {printf("special ");i++;}
[()|{}|,|;]                      {printf("separator ");i++;}
[0-9]*[.]?[0-9]+		{printf("constant ");i++;}
"+"|"-"|"*"|"/"|"%"|"++"|"--"|"="	{printf("operator ");i++;}
			 
  
"\n" {printf("\nnumner of token %d\n", i); i = 0;}
%%
  

int yywrap()
{
return 1;
}

int main()
{   
    yylex();
  
    
}