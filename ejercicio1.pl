jefe(mark,sheryl).
jefe(sheryl,david).
jefe(sheryl,timothye).
jefe(sheryl,mike).
jefe(sheryl,elliot).
jefe(sheryl,lori).
jefe(elliot,rebecca).
jefe(elliot,heather).    

%¿quién es el jefe de Rebecca? jefe(X,rebecca).
%¿Es jefe Mark del jefe de Rebecca? jefe(X,rebecca),jefe(mark,X)
%¿Es Lori jefe de alguien? jefe(lori,X).
%Mostrar empleados del jefe de Heather: jefe(X,heather),jefe(X,Y).
%Es Timothy jefe de Rebecca? jefe(timothy,rebecca).
%Mostrar compañeros de nivel de mike: jefe(X,mike),jefe(X,Compañero).
%¿Es el jefe de Rebecca compañero de nivel de david? jefe(X,rebecca),jefe(Y,X),jefe(Y,david).
%¿Es compañero de nivel mike de lori? jefe(X,mike),jefe(X,lori).