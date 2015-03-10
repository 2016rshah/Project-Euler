collapseRow :: [Int] -> [Int] -> [Int]
collapseRow xs ys = [max ((xs!!i)+(ys!!i)) ((xs!!i)+(ys!!(i+1))) | i <- [0..length xs - 1]]

collapseAllRows :: [[Int]] -> [[Int]]
collapseAllRows triangle = if length triangle == 1
						then triangle
						else
							collapseAllRows $ (rmTwoRows triangle) ++ ([collapseRow (sTL triangle) (last triangle)])

rmTwoRows :: [[Int]] -> [[Int]]
rmTwoRows triangle = init $ init triangle

sTL :: [[Int]] -> [Int]
sTL triangle = last $ init triangle

digitify :: String -> [[Int]]
digitify triangle = [[read x | x <- words line] | line <- lines triangle]

main = do  
    contents <- readFile "triangle.txt"
    print $ collapseAllRows $ digitify contents
