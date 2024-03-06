module Main where

import Evaluator (evalS, initialEnv, prettyPrint, Env, Stmt (NoOpStmt), Value(..))
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
                stmt <- catch (evaluate (parse tokens)) handleException
                case evalS stmt env of
                    Left errorMsg -> do 
                        unless (null errorMsg) $ putStrLn $ redColor ++ errorMsg
                        repl env
                    Right (result, newEnv) -> do
                        unless (result == NoVal) $ putStrLn $ prettyPrint result
                        repl newEnv
    where   
        handleException :: SomeException -> IO Stmt
        handleException e = do
            putStrLn $ redColor ++ "Parse Error"
            return NoOpStmt

main :: IO ()
main = do
  repl initialEnv
