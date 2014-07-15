-- Redefine the function positions using the function find.

positions      :: Eq a => a -> [a] -> [Int]
positions x xs = [i | i <- find x (zip xs [0..n])]
                 where n = length xs - 1

find     :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']
