isPerfect :: Int -> Bool
isPerfect 1 = True
isPerfect 0 = False
isPerfect n
	| mod n 2 == 1 = False
	| n < 0 = False
	| (2 * n) == findFactor (n, n, 0) = True
	| otherwise = False

findFactor :: Int -> Int -> Int -> Int
findFactor start n sum
	| n < 1 = False
	| otherwise sum = findFactor(start, n, sum)
		|(mod start n == 0) then sum + n