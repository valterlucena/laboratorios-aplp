operadorand(true,true,true,true).
operadorand(_,_,_,false).

operadoror(false,false,false,false).
operadoror(_,_,_,true).

oplogico(X, Y, Z, O, R) :- O == 'or', operadoror(X, Y, Z, R).
oplogico(X, Y, Z, O, R) :- O == 'and', operadorand(X, Y, Z, R).

:- initialization(main).

main :-
	read(X),
	read(Y),
	read(Z),
	read(O),
	oplogico(X, Y, Z, O, R),
	write(R), nl,
	halt(0).
