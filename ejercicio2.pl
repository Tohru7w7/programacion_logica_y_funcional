gen(hominoidea,superfamily).
gen(hominidea,family).
gen(hylobatidae,family).
gen(ponginae,subfamily).
gen(homininae,subfamily).
gen(hominini,tribe).
gen(gorillini,tribe).
gen(homo,genus).
gen(pan,genus).
gen(gorilla,genus).
gen(pongo,genus).
gen(hylobates,genus).


gen(pan,bonobo,sub).
gen(pan,chimpanzee,sub).


gen(hominoidea,hominidea,family).
gen(hominoidea,hylobatidae,family).
gen(hylobatidae,hylobates,genus).
gen(hominidea,ponginae,subfamily).
gen(hominidea,homininae,subfamily).
gen(ponginae,pongo,genus).
gen(homininae,hominini,tribe).
gen(homininae,grollini,tribe).
gen(gorillini,gorilla,genus)
gen(homonini,homo,genus).
gen(hominini,pan,genus).

% Es el gorila descendiente del hominini? gen(hominini,gorilla).
% Es el homo hermano del gorilla? 
mismopadre(X,Y):- gen(Z,X), gen(Z,Y).
% Son el homo y el gorilla de la misma subfamilia? gen(homo,X), gen(gorilla,X).
mismasub(X,Y):- gen(X,Z), gen(Y,Z).
% Tiene hominini la misma familia que pongo? mismasub(X,Y):- gen(X,Z), gen(Y,Z).
% Quienes son los descendientes directos de una tribu? gen(X,tribe).
% Cual es la superfamilia a la que pertenece hylobates? gen(hylobates,X).
%Que generos comparten la misma subfamilia con pan? gen(pan,X), gen(Y,X).
%Cual es el ancestro común mas cercano entre el homo y el gorilla?
ancestro(X,Y):- gen(Z,X), gen(Z,Y), anc(J,Z).