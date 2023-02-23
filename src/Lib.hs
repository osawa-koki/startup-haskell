module Lib
    ( isEven
    , printNumbers
    , factorial
    ) where

isEven :: Integer -> Bool
isEven n = n `mod` 2 == 0

printNumbers :: Integer -> IO ()
printNumbers n = mapM_ print [1..n]

factorial :: Integer -> Integer
factorial n = product [1..n]
