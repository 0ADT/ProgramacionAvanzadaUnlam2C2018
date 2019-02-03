hombre("Armando",cumbia,salsa).
hombre("Elber",tango,rock).
hombre("Esteban",rock,salsa).
mujer("Elsa",salsa,cumbia).
mujer("Ana",rock,tango).
mujer("Monica",salsa,tango).

parejasDeBaile(H,M):-hombre(H,B,C),mujer(M,X,Y),(B==X;B==Y;C==X;C==Y).

%Solucion propuesta (correcta)
hombre1(N,B):-hombre(N,B,_).
hombre1(N,B):-hombre(N,_,B).

mujer1(N,B):-mujer(N,B,_).
mujer1(N,B):-mujer(N,_,B).

pareja(H,M,B):-hombre1(H,B),mujer1(M,B).
