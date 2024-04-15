import Control.Monad (liftM2)
getgcd :: [Integer] -> Integer
getgcd = liftM2 gcd minimum maximum
main :: IO ()
main = do 
    print(getgcd [11,3,6,4,9])
