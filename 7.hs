-- Fri Aug 1 15:30:46 EDT 2014

-- Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively). 

--  data NestedList a = Elem a | List [NestedList a]
-- 
--  *Main> flatten (Elem 5)
--  [5]
--  *Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
--  [1,2,3,4,5]
--  *Main> flatten (List [])
--  []

-- Need to define a new nested list type as Haskell's lists are homogenous

data NestedList a = Elem a | List [NestedList a]
                  deriving( Show )

flatten :: NestedList a -> [a]
flatten ( Elem x ) = [x]
flatten ( List x ) = concatMap flatten x

-- Solution
-- 
-- data NestedList a = Elem a | List [NestedList a]
--  
-- flatten :: NestedList a -> [a]
-- flatten (Elem x) = [x]
-- flatten (List x) = concatMap flatten x
-- 
-- or without concatMap
-- 
-- flatten :: NestedList a -> [a]
-- flatten (Elem a   )   = [a]
-- flatten (List (x:xs)) = flatten x ++ flatten (List xs)
-- flatten (List [])     = []
-- 
-- flatten2 :: NestedList a -> [a]
-- flatten2 a = flt' a []
--   where flt' (Elem x)      xs = x:xs
--         flt' (List (x:ls)) xs = flt' x (flt' (List ls) xs)
--         flt' (List [])     xs = xs
-- 
--  or with foldr
-- 
--   flatten3 :: NestedList a -> [a]
--   flatten3 (Elem x ) = [x]
--   flatten3 (List xs) =  foldr (++) [] $ map flatten3 xs
-- 
--   or with an accumulator function:
-- 
--   flatten4 = reverse . rec []
--     where
--       rec acc (List []) = acc
--       rec acc (Elem x)  = x:acc
--       rec acc (List (x:xs)) = rec (rec acc x) (List xs)
