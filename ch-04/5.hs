-- Do the same for the following version, and note the difference in the number
-- of conditional expressions required:

-- True ∧ b = b
-- False ∧ _ = False

(∧) :: Bool -> Bool -> Bool
a ∧ b = if a then b else False
