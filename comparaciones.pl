area_circulo(Radio, Area) :- Area is pi * Radio ** 2.

%comparar_area(10,12,Resulytado). = Mayor
comparar_area(Radio,Limite,Resultado):-
    area_circulo(Radio,Area),
    (Area > Limite ->
        Resultado = 'Mayor';
    Area =:= Limite ->
        Resultado = 'Igual';
        Resultado = 'Menor').


%comparar_perimetro(5,20, Resultado). = 'Igual'.
%comparar_perimetro(10,10, Resultado). = 'Mayor'.
comparar_perimetro(Lado,Limite,Resultado):-
    Perimetro is Lado * 4,
    (Perimetro > Limite -> Resultado = 'Mayor';
    Perimetro =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor').

%verificar(10,Resultado). = Positivo
%verificar(-5,Resultado). = Negativo 
%verificar(0,Resultado). = Negativo 
verificar(Numero, Clasificacion) :-
    Numero > 0,
    Clasificacion = 'Positivo'.
verificar(Numero, Clasificacion) :-
    Numero < 0,
    Clasificacion = 'Negativo'.
verificar(0, Clasificacion) :-
    Clasificacion = 'Cero'.

% comparar_raiz(25, 5, Resultado). = 'Igual'.
comparar_raiz(Numero, Limite, Resultado) :-
    Raiz is sqrt(Numero),
    (Raiz > Limite ->  Resultado = 'Mayor';
    Raiz =:= Limite ->  Resultado = 'Igual';
    Resultado = 'Menor').

