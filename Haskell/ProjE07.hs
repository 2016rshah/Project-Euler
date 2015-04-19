isPrime :: Int -> Bool
isPrime a = [] == [x | x <- [2..a-1], a `mod` x == 0]

primes :: Int -> [Integer]
primes n = take n [(fromIntegral i) | i <-[2..], isPrime i]

nthPrime :: Int -> Integer
nthPrime n = last $ primes n

main = print $ nthPrime 10001
