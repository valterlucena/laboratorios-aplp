main = do
    palavra <- getLine
    putStrLn $ troca palavra
    

troca :: String -> String
troca [a,b] = [b,a]
troca (a:as) = [head as] ++ [a] ++ (troca (tail as))
    

