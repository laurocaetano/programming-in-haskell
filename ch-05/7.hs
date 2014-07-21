-- The scalar product of two lists of integers xs and ys of length n is given by
-- the sum of the products of corresponding integers:

-- In a similar manner to the function chisqr, show how a list comprehension can
-- be used to define a function scalarproduct :: [Int] → [Int] → Int that returns
-- the scalar product of two lists. For example:

-- > scalarproduct [1, 2, 3] [4, 5, 6]
-- 32

scalarproduct       :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [k * v | (k, v) <- zip xs ys]
