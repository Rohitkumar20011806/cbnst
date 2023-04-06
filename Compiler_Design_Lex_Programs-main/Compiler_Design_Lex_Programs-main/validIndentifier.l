%{
int count = 0 ;
%}
%%
[a-zA-Z][a-zA-Z]*[0-9]* {count++; printf("Valid Indentifier") ;}
. ;
%%
int yywrap(){
    return 1;
}
int main(){
    yylex() ;
    printf("No. of Valid Indentifier = %d\n",count);
    return 0 ;
}