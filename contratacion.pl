cargo('titular','tco','alejandro').
cargo('titular','mto','pedro').
cargo('asistente','honorarios','daniel').
cargo('asistente','hc','xyz').
cargo('auxiliar','mto','david').
cargo('auxiliar','tco','maria').

horas('alejandro',40).
horas('pedro',30).
horas('daniel',20).
horas('xyz',16).
horas('david',15).
horas('maria',18).

extras('hc',0).
extras('mto',0.3).
extras('tco',0.2).
extras('honorarios',0).

valorContrato('titular','hc',100000).
valorContrato('asistente','hc',70000).
valorContrato('auxiliar','hc',40000).
valorContrato('titular','mto',120000).
valorContrato('asistente','mto',60000).
valorContrato('auxiliar','mto',20000).
valorContrato('titular','tco',130000).
valorContrato('asistente','tco',50000).
valorContrato('auxiliar','tco',30000).
valorContrato('titular','honorarios',110000).
valorContrato('asistente','honorarios',80000).
valorContrato('auxiliar','honorarios',18000).

duracionSemestre(18).

contrato(X,T):-cargo(Y,Z,X),valorContrato(Y,Z,M),extras(Z,P),horas(X,N),duracionSemestre(O),T is (N*O*M+(N*O*M)*P).




















