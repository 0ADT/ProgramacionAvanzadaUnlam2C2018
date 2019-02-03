cls:-write('\e[2J').

es_un_pais(argentina).
es_un_pais(peru).
es_un_pais(chile).
es_un_pais(brasil).
es_un_pais(uruguay).


limita_con(argentina,brasil).
limita_con(argentina,chile).
limita_con(argentina,uruguay).
limita_con(peru,brasil).
limita_con(bolivia,brasil).
limita_con(uruguay,brasil).
limita_con(bolivia,argentina).
limita_con(uruguay,brasil).


limitrofes(X,Y):-limita_con(X,Y).
limitrofes(X,Y):-limita_con(Y,X).

translimitrofes(X,Y):-limita_con(X,W),limita_con(W,Y),
    not(limitrofes(X,Y)),not(limitrofes(X,X)),not(limitrofes(Y,Y)).

translimitrofe(X,Z):-limitrofes(X,Y),limitrofes(Y,Z),
    not(limitrofes(X,Z)),not(X == Z).










