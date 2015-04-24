triangle :: Integer -> Integer
triangle 1 = 1
triangle n = n + triangle (n-1)

triangles :: [Integer]
triangles = map triangle [1..]

divisors :: Integer -> [Integer]
divisors n = [i | i<-[1..floor (sqrt (fromIntegral n))], n `mod` i == 0]

answer :: [Integer]
answer = [n | n <- triangles, length (divisors n)*2 > 500]

main = print $ head answer