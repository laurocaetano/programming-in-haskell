-- Show how the library function last that selects the last element of a non-
-- empty list could be defined in terms of the library functions introduced in
-- this chapter. Can you think of another possible definition?

anotherLastImplementation :: Num a => [a] -> a
anotherLastImplementation (x) = head (reverse x)

main :: IO()
main = do
  putStrLn . show $ anotherLastImplementation [1, 2, 3, 4, 5, 6]
-- 6
