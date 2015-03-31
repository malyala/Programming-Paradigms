-- Some sample hopscotch courses and a solution for each, to
-- help test Assignment 2 solutions.
-- CISC 260, Winter 2015
-- M. Lamb
module Assn2Examples where
import Assignment2

course1 = [1,4,2,1,5]::[Int]
-- best path is [1,2,5]

course2 = [5,5,6,2,1,7,6]::[Int]
-- tie for best path: [5,6,1,6] and [5,6,7]

course3 = [3,3,2,7,10,3,7,4,1,4]::[Int]
-- best path is [3,2,10,7,4]

course4 = [8,10,5,3,10,9,6,7,4,10,4,9,5,6,9]::[Int]
-- best path is [8,5,10,7,10,9,9]

course5 = [7, 8, 5, 1, 2, 7, 1, 10, 4, 10, 8, 2, 8, 1, 10, 2, 7, 8, 5, 8]::[Int]
-- best path is ([7,5,7,10,10,8,10,8,8],73)

course6 = [9, 6, 4, 8, 4, 3, 8, 3, 2, 9]::[Int]
-- tie for best path: [9,4,4,8,9] and [9,8,8,9]