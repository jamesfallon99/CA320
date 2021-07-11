data Tree a = Null | Node a (Tree a) (Tree a) --Null is an empty tree
    deriving (Show, Read)

addNode :: Ord a => a -> Tree a -> Tree a --Takes a bst and a value "a", returns the bst with that value inserted
addNode v Null = Node v Null Null --if tree is empty(Null), create a binary tree with the value "v" that has two empty trees as its children
addNode v (Node x treeLeft treeRight) --pattern matching -if there's a left and right child then do the following:
    | x == v = Node x treeLeft treeRight --if the value "x" == value "v", then replace v with x
    | v < x = Node x (addNode v treeLeft) treeRight -- if v is less than x, recursively insert the value to the left child
    | otherwise = Node x treeLeft (addNode v treeRight) -- if v is greater than x, recursively insert the value to the right child
