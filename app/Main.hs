module Main (main) where

import Lib

main :: IO ()
main = do
    let x :: Integer
        x = 10
        y :: Integer
        y = 20
        result = x + y
    putStrLn (show x ++ " + " ++ show y ++ " = " ++ show result)
