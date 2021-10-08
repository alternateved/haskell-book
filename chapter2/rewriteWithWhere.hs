module PracticeModule where

-- 1
multi2    = x * 3 + y
  where x = 3
        y = 1000

-- 2
multi3    = x * 5
  where x = 10 * 5 + y
        y = 10

-- 3
multi4    = z / x + y
  where x = 7
        y = negate x
        z = y * 10
