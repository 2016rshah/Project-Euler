isInt :: (Integral a, RealFrac b) => b -> a -> Bool
isInt x n = (round $ 10^(fromIntegral n)*(x-(fromIntegral $ round x)))==0

median :: Floating a => [a] -> a
median [a,b,c] = (sqrt (2*a*a+2*b*b-c*c)) / 2

integralMedian :: (RealFrac b, Floating b) => [b] -> Bool
integralMedian xs = isInt (median xs) 4

perms :: (Ord t, Num t, Enum t, Integral t) => t -> [[t]]
perms n = [[a, b, c] | 
			c <- [2,4..n], 
			b <- [1..c], 
			if b `mod`2 == 0 then a <- [2, 4 ..b] else a <- [1, 3 ..b],
			a+b > c, 
			a+c > b]

solutions :: (RealFrac b, Floating b, Enum b, b) => b -> [[b]]
solutions n = [xs | xs <- (perms n), integralMedian xs]

main = print $ length $ solutions 50

