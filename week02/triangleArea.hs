triangleArea :: Float -> Float -> Float ->Float
triangleArea s1 s2 s3 = sqrt(s * (s -s1) *(s-s2)* (s-s3))
    where
        s = (s1+s2+s3)/2