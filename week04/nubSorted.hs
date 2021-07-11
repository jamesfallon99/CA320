nubSorted :: Eq a => [a] -> [a]
nubSorted [] = []
nubSorted [a] = [a]
nubSorted (a:head:tail)
    | a == head = nubSorted (head:tail)
    | otherwise = a:nubSorted (head:tail)