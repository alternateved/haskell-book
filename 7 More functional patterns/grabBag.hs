module GrabBag where

-- a
addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of
                  True -> f n
                  False -> n
                  where f n = n + 1

addOneIfOdd' :: Integral a => a -> a
addOneIfOdd' n = case odd n of
                  True -> f n
                  False -> n
                  where f = \n -> n + 1

-- b
addFive :: (Num a, Ord a) => a -> a -> a
addFive x y = (if x > y then y else x) + 5

addFive' :: (Num a, Ord a) => a -> a -> a
addFive' = \x -> \y -> (if x > y then y else x) + 5

-- c
mFlip :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
mFlip f = \x -> \y -> f y x

mFlip' :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
mFlip' f x y = f y x
