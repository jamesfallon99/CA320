sumTo :: Int -> Int
sumTo 100 = 100
sumTo n = n + sumTo(n+1)