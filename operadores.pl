%suma
ejemplo_suma(X,Y, R):- R is X+Y.
%resultado ejemplo_suma(10.2,2,R). = 12.2
resta(X,Y, R):- R is X-Y.
%resultado resta(10.2,2,R). = 8.2
multi(X,Y,R):- R is X*Y.
%resultado multi(10,2,R). = 20
div(X,Y,R):- R is X div Y. 
%resultado div(10,2,R). = 5
restdiv(X,Y,R):- R is X mod Y.
%resultado restdiv(15,2,R). = 1
elevado(X,Y,R):- R is X ^ Y.
%resultado div(10,2,R). = 100
negacion(X,R):- R is -X.
%resultado negacion(10,R). = -10
abs(X,R):- R is abs(X).
%resultado abs(10,R). = 10
acoseno(X,R):- R is acos(X).
%resultado acoseno(0.5,R). = 1.0471975511965979.
aseno(X,R):- R is asin(X).
%resultado aseno(0.5,R). = 1.0471975511965979.
atang(X,R):- R is atan(X).
%resultado atang(0.5,R). = 0.4636476090008061.
coseno(X,R):- R is cos(X).
%resultado coseno(0.5,R). = 0.8775825618903728.
expo(X,R):- R is exp(X).
%resultado expo(0.5,R). = 1.6487212707001282.
loganep(X,R):- R is log(X)/log(2).
%resultado loganep(0.5,R). = -1.0.
logabase(X,R):- R is log(X).
%resultado logabase(0.5,R). = -0.6931471805599453.
seno(X,R):- R is sin(X).
%resultado seno(0.5,R). = 0.479425538604203.
raiz(X,R):- R is sqrt(X).
%resultado raiz(10,R). = 3.1622776601683795.
tang(X,R):- R is tan(X).
%resultado tang(0.5,R). = 0.5463024898437905.
redond(X,N,R):- Factor is 10 ** N, R is round(X * Factor) / Factor.
%resultado redond(0.5589,2,R). = 0.56

