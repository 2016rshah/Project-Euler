-- Basically all of the sieve of eratosthenes code came from http://en.literateprograms.org/Sieve_of_Eratosthenes_%28Haskell%29
--This is the code that is given. I have rewritten it myself below but I am keeping this because I annotated it 
--merge :: (Ord a) => [a] -> [a] -> [a]
--merge xs@(x:xt) ys@(y:yt) = -- xs@(x:xt) -> xs is the whole list, x is the first element, xt is the tail
--  case compare x y of
--    LT -> x : (merge xt ys)
--    EQ -> x : (merge xt yt)
--    GT -> y : (merge xs yt)
--diff :: (Ord a) => [a] -> [a] -> [a]
--diff xs@(x:xt) ys@(y:yt) = 
--  case compare x y of
--    LT -> x : (diff xt ys)
--    EQ -> diff xt yt
--    GT -> diff xs yt
--primes, nonprimes :: [Integer]
--primes    = [2, 3, 5] ++ (diff [7, 9 ..] nonprimes) 
--nonprimes = foldr1 f $ map g $ tail primes
--  where 
--    f (x:xt) ys = x : (merge xt ys) -- Why do you append x to the beginning of the list?
--    g p         = [ n * p | n <- [p, p + 2 ..]] -- generates multiples of p (which is prime)


primes, nonprimes :: [Integer]
primes = [2, 3, 5] ++ (diff [7, 9 ..] nonprimes) -- Initial primes plus (the odd numbers minus numbers that are not prime)
	where
		diff :: (Ord a) => [a] -> [a] -> [a] -- Anything in second list can not be in first list
		diff xs@(x:xt) ys@(y:yt)
			| x > y 	= diff xs yt
			| x < y 	= x : diff xt ys
			| otherwise = diff xt yt --equal
nonprimes = foldr1 collapse $ map multiples $ tail primes -- Tail of primes because multiples of 2 are already excluded 
	where
		collapse (x:xt) ys = x : (merge xt ys) --Still don't entirely understand this part. What is the significance of the head of xs?
		multiples p = [p*i | i<-[p, p+2 ..]] --Start i at p because primes under p have already been calculated and you don't want to include p 
		merge :: (Ord a) => [a] -> [a] -> [a] --a is any ordered type
		merge xs@(x:xt) ys@(y:yt) 
			| x > y 	= y : (merge xs yt)
			| x < y 	= x : (merge xt ys)
			| otherwise = x : (merge xt yt) --equal

nPrimes :: Integer -> [Integer]
nPrimes n = takeWhile (< n) primes

main = print $ sum $ nPrimes 2000000