--Goal: cover all basic concepts
--We will see...

--Concepts to cover: (Watching syntax and trying everything)

import Data.Char -- used later

-- Defining concepts
what :: String
what = "What Keith, confused?"

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


--so thats recursion, going to come back to that
-- now time to figure out list and tuples

-- returns the second element in a list

second :: [a] -> a
second lis = head(tail lis)

testwList :: [a] -> a
testwList l = head(l)

testwList2 :: [a] -> Bool -- check to make sure list is a lease one
testwList2 l
	| length l > 0 = True
	| otherwise = False

testwList3 :: [a] -> Int -> Int
testwList3 l n
	| length l > 0 = n * n
	| otherwise = 0
-- TEST CASES
-- testwList3 [1,3,4,5] 3
-- testwList3 [] 1

testwList4 :: [a] -> a
testwList4 l = head(reverse (tail l))
--returns last value <--- Awesome


--Whats n * the value of the first element of the list and the last (add them)
weird :: [Int] -> Int -> Int
weird l n
	| length l > 0 = ((head(l)) + (head(reverse(tail l))))* n
	| otherwise = length l
-- TEST CASE
-- weird [4,5,6] 2
-- 20

tryEmpty :: [Int] -> Bool
tryEmpty l
	| length l == 0 = True
	| otherwise = False
-- Just had to double check syntax

tryTail :: [Int] -> Bool
tryTail l
	| length(tail l) == 0 = True
	| length(tail l) > 0 = False
	| otherwise = False
-- goal of this function is to check to see if the tail is empty


--loop through all values and get sum, not using the built in function
tryLoop :: [Int] -> Int
tryLoop l
	| length(tail l) == 0 = head(l)--if tail is nothing return the head, b/c only one value
	| length(tail l) > 0 = head(l) + tryLoop(tail l)
	| otherwise = 0
-- worked on first compile!
-- works

trySum :: [Int] -> Int -> Int
trySum l n = (sum l) * n
--works
-- TEST CASE
-- trySum [1,2,3] 2

-- I think I have to get to tuples, but... whatever, when the videos catch up, I will :P

playingWithRead :: String -> Int -> Int
playingWithRead s n = (read s) * n


--useless use of read and show
stupidProgram :: String -> Int -> Bool
stupidProgram s n  
	| x > 10000 = True
	| otherwise = False
	where
		x = read (reverse s) * n
--TEST CASE
--stupidProgram "0001" 2
--False
--stupidProgram "000000000001" 2
--True

--okay its like one, time to figure out tuples.]

--testing something out,
mystery :: Int->Int->Int
mystery x n
	| n == 0 = 1
	| n == 1 = x
	| x < n = x * n
	| n > x = mystery(2*x)(n-x)
	| otherwise = mystery (n+x)(n-1)


--elemCount :: [Int] -> Int -> Int
--elemCount l n
--	| length (tail l) < 0 = 0
--	| length (tail l) == 0 = 0
--	| (head(l) == n) = (1 + elemCount((tail l) n))
--	| otherwise = elemCount((tail l) n)

prefix :: String -> Int -> String
prefix s n
	| n > length s = error "N is larger than string"
	| n < 0 = error "N is a negative"
	| otherwise = helpFunction(s, n, 0)

helpFunction :: String -> Int -> Int -> String
helpFunction str n count
	| count == n = head(str)
	| otherwise = head(str) ++ helpFunction((tail str), n, count+1)