import System.Environment
import Utility
--LICZBY B-GLADKIE:

-- Funkcja generująca rozkład liczby na czynniki pierwsze
primeFactors :: Int -> [Int]
primeFactors n = factorize n 2
  where
    factorize 1 _ = []
    factorize m k
      | m `mod` k == 0 = k : factorize (m `div` k) k
      | otherwise      = factorize m (k + 1)



-- Funkcja sprawdzająca, czy liczba jest B-gładka
isBSmooth :: Int -> Int -> Bool
isBSmooth b x = all' (<= b) (primeFactors x)

-- Funkcja licząca liczby B-gładkie <= n
countBSmooth :: Int -> Int -> Int
countBSmooth b n = length' [x | x <- [1..n], isBSmooth b x]


main = do
    (b:n:_) <- getArgs
    putStrLn $ show $ countBSmooth (read b :: Int) (read n :: Int) 