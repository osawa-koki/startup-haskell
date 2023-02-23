module Main (main) where

import Lib

main :: IO ()
main = do

    putStrLn ("Hello World!!!")

    let x :: Integer
        x = 10
        y :: Integer
        y = 20
        result = x + y
    putStrLn (show x ++ " + " ++ show y ++ " = " ++ show result)

    putStrLn "Enter an integer: "
    input <- getLine
    let n = read input :: Integer
    putStrLn ("You entered: " ++ show n)
