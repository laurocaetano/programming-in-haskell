-- To execute this file, just run: runhaskell 4.hs

-- How should the definition of the function qsort be modified so that it
-- produces a reverse sorted version of a list?

-- Quicksort
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                 smaller = [a | a <- xs, a <= x]
                 larger = [b | b <- xs, b > x]

-- To change the order, just swap the larger and smaller arrays.
reverseQsort :: Ord a => [a] -> [a]
reverseQsort [] = []
reverseQsort (x:xs) = reverseQsort larger ++ [x] ++ reverseQsort smaller
                      where
                        smaller = [a | a <- xs, a <= x]
                        larger = [b | b <- xs, b > x]

main = do
  putStrLn . show $ qsort [3, 7, 4, 1, 1, 6, 4, 7, 4, 3]
-- [1,1,3,3,4,4,4,6,7,7]
  putStrLn . show $ reverseQsort [3, 7, 4, 1, 1, 6, 4, 7, 4, 3]
-- [7,7,6,4,4,4,3,3,1,1]
