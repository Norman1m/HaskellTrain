module MaxW(maxWealth,main) where
main :: IO()
maxWealth :: [[Int]] -> Int
maxWealth = maximum . map sum
main = do
    print(maxWealth[[1,1],[2,2],[3,4]])