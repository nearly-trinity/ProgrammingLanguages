module Main where

import Evaluator (evalStatement, initialEnv,  Env, Stmt, Value(..))
import Lexer (scanTokens)
import Parser (parse)
import System.IO (isEOF, hFlush, stdout)
import Control.Monad (unless)
import Control.Exception (catch, SomeException, evaluate)


repl :: Env -> IO ()
repl env = do
    putStr "british >>> "
    hFlush stdout
    inputString <- getLine
    unless (inputString == ":quit") $ do
        case scanTokens inputString of
            Nothing -> putStrLn "\nTokenization failed.\n" >> repl env
            Just tokens -> do
                parsedStmts <- catch (evaluate (parse tokens)) handleException
                case parsedStmts of
                    [] -> putStrLn "\nParse Error\n" >> repl env
                    (stmt:_) -> do
                        let (result, newEnv) = evalStatement stmt env
                        putStrLn $ prettyPrint result
                        repl newEnv
    where   
        handleException :: SomeException -> IO [Stmt]
        handleException e = return []

prettyPrint :: Value -> String
prettyPrint (IntVal i) = show i
prettyPrint (RealVal r) = show r
prettyPrint (BoolVal b) = show b

main :: IO ()
main = do
  repl initialEnv
