shortest :: [[a]] -> [a] --takes a list of lists and returns the shortest list
shortest [] = [] --if it's an empty list in a list, return the empty list
shortest [a] = a --if there's only one list, return
shortest (head:tail:list) --takes a list with a head and tail in a list
    |length head > length tail = shortest (tail:list) --if the length of the head is greater than the length of the tail, recursively run the tail in a list through the function
    |otherwise = shortest (head:list) --otherwise run the head through the function


--shortest [[1,2,3],[1,2],[1,2,3,4,5],[4,3,2,1]]
--[1,2]