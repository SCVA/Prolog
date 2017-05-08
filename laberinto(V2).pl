conectar([inicio,x],[2,7]).
conectar([2,7],[2,8]).
conectar([2,8],[3,8]).
conectar([3,8],[4,8]).
conectar([inicio,x],[2,5]).
conectar([2,5],[2,4]).
conectar([2,4],[2,3]).
conectar([2,3],[2,2]).
conectar([2,2],[3,2]).
conectar([3,2],[4,2]).
conectar([4,2],[4,3]).
conectar([4,3],[4,4]).
conectar([4,4],[fin,y]).

conectado(X,Y):- conectar(X,Y).
conectado(X,Y):- conectar(Y,X).

pertenece(X,[X|_]) :- !.
pertenece(X,[_|R]) :- pertenece(X,R).

%RF rutaFaltante, CA coordenada actual, CS coordenada Sig, S solucion
ruta([[fin,y]|RF],[[fin,y]|RF]).
ruta([CA|RF],S) :- conectado(CA,CS),\+ pertenece(CS,RF),ruta([CS,CA|RF],S).

solucion :- ruta([[inicio,x]],Solucion),write(Solucion).
