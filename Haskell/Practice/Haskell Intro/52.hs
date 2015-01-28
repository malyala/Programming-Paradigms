-- page 52

-- 3.14


minThree :: Int -> Int -> Int -> Int
minThree m n p
	| m > n && p > n = (n + (minVal m p))
	| n > m && p > m = (m + (minVal n p))
	| otherwise = (p + (minVal m n))

minTest :: Int -> Int -> Int
minTest m n = (minVal m n)

minVal :: Int -> Int -> Int
minVal m n
    | m <= n = m
    | otherwise = n