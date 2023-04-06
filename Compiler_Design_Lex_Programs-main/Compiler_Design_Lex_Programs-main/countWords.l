%{
int lines = 0 , words = 0 , space = 0 , ch = 0 ;
%}
%%
[\n] {lines++ ,words++ ;}
[\t] {space++, words++ ;}
[" "] {space++ , words++ ;}
[^\n\t] {ch++ ;}
END {return 0;}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("Enter Paragraph \n");
    yylex() ;
    printf("Lines = %d \nWords = %d \nSpaces = %d \nCharacters = %d \n",lines,words,space,ch) ;
    return 0 ;
}