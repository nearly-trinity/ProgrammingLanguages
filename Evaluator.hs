module Evaluator (Expr(..), Stmt(..), Value(..), Op(..), UnaryOp(..), Env, evalStatement, initialEnv, prettyPrint) where

type VariableName = String

data Stmt = Stmt Expr
          | AssignStmt Expr Expr
          deriving (Show, Eq)

data Expr = IntLit Integer
          | RealLit Double
          | StringLit String
          | Const String
          | Variable VariableName
          | BinOp Op Expr Expr
          | UnaryOp UnaryOp Expr
          | Ifz Expr Expr Expr
          | Supposing Expr Expr Expr
          | Oi Expr Expr Expr
          deriving (Show, Eq)

data Op = Add | Sub | Mul | Div | Pow | Mod
        | And | Or | Leq | Geq | LessThan | GreaterThan | Equals
        deriving (Show, Eq)

data UnaryOp = Negate | Sqrt | Not
             deriving (Show, Eq)

data Value = IntVal Integer
           | RealVal Double
           | BoolVal Bool
           | AssignmentVal String
           deriving (Show, Eq)

negateV :: Value -> Either String Value
negateV (BoolVal x) = Right $ BoolVal (not x)
negateV (RealVal x) = Right $ RealVal (-x)
negateV (IntVal x)  = Right $ IntVal (-x)
negateV _           = Left "ERROR -> negateV: Unsupported type"

sqrtV :: Value -> Either String Value
sqrtV (RealVal x) 
  | x >= 0    = Right $ RealVal (sqrt x)
  | otherwise = Left "ERROR -> sqrtV: Cannot take square root of a negative number"
sqrtV (IntVal x)  
  | x >= 0    = Right $ RealVal (sqrt $ fromIntegral x)
  | otherwise = Left "ERROR -> sqrtV: Cannot take square root of a negative number"
sqrtV _           = Left "ERROR -> sqrtV: Unsupported type"

arithOp :: (Integer -> Integer -> Integer) -> (Double -> Double -> Double) -> Value -> Value -> Either String Value
arithOp intF floatF (IntVal intA) (IntVal intB)     = Right $ IntVal (intF intA intB)
arithOp intF floatF (RealVal realA) (RealVal realB) = Right $ RealVal (floatF realA realB)
arithOp intF floatF (IntVal int) (RealVal real)     = Right $ RealVal (floatF (fromIntegral int) real)
arithOp intF floatF (RealVal real) (IntVal int)     = Right $ RealVal (floatF real (fromIntegral int))
arithOp _ _ _ _                                     = Left "ERROR -> arithOp: Incompatible types"

addV :: Value -> Value -> Either String Value
addV = arithOp (+) (+)

subV :: Value -> Value -> Either String Value
subV = arithOp (-) (-)

multV :: Value -> Value -> Either String Value
multV = arithOp (*) (*)

powV :: Value -> Value -> Either String Value
powV = arithOp (\a b -> floor $ fromIntegral a ** fromIntegral b) (**)

modV :: Value -> Value -> Either String Value
modV (RealVal realA) (RealVal realB) = Right $ IntVal (floor realA `mod` floor realB)
modV (IntVal intA) (IntVal intB)     = Right $ IntVal (intA `mod` intB)
modV (RealVal r) (IntVal i)          = Right $ IntVal (floor r `mod` i)
modV (IntVal i) (RealVal r)          = Right $ IntVal (i `mod` floor r)
modV _ _                             = Left "ERROR -> modV: Incompatible types"

toDouble :: Value -> Double
toDouble (IntVal i) = fromIntegral i
toDouble (RealVal r) = r

divV :: Value -> Value -> Either String Value
divV valueA valueB = case (valueA, valueB) of
  (_, IntVal 0) -> Left "ERROR -> divV: Division by zero"
  (_, RealVal 0.0) -> Left "ERROR -> divV: Division by zero"
  (IntVal i, IntVal j) ->
    let result = fromIntegral i / fromIntegral j
        resultInt = floor result
    in Right $ if fromIntegral resultInt == result then IntVal resultInt else RealVal result
  (RealVal r, RealVal s) ->
    Right $ RealVal (r / s)
  (IntVal i, RealVal r) ->
    Right $ RealVal (fromIntegral i / r)
  (RealVal r, IntVal i) ->
    Right $ RealVal (r / fromIntegral i)
  _ -> Left "ERROR -> divV: Incompatible types for division"

