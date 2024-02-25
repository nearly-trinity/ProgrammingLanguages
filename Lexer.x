{
module Lexer (Token (..), scanTokens) where

import Debug.Trace
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
  $white                   ;
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
  \n                       { const EolTok }
  ifz                      { const IfzTok }
  then                     { const ThenTok }
  else                     { const ElseTok }
  [a-z][$alpha $digit]*    { VarTok }
  MS                       { const MsTok }
  MR                       { const MrTok }

{
data Token = VarTok String | IntTok Integer | RealTok Double
           | AddTok | SubTok | MulTok | DivTok | PowTok | ModTok
           | SqrtTok | LParenTok | RParenTok | EolTok | IfzTok | ThenTok | ElseTok
           | MsTok | MrTok | FeeTok | PieTok | PhiTok | MoleTok
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
