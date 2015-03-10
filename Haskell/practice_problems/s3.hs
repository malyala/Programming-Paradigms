--map
--filter
--fold

k :: Int -> Float -> Float
k x y = (fromIntegral x) + y

guess = (+1) . (f 8)
	where f x y = x-y

f :: Char -> String -> String
f ch str
	| ('a' <= ch && ch <= 'z') = ch : str
	| otherwise = str

maxFunc f1 f2 x
	| (f1 x) > (f2 x) = f1 x
	| otherwise = f2 x

m1 :: Int -> Int
m1 x = x + 6

m2 :: Int -> Int
m2 x = x*x - 1

puzzle :: Int -> Int -> Int
puzzle x y = x*y - 5

mystery p = filter (uncurry p)


data Thing = Thing1 Int Int | Thing2 Int Int Int
	deriving (Ord, Eq)

test :: Thing -> Bool
test (Thing2 x y z) = x < y && y < z
test (Thing1 a b) = a < b

mapAlt :: (Int -> Int) -> (Int -> Int) -> [Int] -> [Int]
mapAlt f g [] = []
mapAlt f g [x] = [(f x)]
mapAlt f g (x:y:xs) = (f x) : (g y) : (mapAlt f g xs)