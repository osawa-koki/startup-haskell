module Main (main) where

import Lib
import Codec.Picture

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

    putStrLn (show n ++ " is even?: " ++ show (isEven n))

    printNumbers n

    putStrLn ("Factorial of " ++ show n ++ " is " ++ show (factorial n))

    let width = 100
        height = 100
        pixelAt' _ _ = PixelRGB8 255 0 0
        image = generateImage pixelAt' width height
    savePngImage "red_image.png" (ImageRGB8 image)
