:- [basededatos].

% Verifica las oraciones ingresadas por el usuario que cumplan con la
% estructura basica del idioma español
oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).
oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), negacion(S1,S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,S1),sintagma_nominal(Numero,Persona,S1, S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,[","|S1]),sintagma_nominal(Numero,Persona,S1, S2), sintagma_verbal(Numero,Persona,S2,S).
oracion(S0, S):- respuesta(S0,S).

%Sintagma Nominal
sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sujeto(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,primera,S0,S):- sujeto(Numero,_,primera,S0,S).
sintagma_nominal(Numero,Persona,S0,S):- pronombre(Numero,_,Persona,S0,S).

%Sintagma Nominal utilizado en el SV
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

% Analiza la oracion, si es correcta realiza un corte, si no, se le
% indica al usuario que es incorrecto.
analizaGramatica(Oracion) :- oracion(Oracion,[]),!.
analizaGramatica(_) :- writeln("La oracion ingresada no es reconocida"),nl.


%Revisa una lista de una especie de sinonimos para ser mas flexible
%La cabeza de esa lista es el identificador universal
revisaLista(Head,Atributo):-listaGenero(Lista), Lista = [Head|_], miembro(Atributo,Lista).
revisaLista(Head,Atributo):-listaPelo(Lista), Lista = [Head|_], miembro(Atributo,Lista).
revisaLista(Head,Atributo):-listaOficio(Lista), Lista = [Head|_], miembro(Atributo,Lista).
revisaLista(Head,Atributo):-listaLugares(Lista), Lista = [Head|_], miembro(Atributo,Lista).
revisaLista(Head,Atributo):-listaAños(Lista), Lista = [Head|_], miembro(Atributo,Lista).


%Operaciones Basicas

separarString(String, Lista):-split_string(String," ", "", Lista).

miembro(X, [X|_]).
miembro(X, [_|R]):-miembro(X,R).

hecho([Y], Y).

hecho([_|Xs], Y):-
          hecho(Xs, Y).

mostrar(L,[]) :- mostrarLista([L|_]).
mostrarLista([L|R]) :-  writeln(L), mostrar([R|_],[]).

identificacion(Nombre,H1,H2,H3,H4,H5) :-
    famoso(Nombre,Lista), miembro(H1,Lista),miembro(H2,Lista),
    miembro(H3,Lista),miembro(H4,Lista),miembro(H5,Lista).


%Función principal que consulta al usuario y da un veredicto final

inicio() :-

    nl,
    writeln("Piensa en un personaje y responde las siguientes preguntas"),
    nl,

    writeln("Su personaje es mujer?"), nl,
    read(Oracion1), nl,
    separarString(Oracion1, A), analizaGramatica(A),

    writeln("El pelo de su personaje es de color negro?"), nl,
    read(Oracion2), nl,
    separarString(Oracion2, B), analizaGramatica(B),

    writeln("A que se dedica su personaje?"), nl,
    read(Oracion3), nl,
    separarString(Oracion3,C), analizaGramatica(C),

    writeln("En que provincia vive?"), nl,
    read(Oracion4), nl,
    separarString(Oracion4,D), analizaGramatica(D),

    writeln("Que edad tiene?"), nl,
    read(Oracion5), nl,
    separarString(Oracion5,E), analizaGramatica(E),

    hecho(A,V), revisaLista(H0, V),
    hecho(B,W), revisaLista(H1, W),
    hecho(C,X), revisaLista(H2, X),
    hecho(D,Y), revisaLista(H3, Y),
    hecho(E,Z), revisaLista(H4, Z),


    identificacion(
        Nombre,
        H0,
        H1,
        H2,
        H3,
        H4
    ), writeln("Su personaje es: "), writeln(Nombre), nl.









