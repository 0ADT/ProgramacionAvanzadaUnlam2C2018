prod(X,1,X):-!.
prod(X,Y,F):-Y1 is Y-1, prod(X,Y1,F1), F is F1+X.


gauss(N, R):-N1 is N + 1, N2 is N1*N, R is N2/2.

gaussr(1,1):-!.
gaussr(N, R):-N1 is N-1, gaussr(N1, R1), R is R1+N.

pow(_,0,1):-!.
pow(X,Y,F):-Y1 is Y-1, pow(X,Y1,F1), F is F1*X.

