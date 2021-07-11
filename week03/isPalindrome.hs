--The Eq class defines equality ( == ) and inequality ( /= ). All the basic datatypes exported by the Prelude are instances of Eq , and Eq may be derived for any datatype whose constituents are also instances of Eq .

isPalindrome :: Eq a => [a] -> Bool --Declare the constraint on the left hand side of a fat-arrow, then use it on the right hand side.
isPalindrome list = (list == reverse list) --takes a list and checks if that list is equal to the reverse of the same list. Returns a boolean(true/false)