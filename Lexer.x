{
module Lexer (Token (..), scanTokens) where

import Debug.Trace
}

%wrapper "basic"

$digit = 0-9

tokens :-
  $white                   ;
  ^"--".*                  ;
  sqrt                     { const SqrtTok }
  fee                      { const FeeTok }
  pie                      { const PieTok }
  phi                      { const PhiTok }
  mole                     { const MoleTok }
  $digit+                  { IntTok . read }
  [0-9]*\.[0-9]+           { RealTok . read }
  \+                       { const AddTok }
  \-                       { const SubTok }
  \*                       { const MulTok }
  \/                       { const DivTok }
  \^                       { const PowTok }
  \%                       { const ModTok }
  \(                       { const LParenTok }
  \)                       { const RParenTok }
  \[                       { const LBrakTok }
  \]                       { const RBrakTok }
  \\\/                     { const OrTok }
  \/\\                     { const AndTok }
  \=                       { const EqTok }
  \<                       { const LessTok }
  \>                       { const GreaterTok }
  for                      { const ForTok }
  leq                      { const LeqTok }
  geq                      { const GeqTok }
  supposing                { const SupTok }
  hence                    { const ThenTok }
  otherwise                { const ElseTok }
  hearye                   { const HearyeTok }
  oi                       { const OiTok }
  is                       { const IsTok }
  innit                    { const EolTok }
  ifz                      { const IfzTok }
  then                     { const ThenTok }
  else                     { const ElseTok }
  ace                      { const TrueTok }
  rank                     { const FalseTok }
  ([A-Z_])+                { VarTok }
  ``([^`]*)``              { StringTok }

{
data Token = VarTok String | IntTok Integer | RealTok Double | StringTok String
           | AddTok | SubTok | MulTok | DivTok | PowTok | ModTok
           | SqrtTok | LParenTok | RParenTok | EolTok | IfzTok | ThenTok | ElseTok
           | FeeTok | PieTok | PhiTok | MoleTok | LeqTok | GeqTok
           | SupTok | HenceTok | HearyeTok | OiTok | IsTok | LBrakTok | RBrakTok
           | AndTok | OrTok | EqTok | ForTok | LessTok | GreaterTok | OtherwiseTok 
           | TrueTok | FalseTok
           deriving (Show, Eq)

scanTokens :: String -> Maybe [Token]
scanTokens str = go ('\n',[],str)
  where go inp@(_,_bs,str) =
          case alexScan inp 0 of
                AlexEOF -> Just []
                AlexError err -> traceShow err $ Nothing
                AlexSkip  inp' len     -> go inp'
                AlexToken inp' len act -> fmap ((act (take len str)):) (go inp')
}
