{

module Parser where
import Evaluator (Expr(..), Value(..), Op(..), UnaryOp(..))
import Lexer (Token(..))

}

%token
    'integer'            { IntTok $$ }
    'real'               { RealTok $$ }
    '+'                  { AddTok }
    '-'                  { SubTok }
    '*'                  { MulTok }
    '/'                  { DivTok }
    '^'                  { PowTok }
    'sqrt'               { SqrtTok }
    '%'                  { ModTok }
    '('                  { LParenTok }
    ')'                  { RParenTok }
    'ifz'                { IfzTok }
    'then'               { ThenTok }
    'else'               { ElseTok }
    'ms'                 { MsTok }
    'mr'                 { MrTok }
    'EOL'                { EolTok }
    'fee'                { FeeTok }
    'pie'                { PieTok }
    'phi'                { PhiTok }
    'mole'               { MoleTok }

%name parse
%tokentype { Token }
%error { parseError }

%right 'ifz'
%nonassoc 'then' 'else'
%left '+' '-'
%left '*' '/' '%'
%right '^'
%nonassoc 'sqrt' '-'

%%

Program
    : Statement Program            { $1 : $2 }
    | Statement                    { [$1] }

Statement
    : Expr 'EOL'                   { StmtExpr $1 }
    | Expr 'ms' 'EOL'              { StmtMemStoreExpr $1 }
    | Expr                         { StmtExpr $1 }
    | Expr 'ms'                    { StmtMemStoreExpr $1 }

Expr
    : 'integer'                          { IntLit $1 }
    | 'real'                             { RealLit $1 }
    | 'fee'                              { Const "fee" }
    | 'pie'                              { Const "pie" }
    | 'phi'                              { Const "phi" }
    | 'mole'                             { Const "mole" }
    | Expr '+' Expr                      { BinOp Add $1 $3 }
    | Expr '-' Expr                      { BinOp Sub $1 $3 }
    | Expr '*' Expr                      { BinOp Mul $1 $3 }
    | Expr '/' Expr                      { BinOp Div $1 $3 }
    | Expr '^' Expr                      { BinOp Pow $1 $3 }
    | Expr '%' Expr                      { BinOp Mod $1 $3 }
    | '-' Expr                           { UnaryOp Negate $2 }  
    | 'sqrt' Expr                        { UnaryOp Sqrt $2 }
    | 'ifz' Expr 'then' Expr 'else' Expr { Ifz $2 $4 $6 }
    | 'mr'                               { MemRecall }
    | '(' Expr ')'                       { $2 }


{

parseError :: [Token] -> a
parseError tokens = error $ "Parse error at tokens: " ++ show tokens

}