module Lib
    ( isEven
    , printNumbers
    ) where

isEven :: Integer -> Bool
isEven n = n `mod` 2 == 0

printNumbers :: Integer -> IO ()
printNumbers n = mapM_ print [1..n]
