DIGITO	[0-9]
LETRA	[a-zA-Z]

ABRE_PARENTESES "("
FECHA_PARENTESES ")"
ABRE_CHAVES "{"
FECHA_CHAVES "}"
PONTO_VIRGULA ";"
SUBLINHADO "_"
MULT "*"
DIV "/"
SOMA "+"
SUB "-"
VIRGULA ","
BRANCO [ \n\t]

NOT "not"
AND "and"
OR "or"
LEQ "leq"

INT "int"
BOOL "bool"

VOID "void"
MAIN "main"

TRUE "true"
FALSE "false"

SKIP "skip()"
ATRIB ":="
IF "if"
WHILE "while"
DO "do"
RETURN "return"

FACAO [.]{DIGITO}+
EXP_OPC ([E]({SOMA}|{SUB})?{DIGITO}+)?
INTEIRO {DIGITO}+
REAL {DIGITO}+{FACAO}{EXP_OPC}

ID	{LETRA}({LETRA}|{DIGITO})*({SUBLINHADO}({LETRA}|{DIGITO})+)*	

PALAVRA_RESERVADA {VOID}|{MAIN} 

TIPO {INT}|{BOOL}

COMANDO {SKIP}|{ATRIB}|{IF}|{WHILE}|{DO}|{RETURN}

VALOR_BOOLEANO {TRUE}|{FALSE}

OPERADOR_BOOLEANO {NOT}|{AND}|{OR}|{LEQ}

OPA {SOMA}|{SUB}

OPM {MULT}|{DIV}


%%
{PALAVRA_RESERVADA}   {printf("PALAVRA RESERVADA: %s\n", yytext);}
{COMANDO}             {printf("COMANDO: %s\n", yytext);}
{TIPO}                {printf("TIPO: %s\n", yytext);}
{VALOR_BOOLEANO}      {printf("VALOR BOOLEANO: %s\n", yytext);}
{OPERADOR_BOOLEANO}   {printf("OPERADOR BOOLEANO: %s\n", yytext);}
{INTEIRO}	            {printf("INTEIRO: %s\n",yytext);} 
{REAL}		            {printf("REAL: %s\n",yytext);}

{OPA}                 {printf("OPA: %s\n", yytext);}
{OPM}                 {printf("OPM: %s\n", yytext);}
{ABRE_PARENTESES}     {printf("ABRE PARENTESES: %s\n", yytext);}
{FECHA_PARENTESES}    {printf("FECHA_PARENTESES: %s\n", yytext);}
{ABRE_CHAVES}         {printf("ABRE CHAVES: %s\n", yytext);}
{FECHA_CHAVES}        {printf("FECHA CHAVES: %s\n", yytext);}
{PONTO_VIRGULA}       {printf("PONTO E VIRGULA: %s\n", yytext);}
{VIRGULA}             {printf("VIRGULA: %s\n", yytext);}

{ID}			            {printf("VAR: %s\n",yytext);}
{BRANCO}              { char *c; scanf("%[ \n\t]s", c); }


%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
