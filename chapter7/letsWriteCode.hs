module LetsWriteCode where

-- 1
tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a 
tensDigit' x = d
  where xLast = fst $ divMod x 10
        d     = snd $ divMod xLast 10 

hunsDigit :: Integral a => a -> a
hunsDigit x = d2
  where xLast = fst $ divMod x 100
        d2    = snd $ divMod xLast 100
        
-- 2
foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ False = x
foldBool3 _ y True  = y

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y z =
  case z of 
    True  -> y
    False -> x

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z
  | z == True  = y
  | z == False = x

-- 3
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
