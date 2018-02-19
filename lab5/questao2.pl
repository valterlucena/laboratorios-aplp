ultima([H],H).
ultima([_|T], R) :- ultima(T, R).

primeira([H|_],R) :- R = H.


resultado(X,X,Y,Y,'poetica').
resultado(_,_,_,_,'naopoetica').

:- initialization(main).

main :-
	read(X),
	read(Y),
	primeira(X,PX),
	ultima(X,UX),
	primeira(Y,PY),
	ultima(Y,UY),
	resultado(PX,PY,UX,UY,R),
	write(R),nl,
	halt(0).
