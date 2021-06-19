module ReturnThirdLetter where

thirdLetter :: String -> Char
thirdLetter x = x !! 2

someString :: String
someString = "Curry is awesome"

letterIndex :: Int -> Char
letterIndex x = someString !! x 

falseReverse :: String -> String
falseReverse x = 
  (drop 9 x) ++ (take 4 (drop 5 x)) ++ (take 5 x)
