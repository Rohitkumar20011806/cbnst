%{
int count = 0 ; 
%}
%%
"if"|"else"|"float"|"int"|"for"|"while"|"unsigned"|"main" {count++; printf("Keyword %s",yytext);}
[a-zA-Z][a-zA-Z0-9]* {count++; printf("Identifier %s",yytext);}
"<"|">"|"<="|">="|"=="|"--"|"++"|"+"|"-" {count++; printf("Operator %s",yytext);}
"("|")"|"{"|"}"|";" {count++; printf("Separator %s",yytext);}
[0-9]* {count++; printf("Interger %s",yytext);}
[0-9]*?\.[0-9]+ {count++; printf("Float %s",yytext);}
. ;
%%
int yywrap(){
    return 1;
}
int main(){
    yylex() ;
    printf("Total Tokens = %d",count);
    return 0;
}