module DataChar where

import Data.Char

filterUpper :: String -> String
filterUpper = filter isUpper

capitalizeFirst :: String -> String
capitalizeFirst "" = ""
capitalizeFirst (x:xs) = toUpper x : xs

capitalize :: String -> String
capitalize "" = ""
capitalize (x:xs) = toUpper x : capitalize xs

giveMeUpperLetter :: String -> Char
giveMeUpperLetter xs = toUpper (head xs)

giveMeUpperLetter' :: String -> Char
giveMeUpperLetter' = toUpper . head
