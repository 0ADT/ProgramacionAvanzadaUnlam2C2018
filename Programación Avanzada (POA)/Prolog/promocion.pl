parcial1(ana,7).
parcial1(juan,4).
parcial2(ana,9).
parcial2(juan,8).


promocion(N,R):-parcial1(N,X),parcial2(N,Y),X>6,Y>6,average(R,X,Y).
average(N,X,Y):-N is (X+Y)/2.functiflkasjdfñas

mostrar_promocion():-promocion(N,R),write(N-R),nl,fail.



