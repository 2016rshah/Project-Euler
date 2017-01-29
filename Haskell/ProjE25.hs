--Taken from http://stackoverflow.com/a/1105840/3861396
fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)
--an infinite list of fibs is 	[1,1,2,3,5..]
--the tail of that list is 		[1,2,3,5,8..]
--Which if added up will give 	[2,3,5,8,13..]
--Which is the tail of the second list

main = print $ 1 + length $ takeWhile (\n -> (length (show n))<1000) fibs
