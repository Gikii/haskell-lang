import System.Directory.Internal.Prelude (getArgs)
import Utility

--TROJKATY:

-- Funkcja sprawdzająca, czy a, b, c mogą tworzyć trójkąt prostokątny
isRightTriangle :: Int -> Int -> Int -> Bool
isRightTriangle a b c = a^2 + b^2 == c^2

-- Funkcja generująca wszystkie różne trójki (a, b, c) dla danego x
tripletsForX :: Int -> [(Int, Int, Int)]
tripletsForX x = [(a, b, c) | c <- [2..x `div` 2], b <- [1..c-1], let a = x - c - b, a + b > c, isRightTriangle a b c]

-- Funkcja licząca liczbę trójek dla każdej liczby x
countTriplets :: Int -> [(Int, Int)]
countTriplets n = [(x, length' (tripletsForX x)) | x <- [1..n]]

-- Funkcja znajdująca liczby z maksymalną liczbą trójek
maxTriplets :: Int -> [Int]
maxTriplets n = [x | (x, count) <- tripletCounts, count == maxCount]
  where
    tripletCounts = countTriplets n
    maxCount = maximum' (map' snd tripletCounts)

main = do
  (n:_) <- getArgs
  putStrLn $ show $ maxTriplets (read n :: Int)