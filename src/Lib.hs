module Lib
    ( isEven
    ) where

isEven :: Integer -> Bool
isEven n = n `mod` 2 == 0
