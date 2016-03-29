--Trabalho 3--
--1)Recebe LISTA de INTEIROS e retorna LISTA dos elementos elevados ao quadrado, RECURSIVAMENTE.
square2 :: [Int] -> [Int]
square2 []  = []
square2 lis =  [(head lis)^2] ++ square2(tail lis)

--2)Recebe LISTA de nomes e adiciona a string "Sr." no inicio de cada nome, RECURSIVAMENTE.
isMale :: String -> String
isMale name
	| (last name == 'a') = "Sra."
	| otherwise 	     = "Sr."

addSr :: [String] -> [String]
addSr []  = []
addSr (x:xs) = [isMale(x)++(x)] ++ addSr(xs) --x = head da lista
					     --xs= Tail da lista
	
--3)Recebe uma STRING e retorna o número de espaços contidos nela, RECURSIVAMENTE.
spaceNum :: String -> Int
spaceNum []  = 0
spaceNum lis = if((head lis)==' ')
	then (1 + spaceNum(tail lis))
	else (spaceNum(tail lis))

--4)Recebe uma LISTA de números e calcula 3*n^2+2/n+1, para cada elemento, RECURSIVAMENTE.
func :: Float -> Float
func n = 3*n^2+2/n+1

calc :: [Float] -> [Float]
calc []  = []
calc lis = [func(head lis)] ++ calc(tail lis)

--5)Recebe uma LISTA de números e retorna uma LISTA com os que forem negativos, RECURSIVAMENTE
isNeg :: [Float] -> [Float]
isNeg []  = []
isNeg (x:xs)
	| x<0 	    = x:isNeg(xs)
	| otherwise = isNeg(xs)

--6)Recebe uma STRING e retorna uma STRING sem as vogais presentes nesta string de entrada, SEM recursão
--Funciona apenas com letras minúsculas
semVogais :: String -> String
semVogais word = filter (/='u') (filter (/='o') (filter (/='i') (filter (/='e') (filter (/='a') word)))) 

--7)Exercício 6, RECURSIVAMENTE
--Novamente, funciona apenas para letras minúsculas
eVogal :: Char -> Bool
eVogal letter
	| letter == 'a' = True
	| letter == 'e' = True
	| letter == 'i' = True
	| letter == 'o' = True
	| letter == 'u' = True
	| otherwise 	= False

semVogaisRec :: String -> String
semVogaisRec (x:xs)
	| ((eVogal x) == True) = semVogais(xs)
	| otherwise	       = x:semVogais(xs)

--8)
