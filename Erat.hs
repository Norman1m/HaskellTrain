{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
prim :: Integral a => [a] -> [a]
prim (x:xs) = x: prim [y | y <- xs, mod y x /= 0]
main :: IO()
main = do
    print (take 5(prim[1..]))
