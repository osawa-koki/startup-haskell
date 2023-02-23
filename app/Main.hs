module Main (main) where

import Lib
import Codec.Picture

main :: IO ()
main = do

    {- 標準出力 -}
    putStrLn ("Hello World!!!")

    {- 変数 -}
    let x :: Integer
        x = 10
        y :: Integer
        y = 20
        result = x + y
    putStrLn (show x ++ " + " ++ show y ++ " = " ++ show result)

    {- 標準入力 -}
    putStrLn "Enter an integer: "
    input <- getLine
    let n = read input :: Integer
    putStrLn ("You entered: " ++ show n)

    {- 算術演算 -}
    putStrLn (show n ++ " is even?: " ++ show (isEven n))

    {- 条件分岐 -}
    printNumbers n

    {- ループ処理 -}
    putStrLn ("Factorial of " ++ show n ++ " is " ++ show (factorial n))

    {- 配列 -}
    let langs = ["COBOL", "FORTRAN", "BASIC", "LISP", "Pascal"]
    mapM_ putStrLn [lang ++ "!" | lang <- langs]

    {- パッケージの利用 -}
    let width = 100
        height = 100
        pixelAt' xPos yPos
            | xPos >= 25 && xPos < 75 && yPos >= 25 && yPos < 75 = PixelRGB8 0 0 255
            | otherwise = PixelRGB8 255 0 0
        image = generateImage pixelAt' width height
    savePngImage "red_and_blue_image.png" (ImageRGB8 image)
