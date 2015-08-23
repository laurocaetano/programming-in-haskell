-- | Redefine the functions map f and filter p using foldr .

map' f xs = foldr (\x xs -> f x : xs) []

filter' p xs = foldr (\x xs -> if p xs then x:xs else xs) []
