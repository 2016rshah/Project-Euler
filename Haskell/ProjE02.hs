fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib 2 = 2
fib x = fib ( x - 1) + fib (x - 2)

findAnswer :: Int
findAnswer = sum ([y | y <- takeWhile (<4000000) [fib x | x <- [1..], fib x `mod` 2 == 0]])

main = print findAnswer 