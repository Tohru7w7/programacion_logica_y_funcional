evolucion(fortran,algol).
evolucion(fortran,basic).
evolucion(fortran,pli).
evolucion(sketchpad,simula).
evolucion(algol,basic).
evolucion(algol,simula).
evolucion(algol,clu).
evolucion(basic,visualbasic).
evolucion(basic,superbasic).
evolucion(simula,smalltalk).
evolucion(smalltalk,self).
evolucion(smalltalk,objetivec).
evolucion(smalltalk,python).
evolucion(smalltalk,ruby).
evolucion(smalltalk,scheme).
evolucion(self,javascript).
fecha_salida(javascript,1995).
fecha_salida(algol,1958).
fecha_salida(smalltalk,1969).
%Definir los hechos de los lenguajes derivados de Fortran siguiendo el orden de las flechas (Valor 30 puntos) 

%Muestre los derivados directos de Fortran  (Valor 10 puntos)  
%evolucion(fortran,X).
%¿Es derivado Javascript de Self (devolverá true o false; Valor 10 puntos)  
%evolucion(self,javascript).
%¿Es SuperBasic lenguaje hermano de VisualBasic? (devolverá true o false; Valor 10 puntos) 
hermano(X,Y):-evolucion(Z,X),evolucion(Z,Y).
%Invente una regla. (Valor 10) Mostrar los padres Simula
%evolucion(X,simula).
%Invente una regla que utilice una expresión aritmética. (Valor 15)  
%¿Cuantos años tienen de diferencia javascript y algol? diferencia(javascript,algol,R).
diferencia(X,Y, R):- fecha_salida(X,A1), fecha_salida(Y,A2), R is A1 - A2.
%Invente una regla que utilice un comparador. (Valor 15)  
%Mostrar cual salio antes o despues?
comparar(X,Y,Resultado):- 
fecha_salida(X,A1), fecha_salida(Y,A2), 
(A1 > A2 -> Resultado = 'Después'; 
A1 < A2 -> Resultado = 'Antes';
Resultado ='Quien sabe xd').