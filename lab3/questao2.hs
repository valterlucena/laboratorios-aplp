main = do
    s1 <- getLine
    s2 <- getLine
    putStrLn $ show $ ehPermutacao s1 s2

ehPermutacao :: String -> String -> Bool
ehPermutacao [] [] = True
ehPermutacao s1 [] = False
ehPermutacao [] s2 = False
ehPermutacao s1 (head:tail)
    | (head `elem` s1) = ehPermutacao (remove [head] s1) tail
    | otherwise = False


remove :: String -> String -> String
remove [] c = []
remove c [] = []
remove c (head:tail)
    | ([head] == c) = tail
    | otherwise = [head] ++ (remove c tail)
