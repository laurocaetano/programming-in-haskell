-- | Using foldl, define a function dec2int::[Int] → Int that converts a decimal
-- | number into an integer. For example:
-- | dec2int [2,3,4,5] -> 2345

dec2int :: [Int] -> Int
dec2int = foldl (\x y -> 10 * x + y) 0
