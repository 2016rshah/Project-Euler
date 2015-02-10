isPrime :: Int -> Bool
isPrime a = [] == [x | x <- [2..a-1], a `mod` x == 0]

primeFactors :: Int -> [Int]
primeFactors a = [x | x <- [2..a-1], a `mod` x == 0, isPrime x ]

whatPower :: Int -> Int -> Int
whatPower f n = floor (logBase (fromIntegral f) (fromIntegral n))

solution :: Int -> Int
solution n = product ([product [x | y <- [1.. whatPower x n]] | x <- [a | a <- [1..n], isPrime a]])

main = print (solution 20)