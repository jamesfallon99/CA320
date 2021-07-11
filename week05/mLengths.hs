data Day = Sun | Mon | Tue | Wed | Thu | Fri | Sat
    deriving(Enum, Show)

data Month = Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec
    deriving(Enum, Show)

type Date = (Int, Month, Int)

leap :: Int -> Bool --determines if a given year is a leap year, returns true or false
leap int --takes an integer(year)
    | int `mod` 100 == 0 = int `mod` 400 == 0 -- if divisible by 100 and also divisible by 400
    | int `mod` 4 == 0 = True --if divisible by 4 equals true
    | otherwise = False

mLengths :: Int -> [Int]
mLengths int
    | leap int == False = [31,28,31,30,31,30,31,31,30,31,30,31] --if int is not a leap year, return this list
    | otherwise = [31,29,31,30,31,30,31,31,30,31,30,31] -- otherwise return this list