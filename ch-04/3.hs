-- In a similar way to ∧, show how the logical disjunction operator ∨
-- can be defined in four different ways using pattern matching.

(∨) :: Bool -> Bool -> Bool
True ∨ False  = True
True ∨ True   = True
False ∨ False = False
False ∨ True  = True

(∨∨) :: Bool -> Bool -> Bool
True ∨∨ _  = True
False ∨∨ False = False
False ∨∨ True  = True

(∨∨∨) :: Bool -> Bool -> Bool
False ∨∨∨ False = False
True ∨∨∨ _  = True

(∨∨∨∨) :: Bool -> Bool -> Bool
False ∨∨∨∨ False = False
_ ∨∨∨∨ _  = True
