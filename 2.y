%{
  #include <stdio.h>
  #include <stdlib.h>
  int n,c=0;
%}
%token A B NUM NL
%%
ans:NUM NL T B NL{n=$1;}
T: A T	{c++;}
| A {c++;}
;
%%
main()
{
 printf("enter exp\n");
 yyparse();
 if(c==n)
 printf("\nVALID!\n");
 else
 printf("Invalid\n");
}
int yyerror()
{
 printf("Invalid\n");
 exit(0);
}
