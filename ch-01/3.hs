-- To execute this file, just run: runhaskell 3.hs

-- Define a function product that produces the product of a list of numbers,
-- and show using your definition that product [ 2, 3, 4 ] = 24.

prod :: Num a => [a] -> a
prod [] = 1
prod (x:xs) = x * prod xs

main = do
  putStrLn . show $ prod [2, 3, 4]
-- 24
