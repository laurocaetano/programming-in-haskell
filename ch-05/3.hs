-- A triple (x, y, z) of positive integers is pythagorean if x2 + y2 = z2.
-- Using a list comprehension, define a function pyths :: Int → [(Int, Int, Int)]
-- that returns the list of all pythagorean triples whose components are at most
-- a given limit. For example:

-- > pyths 10
-- [(3, 4, 5), (4, 3, 5), (6, 8, 10), (8, 6, 10)]

pyths   :: Int -> [(Int, Int, Int)]
pyths a = [(x, y, z) | (x, y, z) <- combinations a, x ^ 2 + y ^ 2 == z ^2]

combinations   :: Int -> [(Int, Int, Int)]
combinations a = [(x, y, z) | x <- [1..a], y <- [1..a], z <- [1..a]]
