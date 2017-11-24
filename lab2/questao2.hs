{- 
    Valor da Balsa
    Para a travessia de balsa entre duas localidades, é cobrado o valor do veículo e o valor por cada passageiro do veículo. Os valores são: carro = 5.0, moto = 2.0, van = 15.0, onibus = 50.0, bicicleta = 0.0 e por pessoa do veículo = 1.5. Retorne o valor total a ser pago para fazer a travessia.

 -}


calculaValor :: String -> Double -> Double
calculaValor valor num
    | valor == "carro" = 5.0 + (num * 1.5)
    | valor == "moto" = 2.0 + (num * 1.5)
    | valor == "van" = 15.0 + (num * 1.5)
    | valor == "onibus" = 50.0 + (num * 1.5)
    | valor == "bicicleta" = num * 1.5


main = do 
    veiculo <- getLine
    input <- getLine
    let numPessoas = read input :: Double
    print (calculaValor veiculo numPessoas)
