valorHora('titular','hc',100000).
valorHora('titular','mto',200000).
valorHora('titular','tco',300000).
valorHora('titular','honorarios',400000).

valorHora('asistente','hc',500000).
valorHora('asistente','mto',600000).
valorHora('asistente','tco',700000).
valorHora('asistente','honorarios',800000).

valorHora('auxiliar','hc',900000).
valorHora('auxiliar','mto',1000000).
valorHora('auxiliar','tco',1100000).
valorHora('auxiliar','honorarios',1200000).

extras('hc',0).
extras('mto',0.3).
extras('tco',0.2).
extras('honorarios',0).

duracionSemestre(18).

persona('Alejandro','titular','tco',40).
persona('xyz','asistente','hc',16).
persona('abc','auxiliar','honorarios',20).
persona('def','titular','mto',30).

valorContrato(A,P):-persona(A,B,C,D), valorHora(B,C,J), extras(C,H),duracionSemestre(X), P is  (D*X*J*(1+H)).
