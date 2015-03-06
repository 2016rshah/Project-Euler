-- squareRoot taken from http://stackoverflow.com/a/6695714/3861396

newSqrt :: Integer -> Integer
newSqrt = floor . sqrt . fromIntegral

primes :: Integer -> [Integer]
primes n = [x | x <- [3, 5..(newSqrt(n)+1)], n `mod` x == 0, primes x == []]

main = print( maximum (primes 600851475143) )
