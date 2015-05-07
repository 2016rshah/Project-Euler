import System.IO 

takeDigits :: Int -> Integer -> String
takeDigits n number = take n (show number)

toDigits :: [String] -> [Integer]
toDigits [] = []
toDigits (x:xt) = read x : toDigits xt

main = do  
    contents <- readFile "input.txt"
    putStrLn $ takeDigits 10 $ sum $ toDigits (lines contents)