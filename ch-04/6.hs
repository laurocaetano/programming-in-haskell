-- Show how the curried function definition mult x y z = x ∗y ∗z can be
-- understood in terms of lambda expressions.

mult = (\x -> (\y -> (\z -> x * y * z)))
