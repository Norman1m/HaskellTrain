{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Bubl(bubbleSort, main) where

bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort xs = bubbleSort' xs (length xs)

bubbleSort' :: Ord a => [a] -> Int -> [a]
bubbleSort' xs 0 = xs
bubbleSort' xs n = bubbleSort' (bubble xs) (n - 1)

bubble :: Ord a => [a] -> [a]
bubble [x] = [x]
bubble (x:y:xs)
    | x > y     = y : bubble (x:xs)
    | otherwise = x : bubble (y:xs)

main :: IO ()
main= do
    print (bubbleSort [6,4,3,2,1] :: [Int]) {-Liste muss deklariert werden, da kein Type 
für bubbleSort festgelegt ist "a" ist unbestimmt. Int kann nicht ersetzt werden, da der Typ
in der Funktion variert-}
