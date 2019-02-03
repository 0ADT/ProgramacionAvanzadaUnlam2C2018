hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

%REGLAS

ni�o(X,Y):-padre(Y,X),hombre(X).
ni�a(X,Y):-padre(Y,X),mujer(X).
hijo(X,Y):-padre(Y,X),ni�o(X,_).
hija(X,Y):-padre(Y,X),ni�a(X,_).
hermano_o_hermana(X,Y):-padre(Z,X),padre(Z,Y),hombre(Z),not(X == Y).
hermano(X,Y):-hermano_o_hermana(X,Z),hermano_o_hermana(Z,Y),not(X == Y),hombre(Y).
