-- Redefine the following version of the conjunction operator using conditional
-- expressions rather than pattern matching:

-- True ∧ True = True
-- _ ∧ _ = False

(∧) :: Bool -> Bool -> Bool
a ∧ b = if a && (a == b) then True else False
