-- Define the exponentiation operator ↑ for non-negative integers using the same pattern of recursion as the multiplication operator ∗, and show how 2 ↑ 3 is evaluated using your definition.

power :: Int -> Int -> Int
power base 0 = 1
power base 1 = base
power base exponential = base * (power base (exponential - 1))
