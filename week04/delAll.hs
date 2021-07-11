delAll :: Eq a => a -> [a] -> [a]
delAll a [] = [] --if empty, return an empty list
delAll a (head:tail) --pass through an element a and a list
    | head == a =  delAll a tail --if the head equals the value a then recursively go through with a and the tail
    | otherwise = head : delAll a tail --else, concatanate the head with the tail recursively