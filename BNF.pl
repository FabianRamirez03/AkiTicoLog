:- [basededatos].
:- dynamic (valorRecibido/1).

crearHecho([Valor|_]):-atom_length(Valor,X),(X > 3 ->  asserta(valorRecibido(Valor))).
limpiarHechos:- retractall(valorRecibido(_)).

oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).
oracion(S0, S):- respuesta(S0,S1),sintagma_nominal(Numero,Persona,S1, S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,[","|S1]),sintagma_nominal(Numero,Persona,S1, S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,S).

%SN
sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sujeto(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,primera,S0,S):- sujeto(Numero,_,primera,S0,S).
sintagma_nominal(Numero,Persona,S0,S):- pronombre(Numero,_,Persona,S0,S).
sintagma_nominal(Numero,Persona,S0,S):- sujeto(Numero,_,Persona,S0,S).

%SN utilizado en el SV
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S),crearHecho(S2),!.
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S),crearHecho(S1),!.
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,Genero,S0,S1), adjetivo(Numero, Genero,S1,S),crearHecho(S1),!.
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,_,S0,S),crearHecho(S0),!.
sintagma_nominal(Numero,S0,S):- adjetivo(Numero,_,S0,S),crearHecho(S0),!.
sintagma_nominal(Numero,S0,S):- preposicion(S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S),crearHecho(S2),!.
sintagma_nominal(Numero,S0,S):- preposicion(S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S3),crearHecho(S3),conjuncion(S3,S4),adjetivo(Numero,Genero,S4,S),crearHecho(S4),!.
sintagma_nominal(_,S0,S):- preposicion(S0,S1), determinante(Numero,Genero,_,S1,S2), sustantivo(Numero,Genero,S2,S),crearHecho(S2),!.
sintagma_nominal(_,S0,S):- preposicion(S0,S1), determinante(Numero,Genero,_,S1,S2), sustantivo(Numero,Genero,S2,S3),adjetivo(Numero,Genero,S3,S),crearHecho(S3),!.
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S2),crearHecho(S2),sintagma_nominal(Numero,S2,S),!.
sintagma_nominal(Numero,S0,S):- preposicion(S0,S1),sustantivo(Numero,Genero,S1,S2), adjetivo(Numero, Genero,S2,S3),crearHecho(S3),conjuncion(S3,S4), adjetivo(Numero, Genero,S4,S),crearHecho(S4),!.
sintagma_nominal(_,S0,S):- preposicion(S0,S1),adjetivo(_,_,S1,S),crearHecho(S1),!.


sintagma_verbal(Numero,Persona,S0,S):- pronombre_reflexivo(S0,S1), verbo(Numero,Persona,S1,S),!.
sintagma_verbal(Numero,Persona,S0,S):- pronombre_reflexivo(S0,S1), verbo(Numero,Persona,S1,S2),sintagma_nominal(_,S2,S),!.
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S),!.
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S),!.
sintagma_verbal(Numero,primera,S0,S):- verbo(Numero,primera,S0,S1), sintagma_nominal(Numero,S1,S),!.


sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),verbo(Numero,Persona,S3,S4),sintagma_nominal(Numero,S4,S),!.
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),disyuncion(S2,S3),verbo(Numero,Persona,S3,S4), sintagma_nominal(Numero,S4,S),!.
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),sintagma_nominal(Numero,S3,S),!.
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),disyuncion(S2,S3),sintagma_nominal(Numero,S3,S),!.


consulta(Atributo,Descripcion):-famoso(Famoso),consultaAux(Atributo,Descripcion, Famoso).
consultaDoble(Descripcion1,Descripcion2):-famoso(Famoso), consultaAux(_, Descripcion1, Famoso), consultaAux(_, Descripcion2, Famoso).
consultaAux(Atributo,Descripcion, Famoso):-miembro([Atributo, Descripcion], Famoso).


getName(Descripcion, Nombre):-getNameAux(Descripcion, Nombre).
getNameAux(Descripcion, Nombre):-famoso(Famoso), consultaAux(_, Descripcion, Famoso), consultaAux(nombre, Nombre, Famoso).


separarString(String, Lista):-split_string(String," ", "", Lista).


analizaTiene(String, Respuesta):-separarString(String, Lista), sintagma_nominal(Numero,Persona,Lista, S1), sintagma_verbal(Numero,Persona,S1,_), S1 =
[Verbo|Atributos], Verbo = "tiene", Atributos = [_, Descripcion], getName(Descripcion, Respuesta).



analizaEs(String, Respuesta):-separarString(String, Lista), sintagma_nominal(Numero,Persona,Lista, S1), sintagma_verbal(Numero,Persona,S1,_), S1 = [Verbo|Atributos], Atributos = [Descripcion|_],  Verbo = "es", getName(Descripcion, Respuesta).
analizaEs(String, Respuesta):-separarString(String, Lista), sintagma_nominal(Numero,Persona,Lista, S1), sintagma_verbal(Numero,Persona,S1,_), S1 = [Verbo|Atributos], Verbo = "es", Atributos = [_|Atributo], getName(Atributo, Respuesta).


akiTicoLog:-pregunta1.
pregunta1:-limpiarHechos,write("�Su personaje es hombre o mujer?"),read(X),separarString(X,Lista),oracion(Lista,[]),findall(C, valorRecibido(C), LC),pregunta2.

pregunta2:-write("�A que se dedica su personaje?"),read(X),separarString(X,Lista),oracion(Lista,[]),findall(C, valorRecibido(C), LC),pregunta3.

pregunta3:-write("�Donde naci� su personaje?"),read(X),separarString(X,Lista),oracion(Lista,[]),findall(C, valorRecibido(C), LC),pregunta4.


pregunta4:-write("�En que a�o naci� su personaje?"),read(X),separarString(X,Lista),oracion(Lista,[]),findall(C, valorRecibido(C), LC),pregunta5.

pregunta5:-write("�Cuant� mide su personaj?"),read(X),separarString(X,Lista),oracion(Lista,[]),findall(C, valorRecibido(C), LC),write(LC),nl,respuesta.

respuesta:-famoso(X, Personaje), sublista(LC, Personaje),write(X).



miembro(X, [X|_]).
miembro(X, [_|R]):-miembro(X,R).

sublista([], _).
sublista([X|L], L2):- miembro(X, L2), sublista(L, L2).









