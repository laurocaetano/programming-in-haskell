-- Modify the Caesar cipher program to also handle upper-case letters.
import Data.Char

letLower2int   :: Char -> Int
letLower2int c = ord c - ord 'a'

int2letLower   :: Int -> Char
int2letLower n =  chr(ord 'a' + n)

letUpper2int   :: Char -> Int
letUpper2int c = ord c - ord 'A'

int2letUpper   :: Int -> Char
int2letUpper n =  chr(ord 'A' + n)

shift                 :: Int -> Char -> Char
shift n c | isLower c = int2letLower((letLower2int c + n) `mod` 26)
          | isUpper c = int2letUpper((letUpper2int c + n) `mod` 26)
          | otherwise = c

encode      :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
