squares :: Integer -> [Integer]
squares n = [i * i | i <- [1..n]]

sumOfSquares :: Integer -> Integer
sumOfSquares n = sum $ squares n

squareOfSum :: Integer -> Integer
squareOfSum n = sum [1..n] * sum [1..n]

main = print $ (squareOfSum 100) - (sumOfSquares 100)