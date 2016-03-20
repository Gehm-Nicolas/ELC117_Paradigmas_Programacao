--Trabalho 2
--1)Calcula a soma dos quadrados de dois numeros x e y
somaQuad :: Int -> Int -> Int 			--Definição de função COM tipo explícito
somaQuad x y = (x^2 + y^2)

--2)Verifica se 2 listas possuem o mesmo primeiro elemento
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = if (head lis1 == head lis2) then True else False

--3)Recebe uma lista de nomes e adiciona a string "Sr." no início de cada elemento da lista
nameList :: [String] -> [String]
nameList lis = map ("Sr."++) lis		--map: aplica uma função a cada elemento 							--     da lista, produzindo outra lista

--4)Recebe uma String e retorna o número de espaços contidos nesta
spaceNum :: String -> Int
spaceNum lis = length (filter (==' ') lis)	--filter: aplica um teste a cada elemento da lista, 
						--	  produzindo outra lista somente com os elementos
						--        cujo teste resultar TRUE

--5)Calcula a função "3*n^2 + 2/n + 1" para cada elemento (Int) da lista
func :: [Float] -> [Float]			
func lis = map (\n -> 3*n^2 + 2/n + 1) lis 	--Funções Anônimas (Notação LAMBDA)

--6)Seleciona somente números negativos de uma lista de números
isNeg :: (Num a, Ord a) => [a] -> [a]		--Definição com tipo explícito de LISTA, porém pode ser LISTA de qualquer TIPO sendo Ord e Num
--isNeg :: [Float] -> [Float]			--Ord: Números Ordenados Num:É um número
isNeg lis = filter (<0) lis			

--7)Retorna os números entre 1 e 100 presentes em uma lista, incluindo estes.
selNum :: [Float] -> [Float]
selNum lis = filter (\n -> 0<n && n<101) lis
