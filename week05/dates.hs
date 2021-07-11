data Day = Sun | Mon | Tue | Wed | Thu | Fri | Sat
    deriving(Enum, Show)

data Month = Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec
    deriving(Enum, Show)


data Date = (Inr, Month, Int)
