isSum :: Int -> Int -> Int -> Bool
isSum int1 int2 int3
    |int1 + int2 == int3 =True
    |int1 + int3 == int2 =True
    |int2 + int3 == int1 =True
    |otherwise = False