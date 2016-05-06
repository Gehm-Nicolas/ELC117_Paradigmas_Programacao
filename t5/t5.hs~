-------------Trabalho t5-------------
--Programação Funcional em Haskell--
--1)Usando "list comprehension", adicionar um sufixo às strings contidas em uma lista
addSuffix :: String -> [String] -> [String]
addSuffix _ [] = []
addSuffix [] lis = lis
addSuffix suf lis = [x++suf|x<-lis]

--2)Recebe uma LISTA de palavras e retorna a quantidade de palavras dessa lista com menos de 5 caracteres, RECURSIVAMENTE
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs)
	|length(x) >= 5 = countShorts(xs)
	|otherwise      = 1 + countShorts(xs)

--3)Reescrever a função do exercício 2), usando "List Comprehension"
countShorts2 :: [String] -> Int
countShorts2 [] = 0
countShorts2 lis = length [x|x<-lis,length(x)<5]

--4)Recebe um NÚMERO N e uma LISTA de inteiros, retornando uma LISTA com N repetições da lista original, RECURSIVAMENTE
ciclo :: Int -> [Int] -> [Int]
ciclo _ [] = []
ciclo 0 _ = []
ciclo n lis = lis++(ciclo (n-1) lis)

--5)Recebe LISTA de palavras e retorna LISTA de tuplas com as palavras numeradas a partir de 1, RECURSIVAMENTE
aux_numera :: Int -> [String] -> [(Int,String)]
aux_numera _ [] = []
aux_numera n (x:xs) = (n,x):aux_numera (n+1) xs

numera :: [String] -> [(Int,String)]
numera [] = []
numera (x:xs) = (1,x):aux_numera 2 xs

{--6)

a)[ (x,y) | x <- [1..5], even x, y <- [(x + 1)..6], odd y ]
Saída: [(2,3),(2,5),(4,5)]
O resultado é este pois, primeiramente, o termo à esquerda do operador guarda ("|") representa o tipo do qual a lista é composta, que no caso são tuplas (x,y). Então, os geradores (condições após a guarda) definem que listas x e y receberam.

No caso de "x" há duas geradoras:
---------------------------------
--x<-[1..5] : "x" pertence ao conjunto [1..5], ou seja, pode receber os valores de 1,2,3,4 e 5 apenas
--even x    : "x" apenas recebe valors pares

Então, juntando estas duas condições, X só receberá os valores 2 e 4.

No caso de "y" há duas geradoras também:
---------------------------------------
--f<-[(x + 1)..6] :  "y" pertence ao conjunto de números [(2+1..6)], equivalente a 3,4,5 e 6, quando x=2, e pertence ao conjunto [(4+1)..6], equivalente a 5 e 6, quando x=4
--odd y: "y" apenas recebe valores ímpares

Então, juntando as duas condições, quando x=2, y receberá 3 e 5 e quando x=4, y receberá apenas o valor 5
O resultado disso é colocado em tuplas, gerando a lista acima mencionada

b)[ a ++ b | a <- ["lazy","big"], b <- ["frog", "dog"]]
Saída:["lazyfrog","lazydog","bigfrog","bigdog"]
a ++ b => Esta é a expressão de saída e indica a concatenação do conteúdo de "a" com o conteúdo de "b"
Neste caso, cada elemento de "a" é concatenado com todos os elementos de "b", formando cada concatenação um elemento do vetor

c)concat [ [a,'-'] | a <- "paralelepipedo", not (elem a "aeiou")]
Saída: "p-r-l-l-p-p-d-"
[a,'-'] => Define que o tipo de elementos do vetor será uma lista de dois caracteres, representado por "a" mais o caracter '-'
a <- "paralelepipedo" => Este gerador define que "a" pertence àquela lista "paralelepipedo"
not (elem a "aeiou") => Este gerador da lista define que elimina da lista qualquer caractere pertencente à String "aeiou" que esteja no elemento "a", pois a função "elem" retorna o valor Booleano caso o caractere da String "a" seja igual a algum dos caracteres da String "aeiou", e caso seja, a função "not" inverte essa condição, retornando o valor Booleano contrário, evitando assim que a lista gerada contenha qualquer um dos caracteres presentes na String "aeiou" 

No final de tudo, a função "concat" concatena todos os itens da lista final gerada
--}

--7)Recebe duas LISTAS e retorna uma LISTA de todas possíveis combinações, sem utilizar "List Comprehension"
pairWithAll :: a -> [b] -> [(a,b)]
pairWithAll _ [] = []
pairWithAll a (x:xs) = (a,x):(pairWithAll a xs)

crossProduct :: [a] -> [b] -> [(a,b)]
crossProduct _ [] = []
crossProduct [] _ = []
crossProduct lis_a lis_b = pairWithAll (head(lis_a)) lis_b ++ crossProduct (tail(lis_a)) lis_b

--8)Recebe um NÚMERO N e um PONTO (x,y) e gera uma sequência de retângulos não sobrepostos, usando "List Comprehension"
--(x,y,largura,altura)
genRects :: Int -> (Int,Int) -> [(Float,Float,Float,Float)]
genRects 0 _ = []
genRects num (a,b) = [(x + largura*n,y,largura,altura) | n <- [0..(n-1)] ]
	where x = fromIntegral a
	      y = fromIntegral b
	      n = fromIntegral num
	      altura = 5.0
	      largura = 5.0	
	      --calc_x = (x + largura*n)

--9) Recebe uma LISTA de tuplas e, decompondo cada uma delas, gera-se uma TUPLA de listas, RECURSIVAMENTE
--func :: [(x,y)] -> ([x],[y])
--func [] = ([],[])
--func (x:xs) =  
