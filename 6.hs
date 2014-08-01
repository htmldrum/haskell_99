-- Fri Aug 1 15:30:46 EDT 2014

-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

-- *Main> isPalindrome [1,2,3]
-- False
-- *Main> isPalindrome "madamimadam"
-- True
-- *Main> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True

-- isPalindrome :: [a] -> Bool
-- isPalindrome [a] | ( length a 

-- Won't compile as type variable a does not explicitly implement Eq, solution doesn't have that issue
-- Their answer won't compile under H2010 anyway...

isPalindrome :: [a] -> Bool
isPalindrome x | ( length x == 1 )            = True
               | ( head x ) == ( last x )     = False
               | ( head x ) == ( last x )     = isPalindrome ( init ( tail ( x ) ) )
               | otherwise                    = False

-- Solution

-- isPalindrome :: (Eq a) => [a] -> Bool
-- isPalindrome xs = xs == (reverse xs)
-- 
-- isPalindrome' []  = True
-- isPalindrome' [_] = True
-- isPalindrome' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)
