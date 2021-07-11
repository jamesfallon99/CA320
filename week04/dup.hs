dup :: Eq a => [a] -> Bool
dup [] = False
dup [a] = False
dup (head:tail)
    | elem head tail == True = True --use the "elem" function to check if the head is in the tail. If this is true, then there's a duplicate so return true
    | otherwise = dup tail