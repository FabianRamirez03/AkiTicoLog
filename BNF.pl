:- [basededatos].

oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).
oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), negacion(S1,S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,S1),sintagma_nominal(Numero,Persona,S1, S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,[","|S1]),sintagma_nominal(Numero,Persona,S1, S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,S).

%SN
sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sujeto(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,primera,S0,S):- sujeto(Numero,_,primera,S0,S).
sintagma_nominal(Numero,Persona,S0,S):- pronombre(Numero,_,Persona,S0,S).

%SN utilizado en el SV
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S).
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S).
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,Genero,S0,S1), adjetivo(Numero, Genero,S1,S).
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,_,S0,S).


sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S).
sintagma_verbal(Numero,primera,S0,S):- verbo(Numero,primera,S0,S1), sintagma_nominal(Numero,S1,S).


sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),verbo(Numero,Persona,S3,S4),sintagma_nominal(Numero,S4,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),determinante(Numero,Genero,Persona,S3,S4), sujeto(Numero,Genero ,Persona,S4,S5), verbo(Numero,Persona,S5,S6),sintagma_nominal(Numero,S6,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),sujeto(Numero,_,Persona,S3,S4), verbo(Numero,Persona,S4,S5),sintagma_nominal(Numero,S5,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),pronombre(Numero,_,Persona,S3,S4),verbo(Numero,Persona,S4,S5),sintagma_nominal(Numero,S5,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),disyuncion(S2,S3),verbo(Numero,Persona,S3,S4), sintagma_nominal(Numero,S4,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),conjuncion(S2,S3),sintagma_nominal(Numero,S3,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(Numero,S1,S2),disyuncion(S2,S3),sintagma_nominal(Numero,S3,S).


analizaGramatica(Oracion) :- oracion(Oracion,[]),!.
analizaGramatica(_) :- writeln("La oración ingresada no es reconocida"),nl.



%Operaciones Básicas

separarString(String, Lista):-split_string(String," ", "", Lista).

miembro(X, [X|_]).
miembro(X, [_|R]):-miembro(X,R).


consulta(Atributo,Descripcion):-famoso(Famoso),consultaAux(Atributo,Descripcion, Famoso).
consultaDoble(Descripcion1,Descripcion2):-famoso(Famoso), consultaAux(_, Descripcion1, Famoso), consultaAux(_, Descripcion2, Famoso).
consultaAux(Atributo,Descripcion, Famoso):-miembro([Atributo, Descripcion], Famoso).


getName(Descripcion, Nombre):-getNameAux(Descripcion, Nombre).
getNameAux(Descripcion, Nombre):-famoso(Famoso), consultaAux(_, Descripcion, Famoso), consultaAux(nombre, Nombre, Famoso).


analizaTiene(String, Respuesta):-separarString(String, Lista), sintagma_nominal(Numero,Persona,Lista, S1), sintagma_verbal(Numero,Persona,S1,_), S1 =
[Verbo|Atributos], Verbo = "tiene", Atributos = [_, Descripcion], getName(Descripcion, Respuesta).


lista(["Su personaje es hombre o mujer?","Cual es el color de cabello de su personaje?",
       "Su personaje es alto?","Cual es la profesión de su personaje?",
       "En qué provincia vive su personaje?","Qué edad tiene su personaje?"]).

insertarFinal(X,[ ],[X]).
insertarFinal(X,[H|T],[H|Z]) :- insertarFinal(X,T,Z).

mostrar(L,[]) :- mostrarLista([L|_]).
mostrarLista([L|R]) :-  writeln(L), mostrar([R|_],[]).

inicio() :-

    nl,
    writeln("Piensa en un personaje y responde las siguientes preguntas"),
    nl,

    writeln("Su personaje es mujer?"), nl,
    read(Oracion1), nl, %insertarFinal(L,[Oracion1],L),
    separarString(Oracion1, A), analizaGramatica(A),

    writeln("El pelo de su personaje es de color negro?"), nl,
    read(Oracion2), nl, %insertarFinal(L,[Oracion2],L),
    separarString(Oracion2, B), analizaGramatica(B),

    writeln("A qué se dedica su personaje?"), nl,
    read(Oracion3), nl, %insertarFinal(L,[Oracion3],L),
    separarString(Oracion3,C), analizaGramatica(C),

    writeln("En qué provincia vive?"), nl,
    read(Oracion4), nl, %insertarFinal(L,[Oracion4],L),
    separarString(Oracion4,D), analizaGramatica(D),

    writeln("Qué edad tiene?"), nl,
    read(Oracion5), nl, %insertarFinal(L,[Oracion5],L),
    separarString(Oracion5,E), analizaGramatica(E).










