main :: IO()
pali :: String -> Bool
pali x = x1 == x2 where
    x1 = x
    x2 = reverse x
main = do
    print (pali "otto")