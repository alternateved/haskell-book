module ArtfulDodgy where

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = (flip dodgy) 2

-- 2
-- dodgy 1 1
-- Answer: 11

-- 3
-- dodgy 2 2
-- Answer: 22

-- 4
-- dodgy 1 2
-- Answer: 21

-- 5
-- dodgy 2 1
-- Answer: 12

-- 6
-- oneIsOne 1
-- Answer: 11

-- 7
-- oneIsOne 2
-- Answer: 21

-- 8
-- oneIsTwo 1
-- Answer: 21

-- 9
-- oneIsTwo 2
-- Answer: 22

-- 10
-- oneIsOne 3
-- Answer: 31

-- 11
-- oneisTwo 3
-- Answer: 23
