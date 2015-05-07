import Data.List

hailstone :: Integer -> Integer
hailstone 1 = 1
hailstone n 
	| n `mod` 2 == 0		= 1 + hailstone (n `div` 2)
	| otherwise				= 1 + hailstone (3 * n + 1)

hailstones :: Integer -> [(Integer, Integer)]
hailstones n = [(hailstone x, x) | x <- [1..n]]

main = print $ snd $ last $ sort $ hailstones 1000000