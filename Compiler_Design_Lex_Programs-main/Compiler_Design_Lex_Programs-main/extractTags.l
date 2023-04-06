%{
%}
%%
"<"[^>]*> {printf("%s\n",yytext);}
. ;
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin ;
    yyin = fopen("abc.html","r");
    yylex();
    return 0 ;
}