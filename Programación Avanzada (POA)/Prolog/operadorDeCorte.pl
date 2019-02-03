%f(X,Y):-X<4,Y is -X+2,!.
%f(X,Y):-X>=4,X=<6,Y is -2,!.
%f(X,Y):-Y is X-8.

fact(0,1):-!.
fact(X,Y):-Z is X-1,fact(Z,W),Y is W*X.

fib(1,0):-!.
fib(2,1):-!.
fib(N,F):-N1 is N-1, N2 is N-2, fib(N1,F1), fib(N2,F2), F is F1 + F2.

