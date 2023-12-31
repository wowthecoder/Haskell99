-- Find out whether a list is a palindrome
isPalindrome :: Eq a => [a] -> Bool
isPalindome [] = True
isPalindrome [x] = True
isPalindrome (x:xs) = (x == last xs) && isPalindrome (init xs)

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' xs = xs == (reverse xs)

-- Test cases:
-- isPalindrome [1,2,3]
-- isPalindrome "madamimadam"
-- isPalindrome [1,2,4,8,16,8,4,2,1]