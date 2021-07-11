delOdds :: [a] -> [a]
delOdds [] = []
delOdds (head:tail)
    | head `mod` 2 /= 0 = delOdds tail
    | otherwise = head:delOdds tail