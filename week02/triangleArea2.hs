checkIfValid :: Float -> Float -> Float -> Bool
checkIfValid f1 f2 f3
    |(f1 + f2) > f3 && (f1 + f3) > f2 && (f2 + f3) > f1 = True
    |otherwise = False

triangleArea :: Float -> Float -> Float -> Float
triangleArea s1 s2 s3
    | checkIfValid s1 s2 s3 == False = error "Not a triangle!"
    | otherwise = sqrt(s*(s-s1)*(s-s2)*(s-s3))
    where s = (s1+s2+s3)/2