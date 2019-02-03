hombre(n1,b1,b2).
hombre(n2,b2,b3).
hombre(n3,b4,b5).
hombre(n4,b6,b7).

mujer(n5,b1,b2).
mujer(n6,b1,b2).
mujer(n7,b6,b5).
mujer(n8,b8,b9).
mujer(n9,b3,b7).


parejas(NH,NM,NB):-(hombre(NH,NB,_),mujer(NM,NB,_));(hombre(NH,NB,_),mujer(NM,_,NB));(hombre(NH,_,NB),mujer(NM,_,NB));(hombre(NH,_,NB),mujer(NM,NB,_)).
