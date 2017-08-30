%{
	
#include <stdio.h>
	
%}
	
palavra [A-Za-z0-9]
	
%%

{palavra}+([._-]{palavra}+)*[@]{palavra}+([._-]{palavra}+)*(.com)?(.br)?[_-] ;

{palavra}+([._-]{palavra}+)*[@]{palavra}+([._-]{palavra}+)*(.com)?(.br)? { printf("%s\n",yytext); }
	
.  ;
\n ;
		
%%
	
int main() {
 yylex();
 return 0;
}
