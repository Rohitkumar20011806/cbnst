%{
%}
DIGIT [0-9]
%%
{DIGIT}* {ECHO ;printf(" is a Integer");}
{DIGIT}*?\.{DIGIT}* {ECHO ; printf(" is a Float");}
%%
int yywrap(){
    return 1 ;
}
int main(){
    yylex() ;
    return 0 ;
}