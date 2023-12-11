-- Find the second last element of a list
myButLast :: [a] -> a
myButLast = last . init

-- Test cases:
-- myButLast [1,2,3,4]
-- myButLast ['a'..'z']