module Zip (myzip,main) where
main :: IO()

myzip :: [Integer]->[Integer]->[Integer]
myzip [] _ = []                     -- "_" ist ein Platzhalter, also egal was dort steht, 
myzip _ [] = []                    -- wenn der andere Teil leer ist, dann ist auch das Ergebnis leer.
myzip (x:xs)(y:ys) = y: x: myzip xs ys  {- Kommentar: x:xs auftrennen der liste = x kopf, xs rest.
-> Y-Kopf und X-Kopf werden weiter gegeben und mit den beiden Resten wird jeweils die funktion
neu aufgerufen bis der abbruch [] (leere Liste) bei einer der Listen auftritt.-}

main = do
    let b = [10,11,12,13]
    putStrLn "Merging!"
    print (myzip b [3,1, 5, 3] )
    
{- geht auch mit Chars, dann muss myzip :: Integer ein Platzhalter werden z.b "a"
let c = ['a','a','b','b']
print (myzip c ['c','c','d','d'])
-}