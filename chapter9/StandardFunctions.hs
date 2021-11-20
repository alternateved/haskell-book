module StandardFunctions where

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny p (x : xs) = p x || myAny p xs

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x : xs) = e == x || myElem e xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' e = myAny (== e)

myReverse :: [a] -> [a]
myReverse l = go l []
  where
    go [] l = l
    go (x:xs) l = go xs (x:l)

squish :: [[a]] -> [a]
squish = undefined

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap = undefined

squishAgain :: [[a]] -> [a]
squishAgain = undefined

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = undefined

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = undefined

myMaximum :: Ord a => [a] -> a
myMaximum = undefined

myMinimum :: Ord a => [a] -> a
myMinimum = undefined
