module FixingDividedBy where

data DividedResult = 
    Result Integer
  | DividedByZero
    deriving Show

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go  n   d count
          | n < d = (count, n)
          | otherwise = 
              go (n - d) d (count + 1)

fixedDividedBy :: Integer -> Integer -> DividedResult
fixedDividedBy _ 0 = DividedByZero
fixedDividedBy num denom = go n d 0
  where n  = abs num
        d  = abs denom
        sn = signum num
        sd = signum denom
        go n d count
          | n < d = Result (sn * sd * count)
          | otherwise = 
              go (n - d) d (count + 1)
