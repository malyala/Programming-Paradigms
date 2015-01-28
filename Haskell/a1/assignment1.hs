-- Keith Weaver
-- 10048505
--
isPerfect :: Int -> Bool -- Passes an int returns a boolea n
isPerfect 1 = True -- returns true if 1
isPerfect 0 = False -- if 0 returns false
isPerfect n
	| mod n 2 == 1 = False -- if odd return false
	| n < 0 = False -- if less than 0 than return false
	| (2 * n) == findFactor (n, n, 0) = True -- if 2 times n is equal the sum of the factors is equal to true
	| otherwise = False -- other than that, false

findFactor :: Int -> Int -> Int -> Int -- finds the sum, by going through the factors recursively
findFactor start n total
	| n < 1 = False
	| otherwise total = findFactor(start, n, total)
		| (mod start n == 0) then total + n

nthTrue :: (Int -> Bool) -> Int -> Int -- passes in the function (that has a int and boolean) and int, returns int
nthTrue func n
	| n < 1 = error "Value cannot be below"
	| otherwise = helperFunc func n 0 (-1) -- pass the function in

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