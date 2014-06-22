-- To execute this file, just run: runhaskell 5.hs

-- What would be the effect of replacing ≤ by < in the definition of qsort?
-- R: It will produce a sorted list with uniq values.

-- Quicksort
uniqQsort :: Ord a => [a] -> [a]
uniqQsort [] = []
uniqQsort (x:xs) = uniqQsort smaller ++ [x] ++ uniqQsort larger
               where
                 smaller = [a | a <- xs, a < x]
                 larger = [b | b <- xs, b > x]

main = do
  putStrLn . show $ uniqQsort[3, 7, 4, 1, 1, 6, 4, 7, 4, 3]
-- [1,3,4,6,7]
