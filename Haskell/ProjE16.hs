digits :: Integer -> [Integer]
digits 0 = []
digits n = [n `mod` 10] ++ digits (div n 10)

main = print $ sum $ digits $ 2^1000