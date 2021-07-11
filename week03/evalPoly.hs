evalPoly :: Int -> [Int] -> Int
evalPoly x [] = 0 --base case, if empty return 0
evalPoly x (head:tail) = head + x * (evalPoly x tail) --otherwise add the head and x times the recursion of the tail
