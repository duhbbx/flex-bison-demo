%{
#include "y.tab.h"
%}

%%
[0-9]+          { printf("数字哦\n"); yylval = atoi(yytext); return T_NUM; }
[-/+*()\n]      { printf("运算符\n"); return yytext[0]; }   /* 返回的是char */
[" "]+          { printf("空白字符哦\n");  }    /* 如果是空白字符的话，啥都不用干就行 */
.               { printf("其他字符\n"); return 0; /* end when meet everything else */ }

%%

int yywrap(void) { 
    return 1;
}