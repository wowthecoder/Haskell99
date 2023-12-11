-- Find the Kth element of a list
elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

-- Test cases:
-- elementAt [1,2,3] 2
-- elementAt "haskell" 5