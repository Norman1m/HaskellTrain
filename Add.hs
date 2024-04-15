addup :: [Int]-> Int 
addup [] = 0
addup (x:xs) = x + addup xs

arry :: Int -> [Int]
arry 0 = []
arry n = (n : arry (n-1))

main:: IO()
main = do
    print (arry 10)
    print (addup (arry 10))