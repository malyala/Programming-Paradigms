--module assignment2 where
-- Keith Weaver
-- CISC 260 - A2
-- 10048505

hopscotch :: [Int] -> ([Int], Int)
hopscotch list = bestPath(paths(list))
	
paths :: [Int] -> [[Int]] --this function finds all of the paths that may occur
paths (x:y:z:ws) = map(x:)(paths(z:ws)++map(x:)(paths(ws)))
paths (x:y) = [[x]]--base cases
paths [] = [[]]--base cases


--THE NEXT TWO FUNCTIONS FIND THE BEST PATH.
bestPath :: [[Int]] -> ([Int], Int)
bestPath allPathsList = (z, sum(z)) --gives the list and the sum of the list.
	where
		lengthOfResultingPaths = length allPathsList -- not totally need for anymore than easy readability
		z = (bestPathsHelper lengthOfResultingPaths x 0)-- returns the best list


bestPathsHelper :: [[Int]] -> Int -> Int -> [Int]
bestPathsHelper allPathsList numList count
	| (count == (numList-1)) = (allPathsList!!count) -- if it's at the end of the item, recurse back
	| x > y = z -- if sum of the current list > sum the best list of the previous items, return z
	| x <= y = allPathsList!!count --else return the current item, because its the new best list.
	where
		z = (bestPathsHelper allPathsList numList (count+1)) -- recurse down the list of paths till the end
		y = sum(allPathsList!!count)--gets the list at count
		x = sum(z) --gets the sum of the recursive function.


