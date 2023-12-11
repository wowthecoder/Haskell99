-- Eliminate consecutive duplicates of list elements
compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs) 
    | x == y    = compress (y:xs)
    | otherwise = x : compress (y:xs)

-- Test cases:
-- compress "aaaabccaadeeee"
-- Should return "abcade"
-- compress [1,1,1,2,2,1,45,53,45,45]
-- Should return [1,2,1,45,53,45]