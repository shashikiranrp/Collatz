module Main where

genretateAMonotonicWalls :: [Integer]
genretateAMonotonicWalls = filter (\pof2 -> 0 == (pof2 - 1) `mod` 3)  $ powerOfTwo 2

-- 2^n generator
powerOfTwo :: Integer -> [Integer]
powerOfTwo n = n : (powerOfTwo $ n * 2)

printList :: (Show a) => [a] -> IO ()
printList [] = return ()
printList (x:xs) = (putStrLn $ show x) >> printList xs

main :: IO ()
main = printList genretateAMonotonicWalls
