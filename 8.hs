-- Fri Aug 1 15:30:46 EDT 2014

-- If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed. 
-- > compress "aaaabccaadeeee"
-- "abcade"

compress :: Ord a => [a] -> [a]
compress ( x : xs ) = [x] ++ compress' x xs

compress' :: Ord b => b -> [b] -> [b]
compress' l ( x : xs ) | ( l == x ) = compress' l ( xs )
                       | otherwise  = [x] ++ compress' x ( xs )
compress' l [] = []
