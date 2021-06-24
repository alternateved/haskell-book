module ReviewingCurrying where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- 1 
-- Value of appedCatty "woohoo!"
-- Answer: "woops mrow woohoo!"

-- 2
-- Value of frappe "1"
-- Answer: "1 mrow haha" 

-- 3
-- Value of frappe (appedCatty "2")
-- Answer: "woops mrow 2 mrow haha"

-- 4
-- Value of appedCatty (frappe "blue")
-- Answer: "woops mrow blue mrow haha"

-- 5
-- Value of cattyConny (frappe "pink") (cattyConny "green" (appedCatty "blue"))
-- Answer: "pink mrow haha mrow green mrow woops mrow blue"

-- 6
-- Value of cattyConny (flippy "Pugs" "are") "awesome"
-- Answer: "are mrow Pugs mrow awesome"
