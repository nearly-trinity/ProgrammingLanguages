module Evaluator (Expr(..), Stmt(..), Value(..), Op(..), UnaryOp(..), Env, evalS, initialEnv, prettyPrint) where

type VariableName = String

data Stmt = Stmt Expr
          | AssignStmt Expr Expr
          | NoOpStmt
          deriving (Show, Eq)

data Expr = IntExpr Integer
          | RealExpr Double
          | StringExpr String
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
           | NoVal
           deriving (Show, Eq)

notV :: Value -> Either String Value
notV (BoolVal b) = Right $ BoolVal (not b)
notV _           = Left "ERROR -> notV: Unsupported type, expected boolean"

negateV :: Value -> Either String Value
negateV (RealVal x) = Right $ RealVal (-x)
negateV (IntVal x)  = Right $ IntVal (-x)
negateV _           = Left "ERROR -> negateV: Unsupported type"

type MaybeE a = Either String a
realOfVal :: Value -> MaybeE Double
realOfVal = undefined

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

modV :: Value -> Value -> Either String Value
modV (RealVal realA) (RealVal realB) = Right $ IntVal (floor realA `mod` floor realB)
modV (IntVal intA) (IntVal intB)     = Right $ IntVal (intA `mod` intB)
modV (RealVal r) (IntVal i)          = Right $ IntVal (floor r `mod` i)
modV (IntVal i) (RealVal r)          = Right $ IntVal (i `mod` floor r)
modV _ _                             = Left "ERROR -> modV: Incompatible types"

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


-- handle like arithop (Double -> Double -> Bool) (Integer -> Integer -> Bool)
compareVals :: (Double -> Double -> Bool) -> Value -> Value -> Either String Value
compareVals op (IntVal a) (IntVal b)   = Right $ BoolVal (op (fromIntegral a) (fromIntegral b))
compareVals op (RealVal a) (RealVal b) = Right $ BoolVal (op a b)
compareVals op (RealVal a) (IntVal b)  = Right $ BoolVal (op a (fromIntegral b))
compareVals op (IntVal a) (RealVal b)  = Right $ BoolVal (op (fromIntegral a) b)
compareVals _ _ _                      = Left "ERROR -> compareVals: Operands must be integer or real values"

type Env = [(VariableName, Value)]

initialEnv :: [(String, Value)]
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

updateEnv :: VariableName -> Value -> Env -> Env
updateEnv key value [] = [(key, value)]
updateEnv key value ((k,v):xs)
    | key == k = (key, value) : xs
    | otherwise = (k,v) : updateEnv key value xs

getVariable :: VariableName -> Env -> Either String Value
getVariable name env = case lookup name env of
        Just x  -> Right x
        Nothing -> Left "ERROR -> getVariable: Variable does not exist"

evalS :: Stmt -> Env -> Either String (Value, Env)
evalS (Stmt expr) env = do 
    value <- evalE expr env
    return (value, env)
evalS (AssignStmt (Variable varName) expr) env = do
    value <- evalE expr env
    let newEnv    = updateEnv varName value env
    let outputStr = varName ++ " <- " ++ prettyPrint value
    return (AssignmentVal outputStr, newEnv)
evalS NoOpStmt env = Right (NoVal, env)

evalOp :: Op -> (Value -> Value -> MaybeE Value)
evalOp  Mod          = modV 
evalOp  Div          = divV 
evalOp  Add          = arithOp (+) (+) 
evalOp  Sub          = arithOp (-) (-)
evalOp  Mul          = arithOp (*) (*)
evalOp  Pow          = arithOp (^) (**)
evalOp  Leq          = compareVals (<=) 
evalOp  Geq          = compareVals (>=) 
evalOp  LessThan     = compareVals (<) 
evalOp  GreaterThan  = compareVals (>) 
evalOp  Equals       = compareVals (==) 

evalE :: Expr -> Env -> Either String Value
evalE (Variable varName) env = getVariable varName env
evalE (IntExpr i) env = Right $ IntVal i
evalE (RealExpr r) env = Right $ RealVal r
evalE (Const c) env = getVariable c env
evalE (BinOp And expA expB) env = do
  leftValue <- evalE expA env
  case leftValue of
    BoolVal False -> Right $ BoolVal False  
    BoolVal True  -> do
      rightValue <- evalE expB env
      case rightValue of 
        BoolVal b  -> Right $ BoolVal b
        _             -> Left "ERROR -> AND: Operands must both be booleans"
    _             -> Left "ERROR -> AND: Operands must both be booleans"  
evalE (BinOp Or expA expB) env = do
  leftValue <- evalE expA env 
  case leftValue of
    BoolVal True -> Right $ BoolVal True
    BoolVal False -> do 
      rightVal <- evalE expB env
      case rightVal of
        BoolVal b  -> Right $ BoolVal b
        _          -> Left "ERROR -> OR: Operands must both be booleans"
    _            -> Left "ERROR -> OR: Operands must both be booleans"
evalE (BinOp op expA expB) env = do
    valA <- evalE expA env
    valB <- evalE expB env
    evalOp op valA valB
evalE (UnaryOp Not expr) env = notV =<< evalE expr env
evalE (UnaryOp Negate expr) env = negateV =<< evalE expr env
evalE (UnaryOp Sqrt expr) env = sqrtV =<< evalE expr env
evalE (Ifz condExpr thenExpr elseExpr) env = do
    condVal <- evalE condExpr env
    case condVal of
        RealVal 0.0 -> evalE thenExpr env
        IntVal 0    -> evalE thenExpr env
        RealVal _   -> evalE elseExpr env
        IntVal _    -> evalE elseExpr env
        _           -> Left "ERROR -> ifz: Condition must be a integer or real number"
evalE (Supposing condExpr thenExpr elseExpr) env = do
    condVal <- evalE condExpr env
    case condVal of
        BoolVal True  -> evalE thenExpr env
        BoolVal False -> evalE elseExpr env
        _             -> Left "ERROR -> Supposing: Condition must be a boolean value"
evalE (Oi (Variable varName) valueExpr expr) env = do
    value <- evalE valueExpr env
    let tmpEnv = updateEnv varName value env
    evalE expr tmpEnv
