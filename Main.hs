{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Parenthesize unary negation" #-}
module Main (sqr1,main) where
main :: IO ()
sqr1 :: (Float, Float, Float) -> (Float, Float)  
sqr1 (a,b,c) = (x1, x2)  where
   x1 = e + sqrt d / (2 * a) 
   x2 = e - sqrt d / (2 * a) 
   d = b * b - 4 * a * c  
   e = - b / (2 * a) 
main = do 
   putStrLn "The a of our Polynomial equation are:" 
   print (sqr1(1,-8,6))