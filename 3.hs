-- Fri Aug 1 15:30:46 EDT 2014

-- Find the K'th element of a list. The first element in the list is number 1. 
-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

elementAt :: [a] -> Int -> a
elementAt ( x : xs ) ndx | ndx > 1  = elementAt xs ( ndx - 1 ) 
                         | ndx == 1 = x

-- Solution:
  -- Not as good, not as explainable. Reliance on cryptic operators is dangerous ( !! )

-- This is (almost) the infix operator !! in Prelude, which is defined as:
-- 
-- (!!)                :: [a] -> Int -> a
-- (x:_)  !! 0         =  x
-- (_:xs) !! n         =  xs !! (n-1)
-- 
-- Except this doesn't quite work, because !! is zero-indexed, and element-at should be one-indexed. So:
-- 
-- elementAt :: [a] -> Int -> a
-- elementAt list i    = list !! (i-1)
-- 
-- Or without using the infix operator:
-- 
-- elementAt' :: [a] -> Int -> a
-- elementAt' (x:_) 1  = x
-- elementAt' [] _     = error "Index out of bounds"
-- elementAt' (_:xs) k
--   | k < 1           = error "Index out of bounds"
--     | otherwise       = elementAt' xs (k - 1)
-- 
--     Alternative version:
-- 
--     elementAt'' :: [a] -> Int -> a
--     elementAt'' (x:_) 1  = x
--     elementAt'' (_:xs) i = elementAt'' xs (i - 1)
--     elementAt'' _ _      = error "Index out of bounds"
