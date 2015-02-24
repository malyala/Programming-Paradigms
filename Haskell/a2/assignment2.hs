--module assignment2 where
-- Keith Weaver
-- CISC 260 - A2
-- 10048505

--hopscotch :: [Int] -> ([Int], Int)
--hopscotch [] = ([], 0)
--hopscotch currentl = 


	
pathsHelper :: [Int] -> [[Int]] -> [Int] -> [Int]
pathsHelper cl masterList originalList
	| ((lenOriginal1 == lenCl) || (lenOriginal2 == lenCl)) = [] : cl : masterList
	| otherwise =  pathsHelper((cl:(originalList!!(lenCl + 2))) masterList originalList) --add the element, 2 away and recurse
	where
		lenOriginal1 = ((length originalList)/2)-1
		lenOriginal2 = ((length originalList)/2)-2
		lenCl = length cl
		
pathsHelper2 :: [Int] -> [[Int]] -> [Int] -> [Int]
pathsHelper2 cl masterList originalList
	| ((lenOriginal1 == lenCl) || (lenOriginal2 == lenCl)) = [] : cl : masterList
	| otherwise =  pathsHelper2((cl:(originalList!!(lenCl + 3))) masterList originalList)--add the element, 3 away and recurse
	where
		lenOriginal1 = ((length originalList)/2)-1
		lenOriginal2 = ((length originalList)/2)-2
		lenCl = length cl

		
--paths :: [Int] -> [[Int]]
--paths [] = [[]]
--paths list = pathsHelper2(head(list) (pathsHelper( head(list) [[]] list)) list)

--bestPath :: [[Int]]
--bestPath :: allPathsList = (z, sum(z))
--	where
--		z = bestPathsHelper(allPathsList (length allPathsList) 0)
--
--
--bestPathsHelper :: [[Int]] -> Int -> Int
--bestPathsHelper :: allPathsList numList count
--	| count == (numList-1) = allPathsList!!count
--	| x > y = z
--	| x <= y = allPathsList!!count
--	where
--		z = bestPathsHelper(allPathsList numList count+1)
--		y = sum(allPathsList!!count)--gets the list at count
--		x = sum(z) --gets the sum of the recursive function.

