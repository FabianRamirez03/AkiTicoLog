:- [basededatos].

oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).


sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sujeto(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,primera,S0,S):- sujeto(Numero,_,primera,S0,S).
sintagma_nominal(Numero,Persona,S0,S):- sujeto(Numero,_,Persona,S0,S).


%Sintagma Nominal utilizado en el sintagma Verbal
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S).
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S).
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,Genero,S0,S1), adjetivo(Numero, Genero,S1,S).
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,_,S0,S).
sintagma_nominal(Numero,S0,S):- preposicion(S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S).
sintagma_nominal(Numero,S0,S):- preposicion(S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S3),conjuncion(S3,S4),adjetivo(Numero,Genero,S4,S).
sintagma_nominal(_,S0,S):- preposicion(S0,S1), determinante(Numero,Genero,_,S1,S2), sustantivo(Numero,Genero,S2,S).
sintagma_nominal(_,S0,S):- preposicion(S0,S1), determinante(Numero,Genero,_,S1,S2), sustantivo(Numero,Genero,S2,S3),adjetivo(Numero,Genero,S3,S).
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S2),sintagma_nominal(Numero,S2,S).
sintagma_nominal(Numero,S0,S):- preposicion(S0,S1),sustantivo(Numero,Genero,S1,S2), adjetivo(Numero, Genero,S2,S3),conjuncion(S3,S4), adjetivo(Numero, Genero,S4,S).
sintagma_nominal(_,S0,S):- preposicion(S0,S1),lugar(S1,S).


sintagma_verbal(Numero,Persona,S0,S):- pronombre_reflexivo(S0,S1), verbo(Numero,Persona,S1,S).
sintagma_verbal(Numero,Persona,S0,S):- pronombre_reflexivo(S0,S1), verbo(Numero,Persona,S1,S2),sintagma_nominal(_,S2,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(_,S1,S).
sintagma_verbal(Numero,primera,S0,S):- verbo(Numero,primera,S0,S1), sintagma_nominal(_,S1,S).

separarString(String, Lista):-split_string(String," ", "", Lista).

recibirString(String):-separarString(String, Lista), oracion(Lista, _).

consulta(Atributo,Descripcion):-famoso(Famoso),consultaAux(Atributo,Descripcion, Famoso).
consultaDoble(Descripcion1,Descripcion2):-famoso(Famoso), consultaAux(_, Descripcion1, Famoso), consultaAux(_, Descripcion2, Famoso).
consultaAux(Atributo,Descripcion, Famoso):-miembro([Atributo, Descripcion], Famoso).


getName(Descripcion, Nombre):-getNameAux(Descripcion, Nombre).
getNameAux(Descripcion, Nombre):-famoso(Famoso), consultaAux(_, Descripcion, Famoso), consultaAux(nombre, Nombre, Famoso).


miembro(X, [X|_]).
miembro(X, [_|R]):-miembro(X,R).


