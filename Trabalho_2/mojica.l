VOID "void"
MAIN "main"

PALAVRA_RESERVADA {VOID} | {MAIN} 

INT "int"
BOOL "bool"

TIPO {INT} | {BOOL}


SKIP "skip()"
ATRIB ":="
IF "if"
WHILE "while"
DO "do"
RETURN "return"

COMANDO {SKIP} | {ATRIB} | {IF} | {WHILE} | {DO} | {RETURN}

TRUE "true"
FALSE "false"

VALOR_BOOLEANO {TRUE} | {FALSE}

NOT "not"
AND "and"
OR "or"
LEQ "leq"

OPERADOR_BOOLEANO {NOT} | {AND} | {OR} | {LEQ}

SOMA "+"
SUB "-"

OPA {SOMA} | {SUB}

MULT "*"
DIV "/"

OPM {MULT} | {DIV}


ABRE_PARENTESES "("
FECHA_PARENTESES ")"
ABRE_CHAVES "{"
FECHA_CHAVES "}"
PONTO_VIRGULA ";"
SUBLINHADO "_"

DIGITO	[0-9]
LETRA	[a-zA-Z]
ID	{LETRA}({LETRA}|{DIGITO})* ({SUBLINHADO}({LETRA} | {DIGITO})+)*	
%%

{PALAVRA_RESERVADA} {printf("PALAVRA RESERVADA: %s\n", yytext);}
{TIPO} {printf("TIPO: %s\n", yytext);}
{COMANDO} {printf("COMANDO: %s\n", yytext);}
{VALOR_BOOLEANO} {printf("VALOR BOOLEANO: %s\n", yytext);}
{OPERADOR_BOOLEANO} {printf("OPERADOR BOOLEANO: %s\n", yytext);}
{OPA} {printf("OPA: %s\n", yytext);}
{OPM} {printf("OPM: %s\n", yytext);}


{ABRE_PARENTESES} {printf("ABRE PARENTESES: %s\n", yytext);}
{FECHA_PARENTESES} {printf("FECHA_PARENTESES: %s\n", yytext);}
{ABRE_CHAVES} {printf("ABRE CHAVES: %s\n", yytext);}
{FECHA_CHAVES} {printf("FECHA CHAVES: %s\n", yytext);}
{PONTO_VIRGULA} {printf("PONTO E VIRGULA: %s\n", yytext);}

{DIGITO}+		{printf("INTEIRO: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+	{printf("REAL: %s\n",yytext);} 
{ID}			{printf("VAR: %s\n",yytext);}

%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
