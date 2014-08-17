-- Using the five-step process, define the library functions that
-- calculate the sum of a list of numbers, take a given number of elements
-- from the start of a list, and select the last element of a non-empty list.

--  1 - define the type
--  2 - enumerate the cases
--  3 - define the simple cases
--  4 - define the other cases
--  5 - generalise and simplify

-- 1
sum' :: [Int] -> Int
-- 2
sum' [] =
sum' xs =
-- 3
sum' [] = 0
sum' (x:xs) =
-- 4
sum' [] = 0
sum' (x:xs) = x + sum xs
-- 5
sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum xs
