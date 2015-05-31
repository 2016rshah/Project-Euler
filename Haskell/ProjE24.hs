import Data.List

nthPermutations :: Integer -> [[Integer]]
nthPermutations n = permutations [0..n]

listsToNums :: [[Integer]] -> [Integer]
listsToNums xs = map digitsToNum xs
	where
		--http://stackoverflow.com/a/1918515/3861396
		digitsToNum :: [Integer] -> Integer
		digitsToNum = foldl addDigit 0
			where addDigit acc curr = acc*10 + curr --Multiplies the accumulator by 10 to add a place and adds the digit from the list

orderedListOfPerms :: Integer -> [Integer]
orderedListOfPerms n = sort $ listsToNums $ nthPermutations n

main = print $ (orderedListOfPerms 9) !! (1000000-1) -- get millionth minus one because zero indexed

{--
--Alternate Solution. Takes about two seconds longer and I'm not entirely sure why. 

import Data.List
import Data.Char

solutions :: Char -> [String]
solutions n = sort $ (permutations ['0'..n])

main = print $ (solutions '9') !! (1000000-1) -- get millionth minus one because zero indexed

--}
