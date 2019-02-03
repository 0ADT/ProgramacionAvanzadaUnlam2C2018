hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

niño(X,Y):-padre(Y,X).
hijo(X,Y):-niño(X,Y),not(mujer(X)).
hija(X,Y):-niño(X,Y),not(hombre(X)).
hermano(X,Y):-niño(X,Z),niño(Y,Z),not(X==Y).

