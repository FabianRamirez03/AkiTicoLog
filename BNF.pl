



oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).




sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), nombre(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,Persona,S0,S):- nombre(Numero,_,Persona,S0,S).
sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S).
sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sustantivo(Numero,Genero,S1,S).
sintagma_nominal(Numero,Genero,S0,S):- sustantivo(Numero,Genero,S0,S1), adjetivo(Numero, Genero,S1,S).
sintagma_nominal(Numero,_,S0,S):- sustantivo(Numero,_,S0,S).
sintagma_nominal(Numero,_,S0,S):- preposicion(S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S).
sintagma_nominal(Numero,_,S0,S):- preposicion(S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S3),conjuncion(S3,S4),adjetivo(Numero,Genero,S4,S).
sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sustantivo(Numero,Genero,S1,S2),sintagma_nominal(Numero,Genero ,S2,S).
sintagma_nominal(Numero,Genero,S0,S):- preposicion(S0,S1),sustantivo(Numero,Genero,S1,S2), adjetivo(Numero, Genero,S2,S3),conjuncion(S3,S4), adjetivo(Numero, Genero,S4,S).






sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S).
sintagma_verbal(Numero,Persona,S0,S):- pronombre_reflexivo(S0,S1), verbo(Numero,Persona,S1,S).
sintagma_verbal(Numero,Persona,S0,S):- pronombre_reflexivo(S0,S1), verbo(Numero,Persona,S1,S2),sintagma_nominal(Numero,Persona,S2,S).

sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,Persona,S1,S).
sintagma_verbal(Numero,primera,S0,S):- verbo(Numero,primera,S0,S1), sintagma_nominal(Numero,primera,S1,S).


%Determinantes
determinante(singular,masculino,tercera,[el|S],S).
determinante(plural,masculino,tercera,[los|S],S).
determinante(singular,femenino,tercera,[la|S],S).
determinante(plural,femenino,tercera,[las|S],S).
determinante(singular,femenino,tercera,[mi|S],S).
determinante(plural,femenino,tercera,[mis|S],S).
determinante(singular,masculino,tercera,[mi|S],S).
determinante(plural,masculino,tercera,[mis|S],S).
determinante(singular,femenino,tercera,[una|S],S).

%Sustantivos
sustantivo(singular, masculino,[pelo|S],S).
sustantivo(singular, femenino,[mujer|S],S).
sustantivo(singular,masculino,[personaje|S],S).


%Adjetivos

adjetivo(singular,masculino,[largo|S],S).
adjetivo(singular,masculino,[negro|S],S).
adjetivo(singular,masculino,[alta|S],S).


%Conjunciones
conjuncion([y|S],S).


%Preposiciones
preposicion([de|S],S).


%Nombres
nombre(singular,masculino,tercera,[hombre|S],S).
nombre(singular,femenino,primera,[yo|S],S).
nombre(singular,masculino,primera,[yo|S],S).
nombre(singular,femenino,tercera,[ella|S],S).
nombre(singular,masculino,tercera,[el|S],S).
nombre(plural,masculino,primera,[nosotros|S],S).
nombre(plural,femenino,primera,[nosotras|S],S).





%Verbos
verbo(singular,tercera,[come|S],S).
verbo(plural,tercera ,[comen|S],S).
verbo(singular,primera,[como|S],S).
verbo(plural,primera,[comemos|S],S).
verbo(singular, tercera, [tiene|S],S).
verbo(singular,tercera,[nacio|S],S).
verbo(singular,tercera,[es|S],S).
verbo(singular,tercera,[dedica|S],S).
verbo(singular,tercera,[murio|S],S).
verbo(singular,tercera,[mide|S],S).

%Pronombres Reflexivos
pronombre_reflexivo([me|S],S).
pronombre_reflexivo([se|S],S).



%famosos
famoso([[nombre, carlosAlvarado], [pelo, negro], [categoria, politico], [profesion, presidente]]).
famoso([[nombre, oscarArias], [pelo, blanco], [categoria, politico], [profesion, presidente]]).
famoso([[nombre, edgarSilva], [pelo, negro], [categoria, espectaculo], [profesion, presentador]]).
famoso([[nombre, mauricioHoffman], [pelo, macho], [categoria, espectaculo], [profesion, presentador]]).




consulta(Atributo,Descripcion):-famoso(Famoso),consultaAux(Atributo,Descripcion, Famoso).
consultaDoble(Descripcion1,Descripcion2):-famoso(Famoso), consultaAux(_, Descripcion1, Famoso), consultaAux(_, Descripcion2, Famoso).

consultaAux(Atributo,Descripcion, Famoso):-miembro([Atributo, Descripcion], Famoso).

getName(Descripcion, Nombre):-getNameAux(Descripcion, Nombre).
getNameAux(Descripcion, Nombre):-famoso(Famoso), consultaAux(_, Descripcion, Famoso), consultaAux(nombre, Nombre, Famoso).


miembro(X, [X|_]).
miembro(X, [_|R]):-miembro(X,R).


