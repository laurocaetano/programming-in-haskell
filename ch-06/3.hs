-- Without looking at the definitions from the standard prelude, define the following library functions using recursion.

and'        :: [Bool] -> Bool
and' []     = True
and' (b:bs) = b && and' bs

concat'        :: [[a]] -> [a]
concat' []     = []
concat' (x:xs) = x ++ concat' xs

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' x a  = [a] ++ replicate' (x - 1) a

nth' :: [a] -> Int -> a
nth' (a:_) 0 = a
nth' (a:as) x = nth' as (x - 1)

elem' :: Eq a => a -> [a] -> Bool
elem' x [] = False
elem' x (a:as) | x == a    = True
               | otherwise = elem' x as
