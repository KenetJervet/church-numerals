{-
Implementation of Church numerals in Haskell
-}

chZero = \f -> \x -> x

chSucc n = \f -> \x -> f (n f x)

chToInt churchNumeral = churchNumeral (+1) 0

intToCh 0 = chZero
intToCh num = \f -> \x -> f $ (intToCh (num-1)) f x
