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
squish = foldr (++) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x : xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ (x:[]) = x
myMaximumBy comp (x:xs) =
  let
    y = myMaximumBy comp xs
  in
    case comp x y of
      LT -> y
      EQ -> x
      GT -> x

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ (x:[]) = x
myMinimumBy comp (x:xs) =
  let
    y = myMinimumBy comp xs
  in
    case comp x y of
      LT -> x
      EQ -> x
      GT -> y

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare
