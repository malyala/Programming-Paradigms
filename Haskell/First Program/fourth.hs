isZero :: Int -> Bool
isZero n = (n == 0)

absVal :: Int -> Int
absVal n
	| n < 0 = (-1 * n)
	| n >= 0 = n