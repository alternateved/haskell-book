module SquareCube where

mySqr :: (Num a, Enum a) => [a]
mySqr = [x^2 | x <- [1..5]]

myCube :: (Num a, Enum a) => [a]
myCube = [x^2 | x <- [1..5]]

-- 1
myTuples :: (Num a, Enum a) => [(a, a)]
myTuples = [(x, y) | x <- mySqr, y <- myCube]

-- 2
myTuples' :: (Num a, Ord a, Enum a) => [(a, a)]
myTuples' = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]

-- 3
length' :: [a] -> Integer
length' [] = 0
length' (_:xs) = 1 + length' xs
