size = 20

fact :: Integer -> Integer
fact 1 = 1
fact n = n * fact (n-1)

perm :: Integer -> Integer -> Integer
perm n r = (fact n) `div` (fact (n-r))

choose :: Integer -> Integer -> Integer
choose n r = (perm n r) `div` (fact r)

main = print $ (2*size) `choose` size