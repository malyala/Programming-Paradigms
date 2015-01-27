isPerfect :: Int -> Bool
isPerfect 1 = True
isPerfect 0 = False
isPerfect n
	| mod n 2 == 1 = False
	| n < 0 = False
	| (2 * n) == findFactor (n, n, 0) = True
	| otherwise = False

findFactor :: Int -> Int -> Int -> Int
findFactor start n total
	| n < 1 = False
	| otherwise total = findFactor(start, n, total)
		| (mod start n == 0) then total + n

nthTrue :: (Int -> Bool) -> Int -> Int
nthTrue func n
	| n < 1 = error "Value cannot be below"
	| otherwise = helperFunc func n 0 (-1)

helperFunc :: (Int -> Bool) -> Int -> Int -> Int -> Int
helperFunc func n numb count
	| count == n = (numb - 1)
	| func numb == True = helperFunc func n (numb + 1) (count + 1)
	| func numb == False = helperFunc func n (numb + 1) count


isPrime :: Int -> Bool
isPrime 1 = True
isPrime 0 = False
isPrime n
	| n < 0 = False
isPrime n = not(hasFactor n 2 (n-1))

hasFactor :: Int -> Int -> Int -> Bool
hasFactor n low high
	| low > high = False
	| mod n low == 0 = True
	| otherwise = hasFactor n (low + 1) high