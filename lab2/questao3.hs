{- 
    Número Perfeito
    Um número inteiro não negativo diz-se perfeito se é igual à soma dos seus divisores próprios. Por exemplo, 6=2+3+1. Faça um programa que recebe um inteiro e decide se este é ou não perfeito.
 -}


divisores :: Int -> [Int]
divisores num = [ x | x <- [1..metade], (mod num x) == 0] 
    where metade = floor(fromIntegral(num) / 2)
    
ehPerfeito :: Int -> Bool
ehPerfeito num 
    | num == (sum $ divisores num) = True
    | otherwise = False


main = do
    input <- getLine
    let num = read input :: Int
    putStrLn $ show $ ehPerfeito num
