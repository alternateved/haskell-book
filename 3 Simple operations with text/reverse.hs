module Reverse where

someString :: String
someString = "curry is awesome"

falseReverse :: String -> String
falseReverse x = 
  (drop 9 x) ++ (take 4 (drop 5 x)) ++ (take 5 x)

main :: IO ()
main = print $ falseReverse someString
