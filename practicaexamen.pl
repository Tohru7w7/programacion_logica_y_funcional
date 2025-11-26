padre(router,red1).
padre(router,red2).
topologia(red1, pc1).
topologia(red1, pc2).
topologia(red1, pc3).
topologia(red1, pc4).
topologia(red2, pc5).
topologia(red2, pc6).
topologia(red2, pc7).
topologia(red2, server1).
velocidad(red1, 1000). 
velocidad(red2, 100).  


%Muestre las PCs de la topología de estrella (red1).
%topologia(red1,X).
%Desarrolle una regla que determine si un dispositivo pertenece a una red.
%misma_red(X,Y):-topologia(X,Y).
%¿Puede el S1 enviar ping a la pc2?
%hacer_ping(X, Y):- topologia(Z,X),topologia(R, Y),padre(router,Z),padre(router,R).
%Invente una regla. pc1 pertenece a la misma red que pc6?
%misma(X,Y):-topologia(Z,X), topologia(Z,Y).
%Invente una regla que utilice una expresión aritmética. Dividir la velocidad de red1 entre 2.
%dividir(X,R):- velocidad(X,V), R is V div 2 .
%Invente una regla que utilice un comparador. Comparar si la velocidad de red1 es mayor que la de red2.
comparar(X,Y,Resultado):- 
velocidad(X,VX), velocidad(Y,VY), 
(VX > VY -> Resultado = 'Mayor'; 
VX =:= VY -> Resultado = 'Igual'; 
Resultado = 'Menor').
