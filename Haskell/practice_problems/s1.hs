isOdd :: Int -> Bool
isOdd x = mod x 2 /= 0

-- an example of function composition
-- Provides the second element
second :: [a] -> a
second = head . tail


--PG: 220, 10.1

doubleAll1 :: [Int] -> [Int]
doubleAll1 [] = []
doubleAll1 lis = map (*2) lis

doubleAll2 :: [Int] -> [Int]
doubleAll2 [] = []
doubleAll2 (x:xs) = (x * 2) : (doubleAll2 xs)

-- I need one more


-- 10.2
myLength :: [Int] -> Int
myLength lis = sum(map (+1) lis) - sum(lis)

--10.3 
addUp :: [Int] -> [Int]
addUp ns = filter greaterOne (map (+1) ns)
	where
	greaterOne n = n > 1


addUp1 :: [Int] -> [Int]
addUp1 ns = map (+1) (filter greaterOne ns)
	where
	greaterOne n = n > 0
	
	
-- 10.6
--should get rid of this 
isGreaterZero :: Int -> Bool
isGreaterZero x
	| x > 0 = True
	| otherwise = False

squares :: [Int] -> Int
squares ns = sum(map square (filter isGreaterZero ns))
	where
	square x = x * x
	
--same as one above but using lambda abstraction
squares3 :: [Int] -> Int
squares3 ns = sum(map (\x -> x*x) (filter isGreaterZero ns))


--10.7
tenSev :: [Int] -> Int
tenSev lis = minimum (filter isGreaterZero lis)
--not complete


--10.8
--this!

--10.9
--this!

--10.13
--could be shorter
squares2 :: Int -> Int
squares2 n = foldr1 (+) (map square lis)
	where
	square x = x * x
	lis = [1..n]

--squares2 :: [Int] -> Int
--squares2 lis = foldr1 (+) (map square lis)
--	where
--	square x = x*x

--10.14
--positive integers only
--using is greater than zero
positiveSquares :: [Int] -> Int
positiveSquares lis = foldr1 (+) (map square (filter isGreaterZero lis))
	where
	square x = x*x
	
--10.18
--Return loan?
--this!


--10.35
-- Efficiency and when you want to customize the built in library function.


--PG. 235
--11.2
--this!

--11.3
--this!

--PG. 238
--11.7
--

--11.8
--total :: (Int -> Int) -> (Int -> Int)
--total f n = f
--this!

--11.9
--this!

--11. 10
--this!

add :: Int -> Int -> Int
add a b = a+b

double :: Int -> Int
double x = x * 2
