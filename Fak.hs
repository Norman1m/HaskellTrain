fak :: Int -> Int 
fak 0 = 1
fak 1 = 1
fak x = x* fak (x-1)
main :: IO()
main =do
    print (fak 5)