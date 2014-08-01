-- Fri Aug 1 15:30:46 EDT 2014

-- Find the number of elements of a list
-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13

myLength :: [a] -> Int
myLength a = myLength' a 0

myLength' :: [a] -> Int -> Int
myLength' ( x : xs ) ndx  | not( null xs )  = myLength' xs ( ndx + 1 ) -- Guard to avoid overlapping
myLength' [x] ndx                           = ( ndx + 1 )              -- definition with [x]
myLength' [] ndx                            = ndx

-- Solution
  -- More condense, no need for an accumulator like mine
-- myLength           :: [a] -> Int
-- myLength []        =  0
-- myLength (_:xs)    =  1 + myLength xs
