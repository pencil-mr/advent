import Data.List
import Data.Char

f1 :: [Char] -> Int
f1 x 
    |  "one" `isInfixOf` x = 1
    |  "two" `isInfixOf` x = 2
    |  "three" `isInfixOf` x = 3
    |  "four" `isInfixOf` x = 4
    |  "five" `isInfixOf` x = 5
    |  "six" `isInfixOf` x = 6
    |  "seven" `isInfixOf` x = 7
    |  "eight" `isInfixOf` x = 8
    |  "nine" `isInfixOf` x = 9
    |  otherwise = 0

f2 :: [Char] -> [Char] -> Int
f2 y [] = 0 
f2 y x 
    | f1 (reverse y) /= 0 = 10 * f1 (reverse y) + f3 "" x
    | isDigit (head x) = 10 * digitToInt (head x) + f3 "" x
    | otherwise = f2 (head x : y) (tail x)

f3 :: [Char] -> [Char] -> Int
f3 y [] = 0 
f3 y x 
    | f1 y /= 0 = f1 y
    | isDigit (last x) = digitToInt (last x)
    | otherwise = f3 (last x : y) (init x)

main :: IO ()
main = do
    input <- readFile "input01"
    print $ sum $ map (f2 "") $ words input
