type Bit = Int

unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

chop8' :: [Bit] -> [[Bit]]
chop8' = unfold null (take 8) (drop 8)

map'   :: (a -> b) -> [a] -> [b]
map' f = unfold null (f . head) tail

iterate'   :: (a -> a) -> a -> [a]
iterate' f = unfold (const False) id f
