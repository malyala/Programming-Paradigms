module assignment2 where
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
--
--
--
--
--

hopscotch :: [Int] -> ([Int], Int)
hopscotch [] = ([], 0)
hopscotch currentl = 