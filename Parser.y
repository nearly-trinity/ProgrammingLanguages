{

module Parser where
import Evaluator (Stmt(..), Expr(..), Value(..), Op(..), UnaryOp(..))
import Lexer (Token(..))

}

%token
    'integer'            { IntTok $$ }
    'real'               { RealTok $$ }
    'var'                { VarTok $$ }
    'string'             { StringTok $$ }
    '+'                  { AddTok }
    '-'                  { SubTok }
    '*'                  { MulTok }
    '/'                  { DivTok }
    '^'                  { PowTok }
    'sqrt'               { SqrtTok }
    '%'                  { ModTok }
    '['                  { LBrakTok }
    ']'                  { RBrakTok }
    '('                  { LParenTok }
    ')'                  { RParenTok }
    'and'                { AndTok }
    'or'                 { OrTok }
    '='                  { EqTok }
    '<'                  { LessTok }
    '>'                  { GreaterTok }
    'leq'                { LeqTok }
    'geq'                { GeqTok }
    'sup'                { SupTok }
    'hearye'             { HearyeTok }
    'oi'                 { OiTok }
    'is'                 { IsTok }
    'ifz'                { IfzTok }
    'for'                { ForTok }
    'then'               { HenceTok }
    'else'               { OtherwiseTok }
    'innit'              { EolTok }
    'fee'                { FeeTok }
    'pie'                { PieTok }
    'phi'                { PhiTok }
    'mole'               { MoleTok }
    'ace'                { TrueTok }
    'rank'               { FalseTok }

%name parse
%tokentype { Token }
%error { parseError }

%right 'ifz'
%nonassoc 'then' 'else'
%right '=' '<' '>' 'leq' 'geq'
%left 'or'
%left 'and'
%left '+' '-'
%left '*' '/' '%'
%right '^'
%nonassoc 'sqrt' '-'

%%

Program
    : Statement Program            { $1 : $2 }
    | Statement                    { [$1] }

Statement
    : Expr 'innit'                      { Stmt $1 }
    | 'hearye' 'var' 'is' Expr 'innit'  { AssignStmt (Variable $2) $4 }

Expr
    : 'integer'                          { IntLit $1 }
    | 'real'                             { RealLit $1 }
    | 'string'                           { StringLit $1 }
    | 'var'                              { Variable $1 }
    | 'ace'                              { Const "true" }
    | 'rank'                             { Const "false" }
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
    | Expr 'and' Expr                    { BinOp And $1 $3 }
    | Expr 'or' Expr                     { BinOp Or $1 $3 }
    | Expr 'leq' Expr                    { BinOp Leq $1 $3 }
    | Expr 'geq' Expr                    { BinOp Geq $1 $3 }
    | Expr '<' Expr                      { BinOp LessThan $1 $3 }
    | Expr '>' Expr                      { BinOp GreaterThan $1 $3 }
    | Expr '=' Expr                      { BinOp Equals $1 $3 }
    | '-' Expr                           { UnaryOp Negate $2 }  
    | 'sqrt' Expr                        { UnaryOp Sqrt $2 }
    | 'ifz' Expr 'then' Expr 'else' Expr { Ifz $2 $4 $6 }
    | 'sup' Expr 'then' Expr 'else' Expr { Supposing $2 $4 $6 }
    | '(' Expr ')'                       { $2 }
    | '[' Expr ']'                       { $2 }
    | 'oi' 'var' 'is' Expr 'for' Expr    { Oi (Variable $2) $4 $6 } 


{

parseError :: [Token] -> a
parseError tokens = error $ "Parse error at tokens: " ++ show tokens

}