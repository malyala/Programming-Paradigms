--Goal: cover all basic concepts
--We will see...

--Concepts to cover: (Watching syntax and trying everything)

import Data.Char -- used later

-- Defining concepts
what :: String
what = "What Keith confused?"

--BASIC FUNCTIONS

cube :: Int -> Int
cube 0 = 0
cube n = n * n * n

-- CONDITIONAL
aboveOrBelow :: Int -> String
aboveOrBelow n
	| n < 0 = "Below"
	| n == 0 = "Middle"
	| otherwise = "Above"


-- WORKING WITH CHARACTERS

nextChar :: Char -> Char
nextChar c = chr ((ord c) + 1)
-- has to be tested with
-- nextChar 'c' <-- Single quotes

---WHAT ELSE THATS BASIC....

-- RECURSION
factorial :: Int -> Int
factorial 0 = 1
factorial n | n < 0 = error "less than zero"
factorial n = n * factorial(n-1)

-- calling a different function with a function

factorail :: (Int->Int) -> Int -> Int
factorail func n = (func n)
-- I thought I'd get clever with a spelling error on purpose so it would
-- still give you a factorial even if you had a typo... didnt work
-- in this case you have to type in "factorail factorial 5"

pow2 :: Int -> Bool
pow2 1 = True
pow2 n
	| mod n 2 == 0 = pow2(div n 2)
	| otherwise = False
