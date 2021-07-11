myProduct :: [Int] -> Int
myProduct [] = 1 --when reaches an empty list, multiply by one to get final answer
myProduct (head:tail) = head * myProduct tail --recursively go through the list's head and new tail which is a list(in prolog it was at least)


{-1 : 2 : 3 : [] – Alternate way to write
lists using “cons” (:) and “nil” ([]).
https://www.futurelearn.com/courses/functional-programming-haskell/0/steps/27211
(x:xs)  for some  x  (the head of the list) and  xs  (the tail)
where  (x:xs)  is pronounced as  xconsxs

head takes a list and returns its head. The head of a list is basically its first element.
tail takes a list and returns its tail. In other words, it chops off a list's head.
-}