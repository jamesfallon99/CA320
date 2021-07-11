data Tree a = Null | Node a (Tree a) (Tree a) --Null is an empty tree
    deriving (Show, Read)

addNode :: Ord a => a -> Tree a -> Tree a --Takes a bst and a value "a", returns the bst with that value inserted
addNode v Null = Node v Null Null --if tree is empty(Null), create a binary tree with the value "v" that has two empty trees as its children
addNode v (Node x treeLeft treeRight) --pattern matching -if there's a left and right child then do the following:
    | x == v = Node x treeLeft treeRight --if the value "x" == value "v", then replace v with x
    | v < x = Node x (addNode v treeLeft) treeRight -- if v is less than x, recursively insert the value to the left child
    | otherwise = Node x treeLeft (addNode v treeRight) -- if v is greater than x, recursively insert the value to the right child

makeTree :: Ord a => [a] -> Tree a --takes a list and returns a tree with the values contained in the list as the tree nodes
makeTree [] = Null --if it's an empty list return Null
makeTree (head:tail) = addNode head (makeTree tail) --otherwise the list will have a head and tail, add the head to the tree and recursivly go through the tail

inOrder :: Tree a -> [a]
inOrder Null = []
inOrder (Node v treeLeft treeRight) = inOrder treeLeft ++ [v] ++ inOrder treeRight --if the bst is not empty, recursively go through the left child using the "++" operator to concatenate lists, followed by the root v, followed by the right child


mpSort :: Ord a => [a] -> [a]
mpSort = inOrder.makeTree --Dot operator in Haskell is completely similar to mathematics composition: f{g(x)} where g() is a function and its output used as an input of another function, that is, f(). The result of . (dot) operator is another function (or lambada) that you can use and call it.