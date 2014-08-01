-- Fri Aug 1 15:30:46 EDT 2014

-- Find last but one
-- Prelude> myButLast [1,2,3,4]
-- 3
-- Prelude> myButLast ['a'..'z']
-- 'y'

myButLast :: [a] -> a
myButLast [x,y] = x
myButLast ( _ : xs ) = myButLast xs

-- Solution 
  -- Pattern matching on generic list then wildcard match
  -- Base case is first equation
 
-- myButLast = last . init
-- myButLast' x = reverse x !! 1
--  
-- myButLast'' [x,_]  = x
-- myButLast'' (_:xs) = myButLast'' xs
--   
-- myButLast''' (x:(_:[])) = x
-- myButLast''' (_:xs) = myButLast''' xs
--    
-- myButLast'''' = head . tail . reverse
