-- TheoInf Scotland Yard 2005
main :: IO()

hatKomplize :: Bool
hatKomplize = True
hatSchlussel :: Bool
hatSchlussel = True
hatWagen :: Bool
hatWagen = True

{-1. Hatte der Einbrecher einen Komplizen, dann ist er mit dem Wagen gekommen.
2. Wenn der Einbrecher keinen Schlüssel hat, dann braucht er auch keinen Komplizen.
3. Wenn der Einbrecher ohne Komplizen kam, dann fehlte ihm der Schlüssel.
4. Der Einbrecher konnte sich vorher einen passenden Schlüssel beschaffen.-}

--hat_komplize -> hat_wagen
-- Implikation umkehren 
a1 :: Bool
a1 = not hatKomplize || hatWagen

a2 :: Bool
-- not hot_schulüssel -> not hat:Komplize
a2 = hatSchlussel|| not hatKomplize

a3 :: Bool
-- not hat_komplize -> not hat_schlussel
a3 = hatKomplize || not hatSchlussel

a4 :: Bool
a4 = hatSchlussel

hasUsed :: Bool
hasUsed = a1 && a2 && a3 && a4

main = do
    print hasUsed