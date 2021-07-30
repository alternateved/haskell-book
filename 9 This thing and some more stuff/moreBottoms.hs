module MoreBottoms where

import Data.Bool

-- 1 - Blew up
take 1 $ map (+1) [undefined, 2, 3]

-- 2 - It works
take 1 $ map (+1) [1, undefined, 3]

-- 3 - Blew up
take 2 $ map (+1) [1, undefined, 3]

-- 4 - This function returns a list of boolean values;
-- if element of list is in "aeiou" it returns True, otherwise false
itIsMystery :: [Char] -> [Bool]
itIsMystery xs = map (\x -> elem x "aeiou") xs

-- 5
  -- a - Result: [1,4,9,16,25,36,49,64,81,100]
  map (^2) [1..10]

  -- b - Result: [1, 10, 20]
  map minimum [[1..10], [10..20], [20..30]]

  -- c - Result: [15, 15, 15]
  map sum [[1..5], [1..5], [1..5]]

-- 6
negateThree :: (Num a, Eq a) => [a] -> [a]
negateThree xs = map (\x -> if x == 3 then (-x) else (x)) xs

negateThree' :: (Num a, Eq a) => [a] -> [a]
negateThree' xs = map (\x -> bool (x) (-x) (x == 3)) xs