compareVals :: (Double -> Double -> Bool) -> Value -> Value -> Either String Value
compareVals op (IntVal a) (IntVal b)   = Right $ BoolVal (op (fromIntegral a) (fromIntegral b))
compareVals op (RealVal a) (RealVal b) = Right $ BoolVal (op a b)
compareVals op (RealVal a) (IntVal b)  = Right $ BoolVal (op a (fromIntegral b))
compareVals op (IntVal a) (RealVal b)  = Right $ BoolVal (op (fromIntegral a) b)
compareVals _ _ _                      = Left "ERROR -> compareVals: Operands must be integer or real values"

handleAnd :: Value -> Value -> Either String Value
handleAnd (BoolVal a) (BoolVal b) = Right $ BoolVal (a && b)
handleAnd _ _                     = Left "ERROR -> AND: Operands must both be booleans"

handleOr :: Value -> Value -> Either String Value
handleOr (BoolVal a) (BoolVal b) = Right $ BoolVal (a || b)
handleOr _ _                     = Left "ERROR -> OR: Operands must both be booleans"

type Env = [(VariableName, Value)]

initialEnv = [
    ("mole" , RealVal 6.02214076e23),
    ("pie"  , RealVal pi),
    ("fee"  , RealVal (-1.0)),
    ("phi"  , RealVal 1.618),
    ("true" , BoolVal True),
    ("false", BoolVal False)]

prettyPrint :: Value -> String
prettyPrint (IntVal i) = show i
prettyPrint (RealVal r) = show r
prettyPrint (BoolVal b) = show b
prettyPrint (AssignmentVal s) = s

insertOrReplace :: VariableName -> Value -> Env -> Env
insertOrReplace key value [] = [(key, value)]
insertOrReplace key value ((k,v):xs)
    | key == k = (key, value) : xs
    | otherwise = (k,v) : insertOrReplace key value xs

getVariable :: VariableName -> Env -> Either String Value
getVariable name env = case lookup name env of
        Just x  -> Right x
        Nothing -> Left "ERROR -> getVariable: Variable does not exist"

evalStatement :: Stmt -> Env -> Either String (Value, Env)
evalStatement (Stmt expr) env = do 
    value <- eval expr env
    return (value, env)
evalStatement (AssignStmt (Variable varName) expr) env = do
    value <- eval expr env
    let newEnv    = insertOrReplace varName value env
    let outputStr = varName ++ " <- " ++ prettyPrint value
    return (AssignmentVal outputStr, newEnv)

eval :: Expr -> Env -> Either String Value
eval (Variable varName) env = getVariable varName env
eval (IntLit i) env = Right $ IntVal i
eval (RealLit r) env = Right $ RealVal r
eval (Const c) env = getVariable c env
eval (BinOp op expA expB) env = do
    valA <- eval expA env
    valB <- eval expB env
    case op of
        Add         -> addV valA valB
        Sub         -> subV valA valB
        Div         -> divV valA valB
        Mul         -> multV valA valB
        Pow         -> powV valA valB
        Mod         -> modV valA valB
        Leq         -> compareVals (<=) valA valB
        Geq         -> compareVals (>=) valA valB
        LessThan    -> compareVals (<) valA valB
        GreaterThan -> compareVals (>) valA valB
        Equals      -> compareVals (==) valA valB
        Or          -> handleOr valA valB
        And         -> handleAnd valA valB
eval (UnaryOp op expr) env = do
    val <- eval expr env
    case op of
        Negate -> negateV val
        Sqrt   -> sqrtV val
eval (Ifz condExpr thenExpr elseExpr) env = do 
    condVal <- eval condExpr env
    case condVal of 
        RealVal 0.0 -> eval thenExpr env
        IntVal 0    -> eval thenExpr env
        RealVal _   -> eval elseExpr env
        IntVal _    -> eval elseExpr env
        _           -> Left "ERROR -> Ifz: Condition must be a integer or real number"
eval (Supposing condExpr thenExpr elseExpr) env = do
    condVal <- eval condExpr env
    case condVal of
        BoolVal True  -> eval thenExpr env
        BoolVal False -> eval elseExpr env
        _             -> Left "ERROR -> Supposing: Condition must be a boolean value"
eval (Oi (Variable varName) valueExpr expr) env = do
    value <- eval valueExpr env
    let tmpEnv = insertOrReplace varName value env
    eval expr tmpEnv