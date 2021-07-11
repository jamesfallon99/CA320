elemSorted :: Ord a => a -> [a] -> Bool
elemSorted a [] = False
elemSorted a (head:tail)
    | head > a = False
    | head == a = True
    | otherwise = elemSorted a tail