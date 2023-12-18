import Data.Char

f1 :: [Char] -> Int
f1 [] = 0
f1 x 
    | ord (head x) >= 48 && ord (head x) <= 57 = 10 * digitToInt (head x) + f2 x
    | otherwise = f1 (tail x)

f2 :: [Char] -> Int
f2 [] = 0
f2 x 
    | ord (last x) >= 48 && ord (last x) <= 57 = digitToInt (last x)
    | otherwise = f2 (init x)

main :: IO ()
main = do
    inputText <- readFile "input01"
    print $ sum $ map f1 $ words inputText
