data Day = Sun | Mon | Tue | Wed | Thu | Fri | Sat
    deriving(Enum, Show)

data Month = Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec
    deriving(Enum, Read)

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

numDays :: Date -> Int
numDays (day, month, year)
    = day + sum(take(fromEnum month) (mLengths year))
    + (year - 1753) * 365 + length [year | year <-[1753..year-1], leap year]

-- fromEnum can convert any Enum to an Int
--sum the list that mlengths returns
-- year - 1753 - this gets the amount of years that have passed since 1753
-- * 365 - this returns the amount of days
--
--take take 5 [1,2,3,4,5,6,7]
--Output: [1,2,3,4,5]
--take will count the amount of days up to the month provided in the initial date input