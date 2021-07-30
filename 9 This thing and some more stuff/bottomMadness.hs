module BottomMadness where

-- 1 - Blew up
[x^y | x <- [1..5], y <- [2, undefined]]

-- 2 - It works
take 1 $
  [x^y | x <- [1..5], y <- [2, undefined]]

-- 3 - Blew up
sum [1, undefined, 3]

-- 4 - It works
length [1, 2, undefined]

-- 5 - Blew up
length $ [1, 2 ,3] ++ undefined

-- 6 - It works
take 1 $ filter even [1, 2, 3, undefined]

-- 7 - Blew up
take 1 $ filter even [1, 3, undefined]

-- 8 - It works
take 1 $ filter odd [1, 3, undefined]

-- 9 - It works
take 2 $ filter odd [1, 3, undefined]

-- 10 - Blew up
take 3 $ filter odd [1, 3, undefined]
