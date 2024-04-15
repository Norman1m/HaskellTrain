pascal :: Int -> [[Integer]]
pascal n = take n $ iterate reihe []

reihe :: [Integer] -> [Integer]
reihe [] = [1]
reihe xs = zipWith (+) (0 : xs) (xs ++ [0])


printP :: Int -> IO ()
printP n = mapM_ (putStrLn . unwords . map show) (pascal n)

main :: IO ()
main = do
    printP 9
