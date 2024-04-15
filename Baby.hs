module Baby(fType,main) where
main :: IO ()
fType :: Int -> Int -> Int
fType x y = x*y + 2*y
main = do
    print (fType 2 4)
