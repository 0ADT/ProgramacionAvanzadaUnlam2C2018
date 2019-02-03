hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

%REGLAS

niño(X,Y):-padre(Y,X),hombre(X).
niña(X,Y):-padre(Y,X),mujer(X).
hijo(X,Y):-padre(Y,X),niño(X,_).
hija(X,Y):-padre(Y,X),niña(X,_).
hermano_o_hermana(X,Y):-padre(Z,X),padre(Z,Y),hombre(Z),not(X == Y).
hermano(X,Y):-hermano_o_hermana(X,Z),hermano_o_hermana(Z,Y),not(X == Y),hombre(Y).
