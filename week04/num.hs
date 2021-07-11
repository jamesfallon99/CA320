num :: Eq a => a -> [a] -> Int
num a [] = 0
num a (head:tail)
    | a == head = 1 + num a tail
    | otherwise = num a tail