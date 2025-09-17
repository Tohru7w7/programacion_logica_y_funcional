promedio ::   Float -> Float -> Float -> Float -> Float
promedio a b c d = 
    if d == 0 then 0
    else (a + b + c + d) / 4

monedas :: Integer -> Integer -> Integer -> Integer -> Float
monedas a b c d 
    |  total == 0 = 0 
    |  total /= 0 = fromInteger total
    where total = a*1 + b*5 + c*10 + d*50

volumenEsfera :: Float -> Float
volumenEsfera p =
    if p < 0 then 0
    else (4/3) * pi * p^3

igual :: Integer -> Integer -> Integer -> Bool
igual a b c
    | a == b && b == c = True
    | a /= b || b /= c = False

diferentes :: Integer -> Integer -> Integer -> Bool
diferentes a b c
    |  a /= b || b /= c = True
    |  a == b && b == c = False

menu :: IO()
menu = do
    putStrLn(" == Menú == ")

    putStrLn("¿Qué deseas hacer?")
    putStrLn("1) Promedio de 4 productos")
    putStrLn("2) Suma de monedas")
    putStrLn("3) Volumen de una esfera")
    putStrLn("4) Números iguales?")
    putStrLn("5) Números diferentes?")
    putStrLn("8) Salir")
    opcion <- getLine
    case opcion  of 
        "1" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine 
            let a = read n1
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine 
            let b = read n2 
            putStrLn("Introduce el tercer número: ")
            n3 <- getLine 
            let c = read n3 
            putStrLn("Introduce el cuarto número: ")
            n4 <- getLine 
            let d = read n4 
            putStrLn("El resultado es: " ++ show((promedio a b c d)) )
            menu 
        "2" -> do
            putStrLn("Introduce las monedas que quieres de a=1 b=5 c=10 d=50: ")
            n1 <- getLine 
            let a = read n1
            n2 <- getLine 
            let b = read n2 
            n3 <- getLine 
            let c = read n3 
            n4 <- getLine 
            let d = read n4 
            putStrLn("El resultado es: " ++ show((monedas a b c d)) )
            menu 
        "3" -> do
            putStrLn("Introduce el radio: ")
            n1 <- getLine 
            let p = read n1
            putStrLn("El resultado es: " ++ show((volumenEsfera p)) )
            menu
        "4" -> do
            putStrLn("Introduce los 3 números: ")
            n1 <- getLine 
            let a = read n1
            n2 <- getLine 
            let b = read n2 
            n3 <- getLine 
            let c = read n3  
            putStrLn("El resultado es: " ++ show((igual a b c)) )
            menu 
        "5" -> do
            putStrLn("Introduce los 3 números: ")
            n1 <- getLine 
            let a = read n1
            n2 <- getLine 
            let b = read n2 
            n3 <- getLine 
            let c = read n3  
            putStrLn("El resultado es: " ++ show((diferentes a b c)) )
            menu
        "8" -> do
            putStrLn("Adios")
        _ -> do 
            putStrLn("Elige algo de las opciones validas")

main :: IO()
main = menu