module Utility (
    length',
    all',
    map',
    maximum',
    head',
    reverse'
) where

 
length' :: [a] -> Int
length' [] = 0                  -- Dla pustej listy długość wynosi 0
length' (_:xs) = 1 + length' xs -- Każdy element zwiększa długość o 1


all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True                -- Pusta lista spełnia każdy warunek
all' p (x:xs) = p x && all' p xs -- Warunek musi być spełniony przez pierwszy element i resztę


map' :: (a -> b) -> [a] -> [b]
map' _ [] = []                -- Jeśli lista jest pusta, zwracamy pustą listę
map' f (x:xs) = f x : map' f xs -- Zastosowanie funkcji f do pierwszego elementu, rekurencja dla reszty

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list" -- Dla pustej listy zgłaszamy błąd
maximum' [x] = x                           -- Dla jednoelementowej listy zwracamy ten element
maximum' (x:xs) = max x (maximum' xs)      -- Rekurencyjnie porównujemy pierwszy element z maksimum reszty

head' :: [a] -> a
head' [] = error "empty list has no head" -- Dla pustej listy zgłaszamy błąd
head' (x:_) = x                          -- Pierwszy element listy to jej "head"


reverse' :: [a] -> [a]
reverse' xs = reverseAcc xs [] -- Wywołanie z pustym akumulatorem
  where
    reverseAcc [] acc     = acc          -- Gdy lista wejściowa jest pusta, zwracamy akumulator
    reverseAcc (y:ys) acc = reverseAcc ys (y:acc) -- Dodajemy element na początek akumulatora