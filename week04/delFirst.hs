delFirst :: Eq a => a -> [a] -> [a]
delFirst a [] = []
delFirst a (head:tail)
    | a == head = tail --remove first occurrence
    | otherwise = head:delFirst a tail --otherwise recursively run through the program