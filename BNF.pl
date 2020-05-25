



oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).




sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), nombre(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,primera,S0,S):- nombre(Numero,_,primera,S0,S).

sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,Persona,S1,S).
sintagma_verbal(Numero,primera,S0,S):- verbo(Numero,primera,S0,S1), sintagma_nominal(Numero,primera,S1,S).


%Determinantes
determinante(singular,masculino,tercera,[el|S],S).
determinante(plural,masculino,tercera,[los|S],S).
determinante(singular,femenino,tercera,[la|S],S).
determinante(plural,femenino,tercera,[las|S],S).


%Nombres
nombre(singular,masculino,tercera,[hombre|S],S).
nombre(singular,femenino,primera,[yo|S],S).
nombre(singular,masculino,primera,[yo|S],S).
nombre(plural,masculino,primera,[nosotros|S],S).
nombre(plural,femenino,primera,[nosotras|S],S).




%Verbos
verbo(singular,tercera,[come|S],S).
verbo(plural,tercera ,[comen|S],S).
verbo(singular,primera,[como|S],S).
verbo(plural,primera,[comemos|S],S).
verbo(singular, tercera, [tiene|S],S).
verbo(singular, tercera, [es|S], S).


famoso([[nombre, carlosAlvarado], [pelo, negro], [categoria, politico], [profesion, presidente]]).

consultaPorNombre(Nombre):-famoso([[nombre, Nombre]|_]).

consulta(Atributo, Descripcion):-famoso(Famoso),miembro([Atributo, Descripcion], Famoso).


miembro(X, [X|_]).
miembro(X, [_|R]):-miembro(X,R).


