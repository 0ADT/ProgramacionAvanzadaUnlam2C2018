entrada(paella).
entrada(gazpacho).
entrada(consom�).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

menu(X,Y,Z):-entrada(X),(carne(Y);pescado(Y)),postre(Z).
menu_consom�(X,Y,Z):-entrada(X),X == consom�,(carne(Y);pescado(Y)),postre(Z).
