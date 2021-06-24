module Recursion where

recursiveSum :: (Eq a, Num a) => a -> a
recursiveSum 0 = 0
recursiveSum n = n + recursiveSum (n - 1)

recursiveMultiply :: Integral a => a -> a -> a
recursiveMultiply _ 0 = 0
recursiveMultiply x y = x + recursiveMultiply x (y - 1)
