-- Redefine the following version of the conjunction operator using conditional
-- expressions rather than pattern matching:

-- True ∧ True = True
-- _ ∧ _ = False

(∧) :: Bool -> Bool -> Bool
a ∧ b = if a then
          if b then True else False
        else
          False
