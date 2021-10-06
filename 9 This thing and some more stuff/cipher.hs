module Cipher where

import Data.Char

caesar :: Int -> String -> String
caesar _ "" = ""
caesar s (x:xs) = chr (ord x + s) : caesar s xs

unCaesar :: Int -> String -> String
unCaesar = undefined
