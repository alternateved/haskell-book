module Instances where

-- 1
data TisAnInteger = 
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn someInt) (TisAn someInt') = someInt == someInt'

-- 2
data TwoIntegers = 
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two partOne  partTwo ) (Two partOne' partTwo') = partOne == partOne' && partTwo == partTwo'

-- 3
data StringOrInt = 
      TisAnInt   Int
    | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt number ) (TisAnInt number') = number == number'
  (==) (TisAString string ) (TisAString string') = string == string'
  (==) _ _ = False

-- 4
data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair v v') (Pair w w') = v == w && v' == w'

-- 5
data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple v w) (Tuple v' w') = v == v' && w == w'

-- 6
data Which a =
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThatOne v) (ThatOne v') = v == v'
  (==) (ThisOne v) (ThisOne v') = v == v'
  (==) _ _ = False

-- 7
data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello v  ) (Hello v'  ) = v == v'
  (==) (Goodbye w) (Goodbye w') = w == w'
  (==) _ _ = False
