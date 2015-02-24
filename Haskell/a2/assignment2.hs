--module assignment2 where
-- Keith Weaver
-- CISC 260 - A2
-- 10048505

-- finding all paths
--case 1: starting at 1, jump 2 everytime
--case 2: starting at 1, jump 2 everytime except at n-1 item (goes from end to second item)
--example:
--74596123
--C1: 7562
--C2: (very last item -> 2) 7563 
--	  (second last item ->6) 7513 (1 to 3 is 2)
--	  (third last item -> 5) 7913 (jumped 5)
--
--case 3: jump 3 everytime
--case 4: jump 3 except at n-1 starting at very last element of case 3
--
--
-- sudo to find all paths 
-- paths :: [Int] -> [[Int]]
-- paths :: list = []
-- paths :: list
-- 		  return [helperPaths(list len(list) [] 2 3) : helperPaths(list len(list) [] 3 2)] <-- no idea is what an add is as of now
-- 
-- helpPaths :: list n currentResults jump jump2
-- 			if n = 0 then return currentResults
-- 			else
--  		    path = singlePath(list n 0 [] jump jump2)
--				add path to current results
-- 				helperPaths(list (n - jump) currentResults)
-- 
-- singlePath :: list n i path jump jump2
-- 				if n == len(list) - 1 || n == len(list) - 2 = return [list[i]] <- last element
-- 				else
--					if n==i then
--						return [ list[i] : singlePath(list n (i+jump2) path jump jump2)] <-- if you are working with jumps of all 2s then adding paths with one element jumping 3
--					else
--						return [ list[i] : singlePath(list n (i+jump) path jump jump2)]
-- 
-- bestPath allPathsList = (z, sum(z))
-- 			where
--				z = bestPathsHelper(allPathsList len(allPathsList) 0)
-- 
-- bestPathsHelper :: allPathsList numList count
-- 					if count == (numList-1) then return allPathsList[count]
--					else: 
--						|x > y = return z
--						|x <= y = return allPathsList(count)
-- 						where
--							z = allPathsList(numList count+1)
-- 							y = sum(allPathsList[count])
--							x = sum(z)
--
--above assumes 1 different type of jump, so i may need to add a variety of sizes but it works for her example
--	example: 2 jump 3 jump  3 jump 2
-- also assumes : is add two list or add an element to a list
--
--hopscotch :: [Int] -> ([Int], Int)
--hopscotch [] = ([], 0)
--hopscotch currentl = 

singlePath :: [Int] -> Int -> Int -> [Int] -> Int -> Int -> [Int]
singlePath list n i path jump jump2
	|(n == ((length list)-1)) || (n == ((length list-2))) = [list[i]]
	|otherwise
		| n == i = [i] ++ singlePath(list n (i+jump) path jump jump2)
		| otherwise = [i] ++ singlePath(list n (i+jump) path jump jump2)
	-- syntax error with |

paths :: [Int] -> [[Int]]
paths [] = []
paths list = [helperPaths(list (length list) [] 2 3)] ++ [helperPaths(list (length list) [] 3 2)]

-- helpPaths :: list n currentResults jump jump2
-- 			if n = 0 then return currentResults
-- 			else
--  		    path = singlePath(list n 0 [] jump jump2)
--				add path to current results
-- 				helperPaths(list (n - jump) currentResults)
-- 

helperPaths :: [Int] -> Int -> [[Int]] -> Int -> Int
helperPaths list n currentResults jump jump2
	| n == 0 = currentResults
	| otherwise = []