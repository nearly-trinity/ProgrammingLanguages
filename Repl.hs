module Main where

import Evaluator (evalStatement, initialEnv, prettyPrint, Env, Stmt, Value(..))
import Lexer (scanTokens)
import Parser (parse)
import System.IO (isEOF, hFlush, stdout)
import Control.Monad (unless)
import Control.Exception (catch, SomeException, evaluate)

redColor :: String
redColor = "\ESC[91m"
normalColor :: String
normalColor = "\ESC[0m"

repl :: Env -> IO ()
repl env = do
    putStr $ normalColor ++ "british >>> "
    hFlush stdout
    inputString <- getLine
    unless (inputString == ":quit") $ do
        case scanTokens inputString of
            Nothing -> putStrLn (redColor ++ "Tokenization failed.") >> repl env
            Just tokens -> do
                parsedStmts <- catch (evaluate (parse tokens)) handleException
                case parsedStmts of
                    [] -> putStrLn (redColor ++ "Parse Error") >> repl env
                    (stmt:_) -> do
                        case evalStatement stmt env of
                            Left errorMsg -> do 
                                putStrLn $ redColor ++ errorMsg
                                repl env
                            Right (result, newEnv) -> do
                                putStrLn $ prettyPrint result
                                repl newEnv
    where   
        handleException :: SomeException -> IO [Stmt]
        handleException e = return []

main :: IO ()
main = do
  repl initialEnv
