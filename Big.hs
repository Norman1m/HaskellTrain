big :: [Int] -> Int
big [] = 0
big f(x:xs)
    | f x  = x > f xs
    | otherwise = f xs

main:: IO()
main = do
    print (big [])