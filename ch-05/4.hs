-- A positive integer is perfect if it equals the sum of its factors, excluding
-- the number itself. Using a list comprehension and the function factors, define
-- a function perfects :: Int → [Int] that returns the list of all perfect numbers
-- up to a given limit. For example:

-- > perfects 500
-- [6, 28, 496]

perfects   :: Int -> [Int]
perfects a = [x | x <- [1..a], sum(init (factors x)) == x]

factors   :: Int -> [Int]
factors a = [x | x <- [1..a], a `mod` x == 0]
