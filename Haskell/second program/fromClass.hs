fact :: Int -> Int
fact 1 = 1
fact 0 = 1
fact n
	| n < 0 = error "no negative factorials"
	| otherwise = n * (fact (n-1))

isPow2 :: Int -> Bool
isPow2 1 = True
isPow2 n
	| n < 1 = False
	| mod n 2 /= 0 = False
	| otherwise = isPow2 (div n 2)

sumOfMulPar :: Int -> Int -> Int
sumOfMulPar x y = x + y

--The assignment with two variables for now, cant wrap my head around one (recursion)
isPerfect :: Int -> Int -> Bool
isPerfect start n =
if (n < 1) then False else
if((mod start n) == 0) then
if (isPerfect(start, n-1) + total == (start * 2)) then True else False