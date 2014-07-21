-- In a similar way to the function length, show how the library function
-- replicate :: Int → a → [ a ] that produces a list of identical elements can
-- be defined using a list comprehension. For example:

-- > replicate 3 True
-- [True, True, True ]

replicate'     :: Int -> b -> [b]
replicate' a b = [b | _ <- [1..a]]
