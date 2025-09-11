absoluto :: Integer -> Integer
absoluto x = abs x

mayor :: Double -> Integer
mayor x = ceiling x

siguiente :: Integer -> Integer
siguiente x= succ x

menor :: Integer -> Integer -> Integer
menor x y = min x y

may :: Integer -> Integer ->Integer
may x y= max x y

divi :: Integer -> Integer -> Integer
divi x y= div x y

modulo :: Integer -> Integer -> Integer
modulo x y= mod x y

par :: Integer -> Bool
par x= even x

mayo :: Double -> Integer
mayo x = floor x

comun :: Integer -> Integer -> Integer
comun x y= gcd x y

negacion :: Bool -> Bool
negacion x= not x

impar :: Integer -> Bool
impar x= odd x

posneg :: Integer -> Integer
posneg x= signum x

segundo :: Integer -> Integer -> Integer
segundo x y= snd (x,y)

menu :: IO()
menu = do
    putStrLn(" == Menú == ")
    putStrLn("¿Qué deseas hacer?")
    putStrLn("1) Valor Absoluto")
    putStrLn("2) Mayor entero")
    putStrLn("3) Devolver el valor siguiente a X")
    putStrLn("4) Obtener el menor")
    putStrLn("5) Obtener el mayor")
    putStrLn("6) Divide x entre y")
    putStrLn("7) Obtener el modulo")
    putStrLn("8) Par")
    putStrLn("9) Numero Mayor entero no de X")
    putStrLn("10) Máximo común divisor")
    putStrLn("11) Negación de booleana")
    putStrLn("12) Impar")
    putStrLn("13) Devolver positivo o negativo")
    putStrLn("14) Retorno del segundo número")
    putStrLn("15) Salir")
    opcion <- getLine
    case opcion  of 
        "1" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("El resultado es: " ++ show(absoluto x) )
            menu 
        "2" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Double
            putStrLn("El resultado es: " ++ show(mayor x) )
            menu 
        "3" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("El resultado es: " ++ show(siguiente x) )
            menu 
        "4" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let y = read n2 :: Integer 
            putStrLn("El número menor es: " ++ show(menor x y) )
            menu 
        "5" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let y = read n2 :: Integer 
            putStrLn("El número menor es: " ++ show(may x y) )
            menu 
        "6" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let y = read n2 :: Integer 
            putStrLn("El número menor es: " ++ show(divi x y) )
            menu 
        "7" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let y = read n2 :: Integer 
            putStrLn("El número menor es: " ++ show(modulo x y) )
            menu 
        "8" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("El resultado es: " ++ show(par x) )
            menu 
        "9" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Double
            putStrLn("El resultado es: " ++ show(mayo x) )
            menu 
        "10" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(comun x y) )
            menu 
        "11" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Bool
            putStrLn("El resultado es: " ++ show(negacion x) )
            menu 
        "12" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("El resultado es: " ++ show(impar x) )
            menu 
        "13" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer 
            putStrLn("El resultado es: " ++ show(posneg x) )
            menu 
        "14" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine 
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(segundo x y) )
            menu 
        "15" -> do
            putStrLn("Adios")
        _ -> do 
            putStrLn("Elige algo de las opciones validas naco estúpido")

main :: IO()
main = menu