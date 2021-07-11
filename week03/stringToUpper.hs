import Data.Char(toUpper)

--toUpper :: Char -> Char

stringToUpper :: String -> String
stringToUpper "" = "" --base case is empty strings
stringToUpper (head:tail) = toUpper(head) : stringToUpper tail --recursively go through the string's head and tail, upper-casing the head each time and passing the tail through the function