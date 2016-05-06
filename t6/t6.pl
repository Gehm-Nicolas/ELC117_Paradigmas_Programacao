%Pratica_2 e t6
%Programação lógica em Prolog

/*Aquecimento*/
/*Copie o código Prolog abaixo para um arquivo .pl. Este código define um predicado recursivo `repete`, que é verdadeiro se a lista L contém N repetições do símbolo C.*/

	repete(0, _, []).
	repete(N, C, L) :- 
		N > 0,
		L = [C | T],
		N1 is N - 1,
		repete(N1, C, T).
/*Qual será o resultado das seguintes consultas?
	?- repete(1,a,L).
		L = [a] ;
		false.
	?- repete(2,b,L).
		L = [b, b] ;
		false.
	?- repete(-2,b,L).
		false.
	?- repete(2,a,[a,b,c]).
		false.
	?- repete(3,a,[a|T]).
		T = [a, a] ;
		false.
		*/
/*EXERCICIOS*/
%1)
zeroInit(L) :-
	L = [H|_],
	H = 0.

%2)
has5(L) :- 
	L = [_,_,_,_,_|Tale],
	Tale = [].

%3)
hasN([],0).
hasN(L,N) :-
	L=[_|T],
	N1 is N-1,
	hasN(T,N1).

%4)
concatena([],L,L).
concatena([X|L1],L2,[X|L3]) :- concatena(L1,L2,L3).

potN0(0,[1]).		%base
potN0(N,L) :-		%passo
	N>0,		%condição do passo
	N1 is N-1,	%simplifica o problema	
	Num is 2^N,	
	potN0(N1,M),		%recursão
	concatena([Num],M,L).	%constroi solucao final		
			
%5)
zipmult(_,[],[]).
zipmult([],_,[]).
zipmult(L1,L2,L3) :-
	L1 = [H1|T1],L2 = [H2|T2],
	Num is H1*H2,
	zipmult(T1,T2,R),
	concatena([Num],R,L3).

%6)
potencias(0,L) :- L = [].
potencias(N,L) :-
	N>0,
	Pot is 2^(N-1),
	N1 is N-1,
	potencias(N1,R),
	concatena(R,[Pot],L).

%7)
accPos([H|T],A,Lis) :-
		H > 0,
		concatena(A,[H],L1),
		accPos(T,L1,Lis).
accPos([H|T],A,Lis) :-
		H =< 0,
		accPos(T,A,Lis).
accPos([],A,A).

positivos(L1,L2) :-
	accPos(L1,[],L2).

%8)
mesmaPosicao(A,[A|_],[A|_]).
mesmaPosicao(A,L1,L2) :-
	L1=[_|T1],
	L2=[_|T2],
	mesmaPosicao(A,T1,T2).

/*9)
append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

prefix(P,L) :- append(P,_,L).
suffix(S,L) :- append(_,S,L).

sublist(SubL,L):- suffix(S,L), prefix(SubL,S).

comissao(0,_,C) :- C = [].
comissao(NP,LP,C) :-
	NP < length(LP),
	LP = [H|T],	
	prefix(H,T),
	comissao
*/
