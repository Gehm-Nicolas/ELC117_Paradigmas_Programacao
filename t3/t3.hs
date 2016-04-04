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

--8) Recebe uma STRING, com ou sem espaços, e retorne OUTRA STRING com os caracteres substituidos por '-', mantendo os espaços. SEM recursividade
password :: Char -> Char
password c
	|c==' '    = ' '
	|otherwise = '-'

codifica :: String -> String
codifica lis = map password lis

--9) Problema 8, RECURSIVAMENTE
codificaRec :: String -> String
codificaRec [] = []
codificaRec (x:xs)
	|x==' '    = ' ':codificaRec(xs)
	|otherwise = '-':codificaRec(xs)

--10)Verifica se um CARACTER está contido na STRING, usando RECURSIVIDADE
--Diferencia maiúsculas de minúsculas
charFound :: Char -> String -> Bool
charFound _ [] = False
charFound c (x:xs)
	|c==x      = True
	|otherwise = charFound c xs

--11)Recebe uma LISTA de coordenadas de pontos 2D e desloca esses pontos em 2 unidades, RECURSIVAMENTE
add2 :: (Float,Float) -> (Float,Float)
add2 tupla = (fst tupla +2,snd tupla +2)

translate :: [(Float,Float)] -> [(Float,Float)]
translate [] = []
translate (x:xs) = (add2 x:translate xs)

--12)Recebe 2 LISTAS e retorna uma LISTA contendo o produto, par a par, dos elementos das listas de entrada, RECURSIVAMENTE
prodVetRec :: [Float] -> [Float] -> [Float]
prodVetRec [] _ = []
prodVetRec _ [] = []
prodVetRec lis1 lis2 = ((head lis1)*(head lis2)):prodVetRec (tail lis1) (tail lis2)

--13)Exercício 12, SEM recursão
prodVet :: [Float] -> [Float] -> [Float]
prodVet lis1 lis2 = zipWith (*) lis1 lis2

--14)Recebe um NÚMERO N e retorna uma TABELA de números de 1 a n e seus quadrados, RECURSIVAMENTE
geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = (n,n^2):geraTabela(n-1)
