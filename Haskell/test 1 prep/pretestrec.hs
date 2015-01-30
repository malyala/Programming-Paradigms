test :: [Int] -> Int
test l
	| length (tail l) == 0 = 0
	| mod head(l) 2 == 0 = head(l) + test(tail l)
	| otherwise = test(tail l)