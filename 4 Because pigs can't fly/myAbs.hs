module MyAbs where

myAbs :: Integer -> Integer
myAbs x = if (x > 0) then x else if (x == 0) then 0 else (-x)
