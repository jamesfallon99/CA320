repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst a b [] = []
repFirst a b (head:tail)
    | a == head = (b:tail)
    | otherwise = head: (repFirst a b tail)