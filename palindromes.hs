import System.Environment
import Utility
--PALINDROMY:

--Funkcja sprawdza czy podany Integer jest palindromem, porównując ją do własnego odwrotu
isPalindrome :: Integer -> Bool
isPalindrome x = show x == reverse' (show x)

--Funkcja generująca wszystkie takie iloczyny liczb naturalnych x, y takich że ów iloczyn jest palindromem
--zwracany jest największy element z tej list
largestPalindrome :: Int -> Integer
largestPalindrome n = head' [x * y | x <- range,y <- range, isPalindrome (x * y)]
  where
    lower = 10^n - (10^(n-1) - 1) - 1        
    upper = 10^n - 1         

    range = reverse' [lower..upper]

main = do
  (n:_) <- getArgs
  putStrLn $ show $ largestPalindrome (read n :: Int)