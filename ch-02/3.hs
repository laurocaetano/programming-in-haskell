--  The script below contains three syntactic errors. Correct these errors and
--  then check that your script works properly using Hugs.
--    N = a ’div’ length xs
--        where
--         a = 10
--        xs = [1,2,3,4,5]

-- 1: The name should start with a lower case.
-- 2: The indentation of `xs` is wrong.
-- 3: It should be backticks -> `

n = a `div` (length xs)
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

main :: IO()
main = do
  putStrLn . show $ n
-- 2
