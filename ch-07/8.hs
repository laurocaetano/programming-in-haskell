import Data.Char

type Bit = Int

bin2int      :: [Bit] -> Int
bin2int bits = foldr (\x y -> x + 2 * y) 0 bits

int2bin   :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8      :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

chop8      :: [Bit] -> [[Bit]]
chop8   [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

transmit :: String -> String
transmit = decode . channel . encode

channel :: [Bit] -> [Bit]
channel = id

parity      :: [Bit] -> Bit
parity bits
  | odd(sum bits) = 1
  | otherwise     = 0

addParity :: [Bit] -> [Bit]
addParity bits = (parity bits) : bits

chop9      :: [Bit] -> [[Bit]]
chop9 []   =  []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

checkParity :: [Bit] -> [Bit]
checkParity (b:bs)
  | b == parity bs = bs
  | otherwise      = error "Invalid parity"

encode :: String -> [Bit]
encode = concat . map (addParity . make8 . int2bin . ord)

decode :: [Bit] -> String
decode = map (chr . bin2int . checkParity) . chop9
