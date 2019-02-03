item(turron,8).
item(cafe,30).
item(medialuna,10).
item(alfajor,10).
item(yerba,31).

prodCartesiano(X,Y,W,Z):-item(X,Y),item(W,Z).
seleccion(X,Y,W,Z):-prodCartesiano(X,Y,W,Z),Y<Z.
proyeccion(X,Y):-seleccion(X,Y,_,_).
itemMasCaro(I,P):-item(I,P),not(proyeccion(I,P)).
