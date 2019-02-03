%factorial
factorial(0,1):-!.
factorial(X,F):-Z is X-1,factorial(Z,W),F is W*X.

%Fibonacci
fibonacci(1,0):-!.
fibonacci(2,1):-!.
fibonacci(X,F):-X1 is X-1, X2 is X-2, fibonacci(X1,F1),fibonacci(X2,F2),F is F1+F2.

%Multiplicacion por sumas sucesivas
mulSumas(X,1,X):-!.
mulSumas(X,Y,F):-Y1 is Y-1,mulSumas(X,Y1,F1),F is X+F1.

%Division por restas sucecivas
divRestas(X,Y,0):-X<Y,!.
divRestas(X,Y,C):-X1 is X-Y,divRestas(X1,Y,C1),C is C1+1.

%El triangulo
% Dados tres valores A, B y C, determinar si es posible construir
% un triangulo cuyos lados tengan longitudes A, B y C.
% De ser asi, indicar que tipo de triangulo es: escaleno,
% isosceles o equilatero.
% NOTA: en todo triangulo cada lado es menor que la suma de los
% otros dos.
esTriangulo(A,B,C):-A+B>C,B+C>A,C+A>B.
esIsosceles(A,B,C):-(A=B,B\=C);(B=C,C\=A);(C=A,A\=B).
esEquilatero(A,B,C):-A=B,B=C,C=A.
esEscaleno(A,B,C):-A\=B,B\=C,C\=A.
tipoTriangulo(A,B,C,F):-(esTriangulo(A,B,C),(esIsosceles(A,B,C),F="Es isosceles"),!;(esEquilatero(A,B,C),F="Es equilatero"),!;(esEscaleno(A,B,C),F="Es escaleno"));F="No es un triangulo".

%Obtener el maximo (con numeros)
numero(1).
numero(2).
numero(3).

prodCartesiano(X,Y):-numero(X),numero(Y).
seleccion(X,Y):-prodCartesiano(X,Y),X<Y.
proyeccion(X):-seleccion(X,_).
numMax(X):-numero(X),not(proyeccion(X)).

%Parejas de baile
hombre("Carlos",cumbia,salsa).
hombre("Alberto",rock,merengue).
hombre("Elber",bachata,rock).
mujer("Ana",salsa,bachata).
mujer("Luisa",cumbia,bachata).
mujer("Romina",merengue,rock).
traerHombre(H,B):-hombre(H,B,_).
traerHombre(H,B):-hombre(H,_,B).
traerMujer(M,B):-mujer(M,B,_).
traerMujer(M,B):-mujer(M,_,B).
pareja(H,M):-traerMujer(M,B),traerHombre(H,B).%solucion 1
parejas(X,Y):-hombre(X,N1,B1),mujer(Y,N2,B2),(N1==N2;N1==B2;B1==N2;B1==B2).%solucion 2

%Producto mas caro
%mostrar el producto y el precio mas caro
item(turron, 8).
item(cafe, 30).
item(medialuna, 10).
item(alfajor, 10).
item(�oquis,30).

prodCar(X,Y,W,Z):-item(X,Y),item(W,Z).
selec(X,Y,W,Z):-prodCar(X,Y,W,Z),Y<Z.
proye(X,Y):-selec(X,Y,_,_).
productoMasCaro(I,P):-item(I,P),not(proye(I,P)).

%Devolver listado posible de cuantas formas diferentes pueden
%sentarse:
%tomas, javier, daniel, susana y linda van a una fiesta.
%tomas conoce a susana y linda,
%daniel conoce a susana y linda,
%javier conoce a daniel y susana.
%Armar las reglas para devolver de cuantas formas posibles
%pueden sentarse en una mesa.
persona(tomas).
persona(javier).
persona(daniel).
persona(susana).
persona(linda).
conoce(tomas,susana,linda):-!.
conoce(daniel,susana,linda):-!.
conoce(javier,daniel,linda):-!.

