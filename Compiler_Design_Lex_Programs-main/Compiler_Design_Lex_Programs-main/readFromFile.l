%{
int lines = 0 , words = 0 , spaces = 0 , ch = 0 ;
%}
%%
[\n] {lines++ , words++ ;}
[\t] {spaces++ , words++ ;}
[" "] {spaces++ , words++ ;}
[^\n\t] {ch++ ;}
%%
int yywrap(){
    return 1;
}
int main(int argc,char *argv[]){
    extern FILE *yyin ;
    yyin = fopen("input.txt","r");
    yylex();
    printf("Lines = %d \nWords = %d \nSpaces = %d \nCharacters = %d\n",lines,words,spaces,ch);
    return 0;
}