-- Using merge, define a recursive function msort :: Ord a ⇒ [a] → [a]
-- that implements merge sort, in which the empty list and singleton lists are
-- already sorted, and any other list is sorted by merging together the two lists
-- that result from sorting the two halves of the list separately.

-- Hint: first define a function halve :: [a] → [([a], [a])] that splits a
-- list into two halves whose lengths differ by at most one.

msort :: Ord a => [a] -> [a]
msort [] = []
msort [a] = [a]
msort as = merge(msort start) (msort end)
           where (start, end) = halve as

halve    :: [a] -> ([a], [a])
halve xs = splitAt halfSize xs
           where halfSize = length xs `div` 2

merge :: Ord a => [a] -> [a] -> [a]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys) | x <= y = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys
