-- Consider a function safetail :: [ a ] → [ a ] that behaves as the library func-
-- tion tail, except that safetail maps the empty list to itself, whereas tail
-- produces an error in this case. Define safetail using:

-- (a) a conditional expression;
-- (b) guarded equations;
-- (c) pattern matching.
-- Hint: make use of the library function null.

safetail' :: [a] -> [a]
safetail' xs = if null xs then xs else tail xs

safetail'' :: [a] -> [a]
safetail'' xs | null xs    = xs
              | otherwise  = tail xs

safetail''' ::  [a] -> [a]
safetail''' [] = []
safetail''' (_:xs) = xs
