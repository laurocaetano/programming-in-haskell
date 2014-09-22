-- Define a recursive function merge :: Ord a ⇒ [a] → [a] → [a] that merges two
-- sorted lists to give a single sorted list. For example:

-- merge [2,5,6] [1,3,4]
-- [1,2,3,4,5,6]

merge :: Ord a => [a] -> [a] -> [a]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys) | x <= y = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys
