hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

ni�o(X,Y):-padre(Y,X).
hijo(X,Y):-ni�o(X,Y),not(mujer(X)).
hija(X,Y):-ni�o(X,Y),not(hombre(X)).
hermano(X,Y):-ni�o(X,Z),ni�o(Y,Z),not(X==Y).

