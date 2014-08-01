-- Fri Aug 1 15:30:46 EDT 2014

-- Find the last element of a list
-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'

myLast :: [a] -> a
myLast x = if( length x == 1 )
           then x
           else myLast ( tail x )

-- Solution 
  -- Pattern matching on generic list then wildcard match
  -- Base case is first equation
myLast [x] = x
myLast ( _ : xs ) = myLast xs
