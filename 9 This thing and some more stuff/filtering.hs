module Filtering where

findMultiple :: Integral a => a -> a -> Bool
findMultiple m x = rem x m == 0

findArticles :: String -> Bool
findArticles x
  | notElem x ["the", "a", "an"] = True
  | otherwise                    = False

-- 1
multiplesOfThree :: Integral a => [a] -> [a]
multiplesOfThree = filter (findMultiple 3)

-- 2
numberOfMultiples :: Integral a => a -> [a] -> Int
numberOfMultiples m = length . filter (findMultiple m)

-- 3
myFilter :: String -> [String]
myFilter = filter findArticles . words

main :: IO ()
main = do
  print $ multiplesOfThree [1..30]
  print $ numberOfMultiples 3 [1..30]
