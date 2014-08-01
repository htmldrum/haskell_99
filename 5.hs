-- Fri Aug 1 15:30:46 EDT 2014

-- Reverse a list.
-- Prelude> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- Prelude> myReverse [1,2,3,4]
-- [4,3,2,1]

myReverse :: [a] -> [a]
myReverse ( x : xs ) = ( myReverse xs ) ++ [x]
myReverse [] = []

-- Solution
  -- Nailed it but remember to put the base case of recursion as the first equation

-- reverse :: [a] -> [a]
-- reverse [] = []
-- reverse (x:xs) = reverse xs ++ [x]
-- 
-- However this definition is more wasteful than the one in Prelude as it repeatedly reconses the result as it is accumulated. The following variation avoids that, and thus computationally closer to the Prelude version.
-- 
-- reverse :: [a] -> [a]
-- reverse list = reverse' list []
--   where
--       reverse' [] reversed     = reversed
--           reverse' (x:xs) reversed = reverse' xs (x:reversed)
