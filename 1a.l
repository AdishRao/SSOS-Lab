%{
  #include <stdio.h>
  int ident=0;
  int op=0;
  int flag=0;
%}
%%
[0-9]+	{ident++; printf("\nIdentifier: "); ECHO;}
[\+|\-|\*|/|=]	{op++; printf("\nOperator: "); ECHO;}
.	{flag=1;}
%%
main()
{
 yylex();
 if((op+1)==ident && flag==0){
 	printf("\nIdentifiers: %d\n",ident);
 	printf("Operators: %d\n",op);
 }
 else
 {
  printf("\nInvaid\n");
 }
}
