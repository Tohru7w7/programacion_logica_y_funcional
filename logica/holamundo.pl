valioso(oro).
valioso(plata).
valioso(diamante).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
 
%Diagrama de Progenitores
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).
%progenitor(X,ana),progenitor(Y,X),progenitor(Y,Z).
%¿Es ana tia de jaime? progenitor(X,jaime),progenitor(Abuelo,X),progenitor(Abuelo,Tia).
%¿Es ana tia de isabel? progenitor(X,isabel),progenitor(Abuelo,X),progenitor(Abuelo,Tia).0