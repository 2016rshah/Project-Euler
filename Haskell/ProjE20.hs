fact :: Integer -> Integer
fact 1 = 1
fact n = n * fact (n-1)

digits :: Integer -> [Integer]
digits 0 = []
digits n = [n `mod` 10] ++ digits (div n 10)

main = print $ sum $ digits $ fact 100