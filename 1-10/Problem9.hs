import Data.List
-- Pack consecutive duplicates of list elements into sublists.
pack :: Eq a => [a] -> [[a]]
pack = group

-- Alternative way without importing Data.List
pack' :: Eq a => [a] -> [[a]]
pack' xs = worker [] xs
    where
        worker acc [] = [acc]
        worker acc [x] = [[x]]
        worker acc (x:y:xs) 
            | x == y    = worker (acc ++ [x]) (y:xs)
            | otherwise = (acc ++ [x]) : worker [] (y:xs)

-- One of the given solutions
pack'' :: Eq a => [a] -> [[a]]
pack'' (x:xs) = let (first, rest) = span (==x) xs
                 in (x:first) : pack rest


-- Test cases
-- pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a',  'a', 'd', 'e', 'e', 'e', 'e']
-- Should return ["aaaa","b","cc","aa","d","eeee"]