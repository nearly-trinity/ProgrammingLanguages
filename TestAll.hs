module Main where

import Lexer (scanTokens)
import Parser (parse)
import Evaluator (eval)
import System.IO (isEOF)
import Control.Monad (unless)

main :: IO ()
main = do
  putStrLn "Enter input:"
  inputLoop

inputLoop :: IO ()
inputLoop = do
  eof <- isEOF
  unless eof $ do
    inputString <- getLine
    case scanTokens inputString of
      Nothing -> putStrLn "Tokenization failed."
      Just tokens -> do
        let expression = parse tokens
        putStrLn $ "Input: " ++ inputString
        putStrLn $ "Tokens: " ++ show tokens
        putStrLn $ "Expression: " ++ show expression
        -- let result = eval $ head expression
        -- putStrLn $ "Result: " ++ show result
    inputLoop
