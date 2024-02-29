module Evaluator (Expr(..), Stmt(..), Value(..), Op(..), UnaryOp(..), eval) where

data Stmt = Stmt Expr
          | AssignStmt Expr Expr
          deriving (Show, Eq)

data Expr = IntLit Integer
          | RealLit Double
          | StringLit String
          | Const String
          | Variable String
          | BinOp Op Expr Expr
          | UnaryOp UnaryOp Expr
          | Ifz Expr Expr Expr
          | Supposing Expr Expr Expr
          | Oi Expr Expr Expr
          deriving (Show, Eq)


data Op = Add | Sub | Mul | Div | Pow | Mod
        | And | Or | Leq | Geq | LessThan | GreaterThan | Equals
        deriving (Show, Eq)

data UnaryOp = Negate | Sqrt
             deriving (Show, Eq)

data Value = IntVal Integer
           | RealVal Double
           | BoolVal Bool
           deriving (Show, Eq)

negateV :: Value -> Value
negateV (RealVal x) = RealVal (-x)
negateV (IntVal x)  = IntVal (-x)

sqrtV :: Value -> Value
sqrtV (RealVal x) = RealVal (sqrt x)
sqrtV (IntVal x)  = RealVal (sqrt $ fromIntegral x)

arithOp :: (Integer -> Integer -> Integer) -> (Double -> Double -> Double) -> Value -> Value -> Value
arithOp intF floatF (IntVal intA) (IntVal intB)     = IntVal (intF intA intB)
arithOp intF floatF (RealVal realA) (RealVal realB) = RealVal (floatF realA realB)
arithOp intF floatF (IntVal int) (RealVal real)     = RealVal (floatF (fromIntegral int) real)
arithOp intF floatF (RealVal real) (IntVal int)     = RealVal (floatF real (fromIntegral int))

addV :: Value -> Value -> Value
addV = arithOp (+) (+)

multV :: Value -> Value -> Value
multV = arithOp (*) (*)

powV :: Value -> Value -> Value
powV = arithOp (\a b -> floor $ fromIntegral a ** fromIntegral b) (**)

modV :: Value -> Value -> Value
modV (RealVal realA) (RealVal realB) = IntVal (floor realA `mod` floor realB)
modV (IntVal intA) (IntVal intB)     = IntVal (intA `mod` intB)
modV (RealVal r) (IntVal i)          = IntVal (floor r `mod` i)
modV (IntVal i) (RealVal r)          = IntVal (i `mod` floor r)

toDouble :: Value -> Double
toDouble (IntVal i) = fromIntegral i
toDouble (RealVal r) = r

divV :: Value -> Value -> Value
divV valueA valueB = let
  result = toDouble valueA / toDouble valueB
  resultInt = floor result
  in if fromIntegral resultInt == result
     then IntVal resultInt
     else RealVal result


eval :: Expr -> Value
eval (IntLit i) = IntVal i
eval (RealLit r) = RealVal r
eval (Const c) = case c of 
    "mole" -> RealVal 6.02214076e23
    "pie"  -> RealVal pi
    "fee"  -> RealVal (-1.0)
    "phi"  -> RealVal 1.618
eval (BinOp op expA expB) = case op of
    Add -> addV (eval expA) (eval expB) 
    Sub -> addV (eval expA) (negateV (eval expB)) 
    Mul -> multV (eval expA) (eval expB) 
    Div -> divV (eval expA) (eval expB) 
    Pow -> powV (eval expA) (eval expB) 
    Mod -> modV (eval expA) (eval expB) 
eval (UnaryOp op expr) = case op of
    Negate -> negateV (eval expr)
    Sqrt   -> sqrtV (eval expr)
eval (Ifz condExpr thenExpr elseExpr) = case eval condExpr of 
    RealVal 0.0 -> eval thenExpr
    IntVal 0    -> eval thenExpr
    _           -> eval elseExpr


-- if b1 then true else if b2 then true else false
-- b1 True b2

