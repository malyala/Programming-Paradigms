{-
 - Starting code for Assignment 3
 - CISC 260, Winter 2015
 - Keith Weaver
 - 10048505
 - This is my assignment for Algebaric types. 
 -}

module Assignment3 where

-- Algebraic type for a binary search tree of integers.  A tree may be empty, or it 
-- may have a root, a left subtree and a right subtree.  (Note that one or both of the
-- subtrees might be empty.)  

data Tree = Empty | MakeTree Tree Int Tree

-- Creates a multi-line sideways representation of a tree.  The root will be on the left,
-- with its left child below it and its right child above it.  If you tilt your head to the
-- left you'll see the structure of the tree.
-- The second parameter is the indentation level.
treeToString :: Tree -> Int -> String
treeToString Empty _ = ""
treeToString (MakeTree left root right) indent =
    rightString ++ 
    (spaceString indent) ++ (show root) ++ "\n" ++ 
    leftString
    where
    leftString = treeToString left (indent+4)
    rightString = treeToString right (indent+4)
    
-- Creates a string consisting of n spaces (assuming n >= 0)
spaceString :: Int -> String
spaceString 0 = ""
spaceString n = ' ':(spaceString (n-1))

-- treeToString will be used to display trees
instance Show Tree where show tree = treeToString tree 0

-- A legal binary search tree created by hand for your use.  It's
-- a pain to create a tree this way and normally you could create a
-- tree using the add function.  But I'm providing this tree so that
-- you have a tree to practice with even before your add function 
-- is working.
sampleTree = 
    (MakeTree -- tree with root 45
        (MakeTree -- tree with root 15
            (MakeTree -- tree with root 4
                (MakeTree Empty (-1) Empty)
                4
                (MakeTree Empty 7 Empty)
            )
            15
            (MakeTree Empty 23 Empty)
        )
        45
        (MakeTree -- tree with root 72
            Empty
            72
            (MakeTree -- tree with root 103
                (MakeTree Empty 99 Empty)
                103
                Empty
            )
        )
    )

-- This function finds the longest path  
height :: Tree -> Int
height Empty = 0 --if empty returns 0
height (MakeTree leftTree _ rightTree) = max (height leftTree) (height rightTree) + 1


--This function will recurse through the BST for the value. If found it will return the value. 
search :: Int -> Tree -> Bool
search _ Empty = False
search goal (MakeTree leftTree value rightTree)
	| value == goal = True
	| goal < value = (search goal leftTree)
	| otherwise = (search goal rightTree)


--This finds the maximum value of the bst. The if statement is for if the root value is the max.
maxValue :: Tree -> Int
maxValue Empty = 0
maxValue (MakeTree leftTree value rightTree) 
    | value > n = value
    | otherwise = n
    where
    n = max (maxValue leftTree) (maxValue rightTree)


-- this adds a value. It does this by recursing through either the left side or the right side, depending if the target is less, greater or
-- equal to the current root value.
add :: Int -> Tree -> Tree
add newValue Empty = MakeTree Empty newValue Empty
add newValue (MakeTree leftTree value rightTree)
	| newValue == value = MakeTree leftTree value rightTree
	| newValue < value = MakeTree (add newValue leftTree) value rightTree
	| newValue > value = MakeTree leftTree value (add newValue rightTree)

--add two does the same thing as add, I just needed to change the parameters around for createTree
--"add" seemed cleaner than add2 so thats why I have both.
add2 ::  Tree -> Int -> Tree
add2 Empty newValue = MakeTree Empty newValue Empty
add2 (MakeTree leftTree value rightTree) newValue
	| newValue == value = MakeTree leftTree value rightTree
	| newValue < value = MakeTree (add2 leftTree newValue) value rightTree
	| newValue > value = MakeTree leftTree value (add2 rightTree newValue)

	
-- CreateTree uses the Foldl and adds the result tree with each list value.	
createTree :: [Int] -> Tree
createTree [] = error "list is empty"
createTree (x:xs) = foldl add2 (MakeTree Empty x Empty) xs


--BalancedTree takes a list of integers and creates a tree
balancedTree :: [Int] -> Tree
balancedTree [] = Empty
balancedTree lis = balancedTreeHelper lis Empty
--uses a helper function

--the helper function takes a tree and list, passes the tree along recursively while removing added elements from the list
balancedTreeHelper :: [Int] -> Tree -> Tree
balancedTreeHelper [] newTree = newTree
balancedTreeHelper lis newTree= balancedTreeHelper newList (add newValue newTree)
	where
	newValue = centerElement lis
	newList = removeFromList newValue lis []

--It finds the center element of the list to find the root value. It does this because you want the tree to
-- be as equally balanced as possible so take the center value will do this
centerElement :: [Int] -> Int
centerElement lis = centerElementHelper lis lis
--helper function for center
centerElementHelper :: [Int] -> [Int] -> Int
centerElementHelper [] (y:ys) = y
centerElementHelper (x:[]) (y:ys) = y
centerElementHelper (x:xx:xs) (y:ys) = centerElementHelper xs ys

--removes an element from the list once its been added to the tree
removeFromList :: Int -> [Int] -> [Int] -> [Int]
removeFromList _ [] newList = newList
removeFromList target (x:xs) newList
	| x == target = removeFromList target xs newList
	| otherwise = removeFromList target xs addedListWithValue
	where
	addedListWithValue = newList ++ [x]

	
--Recurses through the tree adding elements to a tree. 
treeToList :: Tree -> [Int]
treeToList Empty = []
treeToList (MakeTree leftTree value rightTree) = (treeToList leftTree) ++ [value] ++ (treeToList rightTree)


--Deletes a value from the list.
delete :: Int -> Tree -> Tree
delete _ Empty = Empty -- tree is empty return empty
delete target (MakeTree leftTree value rightTree)
	| target == value = deleteRoot (MakeTree leftTree value rightTree) -- if the target is the root, delete the root
	| target < value = MakeTree (delete target leftTree) value rightTree --if less, than recurse down the left tree
	| target > value = MakeTree leftTree value (delete target rightTree) -- if right than recurse down the right tree

--this function is used to delete the root, if the left or right is empty, it replaces it with that.
-- if both have values, it finds the left most element of the right tree. This value should act as the lowest value of
-- the right tree, so the center value.
deleteRoot :: Tree -> Tree
deleteRoot (MakeTree leftTree value Empty) = leftTree
deleteRoot (MakeTree Empty value rightTree) = rightTree
deleteRoot (MakeTree leftTree value rightTree) = (MakeTree leftTree (leftItem rightTree) rightTree)

leftItem :: Tree -> Int
leftItem (MakeTree Empty value rightTree) = value
leftItem (MakeTree leftTree _ _) = leftItem leftTree