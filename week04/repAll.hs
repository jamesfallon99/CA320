repAll :: Eq a => a -> a -> [a] -> [a]
repAll a b [] = []
repAll a b (head:tail)
    | a == head = (b: repAll a b tail)
    | otherwise = head: (repAll a b tail)