module PoemLines where

firstSen  = "Tyger Tyger, burning bright\n"
secondSen = "In the forest of the night\n"
thirdSen  = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"

sentences = firstSen ++ secondSen 
         ++ thirdSen ++ fourthSen

myLines :: String -> Char -> [String]
myLines "" _ = []
myLines xs c = takeWhile (/= c) xs : (myLines . dropWhile (== c) . dropWhile (/= c)) xs c

shouldEqual = 
  [ "Tyger Tyger, burning bright"
  , "In the forest of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main = 
  print $
  "Are they equal? " 
  ++ show (myLines sentences '\n'
           == shouldEqual)
