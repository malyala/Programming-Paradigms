--page 47

--3.8
-- takes 3 integer parameters and if m==n && n==p then returns false

--3.9
threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent m n p = ((m /= n) && (m /= p) && (n /= p))
-- compares all elements against each other and if they dont equal, they return true. 

fourEqual :: Integer -> Integer -> Integer -> Integer -> Bool
fourEqual m n p o = ((m == n) && (m == p) && (m == p) && (m == o) && (n == p) && (n == o) && (o == p))