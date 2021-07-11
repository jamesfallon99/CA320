sumPoly :: [Int] -> [Int] -> [Int]
sumPoly [] [] = []
sumPoly (head1:[]) (head2: []) = [head1 + head2]
sumPoly (head1:tail1) (head2:[]) = head1 + head2 : sumPoly tail1 [0] --once tail2 is empty, add tail1 value and 0
sumPoly (head1:[]) (head2:tail2) = head1 + head2 : sumPoly tail2 [0]
sumPoly (head1:tail1) (head2:tail2) = head1 + head2 : sumPoly tail1 tail2