palindrome :: Eq a => [a] -> Bool
palindrome n =	if(length n == 0 || length n == 1)
					then True
					else
						if (head n == last n)
							then palindrome (chomp n)
							else False

chomp :: [a] -> [a]
chomp xs = take ((length (tail xs)) - 1) (tail xs) 

digits :: Int -> [Int]
digits n =	if n `div` 10 == 0
				then [n]
				else
					(digits (n `div` 10)) ++ [(n `mod` 10)]

biggestPalindrome :: Int
biggestPalindrome = maximum [a*b | a <- [100..999], b <- [100..999], palindrome (digits (a*b))]

main = print biggestPalindrome