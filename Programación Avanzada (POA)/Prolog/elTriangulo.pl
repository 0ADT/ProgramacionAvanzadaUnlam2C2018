esTriangulo(A,B,C):-A<B+C,B<A+C,C<A+B.
esIsosceles(A,B,C):-((A=B,B\=C);(B=C,C\=A);(C=A,A\=B)).
esEscaleno(A,B,C):-A\=B,B\=C,C\=A.
esEquilatero(A,B,C):-A=B,B=C,C=A.
triangulo(A,B,C,T):-esTriangulo(A,B,C),((esIsosceles(A,B,C),T="Isosceles"),!;(esEscaleno(A,B,C),T="Escaleno"),!;(esEquilatero(A,B,C),T="Equilatero"));T="NO ES UN TRIANGULO =(".
