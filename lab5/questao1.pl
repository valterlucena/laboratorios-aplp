maior([H],H).
maior([H|T],R) :- maior(T,R1), (H > R1 -> R = H ; R = R1).

menor([H],H).
menor([H|T],R) :- menor(T,R1), (H < R1 -> R = H ; R = R1).

soma([],0).
soma([H|T],R) :- soma(T, R1), R is H + R1.

calcula(MAIOR, MENOR, SOMA, RESULTADO) :- RESULTADO is ((MAIOR - MENOR) + SOMA).

:- initialization(main).

main :-
	read(X),
	maior(X,MAIOR),
	menor(X,MENOR),
	soma(X,SOMA),
	calcula(MAIOR, MENOR, SOMA, RESULTADO),
	write(RESULTADO),nl,
	halt(0).
