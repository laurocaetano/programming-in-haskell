-- | Without looking at the standard prelude, define the higher-order library
-- | function curry that converts a function on pairs into a curried function, and,
-- | conversely, the function uncurry that converts a curried function with two
-- | arguments into a function on pairs.

-- | Hint: first write down the types of the two functions.

curry'   :: ((a, b) -> c) -> a -> b -> c
curry' f = \x y -> f(x, y)

uncurry'   :: (a -> b -> c) -> (a, b) -> c
uncurry' f = \(x, y) -> f x y
