dupSorted :: Eq a => [a] -> Bool
dupSorted [] = False
dupSorted [a] = False
dupSorted (a:head:tail)
    | a == head = True --if a is equal to the head than there's a duplicate
    | otherwise = dupSorted (head:tail) -- otherwise, can recursivley go through the head and tail