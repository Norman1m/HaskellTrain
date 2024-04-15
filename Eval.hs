eval :: Int -> Int -> Maybe Int
eval n m = safediv n m

safediv :: Int -> Int -> Maybe Int
safediv _ 0 = Nothing
safediv n m = Just (divide n m)  -- Using renamed function

divide :: Int -> Int -> Int  -- Renamed division function
divide x y = x `div` y  -- Using the standard division function here

main :: IO ()
main = do 
    case eval 20 5 of
        Just result -> print result
        Nothing -> putStrLn "Division by zero occurred."