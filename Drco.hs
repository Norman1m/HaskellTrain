import Debug.Trace (trace)

dropCond :: Show a => (a -> Bool) -> [a] -> [a]
dropCond _ [] = []
dropCond f (x:xs)
    | f x = trace ("Dropped: " ++ show x) $ x : dropCond f xs
    | otherwise = trace ("Kept: " ++ show x) $ dropCond f xs

main :: IO ()
main = do
    print (trace "Output of dropCond odd:" (dropCond odd [0,1,2,3,4,5,6]))