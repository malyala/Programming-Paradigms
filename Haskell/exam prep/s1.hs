-- pg 48 3.9
threeDif :: Int -> Int -> Int -> Bool
threeDif x y z
	| z == y = False
	| z == x = False
	| y == x = False
	| otherwise = True

threeDif2 :: Int -> Int -> Int -> Bool
threeDif2 x y z
	| z == y || z == x || y == x = False
	| otherwise = True

-- pg 48 3.10
fourEqual :: Int -> Int -> Int -> Int -> Bool
fourEqual w x y z
	| w /= x = False
	| w /= y = False
	| w /= z = False
	| x /= y = False
	| x /= z = False
	| z /= y = False
	| otherwise = True

fourEqual2 :: Int -> Int -> Int -> Int -> Bool
fourEqual2 w x y z
	| w /= x && w /= y && w /= z && x /= y && x /= z && z /= y = False
	| otherwise = True
-- or write it the other way lol



--min takes 2 ints returns 1
--minThree takes 3 ints returns 1

min1 :: Int -> Int -> Int
min1 x y
	| x < y = x
	| otherwise = y

minThree :: Int -> Int -> Int -> Int
minThree x y z
	| w < z = w
	| otherwise = z
	where
		w = (min1 x y)

--- WATCH CALLING A FUNCTION ON THE EXAM!

averageOfTwo :: Float -> Float -> Float
averageOfTwo x y = (x+y)/2

averageOfThree :: Float -> Float -> Float -> Float
averageOfThree x y z = (x+y+z)/3


rangeProduct :: Int -> Int -> Int
rangeProduct m n
	| n < m = 0
	| otherwise = m*(m+1)*(rangeProduct m (n-1))*(n-1)*n

sum1 :: Int -> Int
sum1 0 = 0
sum1 n = sum1 (n-1) + n



listW :: [Int] -> Int
listW (x:y:ys) = x+y

rev :: [Int] -> [Int]
rev [] = []
rev (x:xs) = (rev xs)++[x]

rev2 :: [Int] -> [Int]
rev2 [x] = [x]
rev2 [x,y] = [y,x]
rev2 (x:y:ys) = (swap ys)++[y,x]

