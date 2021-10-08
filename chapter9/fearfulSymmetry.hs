module FearfulSymmetry where

myWords :: String -> Char -> [String]
myWords "" _ = []
myWords xs c = takeWhile (/= c) xs : (myWords . dropWhile (== c) . dropWhile (/= c)) xs c
