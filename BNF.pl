oracion(S0, S):- sintagma_nominal(Numero,Persona,S0, S1), sintagma_verbal(Numero,Persona,S1,S).


sintagma_nominal(Numero,Persona,S0,S):- determinante(Numero,Genero,Persona,S0,S1), sujeto(Numero,Genero,Persona,S1,S).
sintagma_nominal(Numero,primera,S0,S):- sujeto(Numero,_,primera,S0,S).


%Sintagma Nominal utilizado en el sintagma Verbal
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S2), adjetivo(Numero,Genero,S2,S).
sintagma_nominal(Numero,S0,S):- determinante(Numero,Genero,_,S0,S1), sustantivo(Numero,Genero,S1,S).
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,Genero,S0,S1), adjetivo(Numero, Genero,S1,S).
sintagma_nominal(Numero,S0,S):- sustantivo(Numero,_,S0,S).


sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S).
sintagma_verbal(Numero,Persona,S0,S):- verbo(Numero,Persona,S0,S1), sintagma_nominal(_,S1,S).
sintagma_verbal(Numero,primera,S0,S):- verbo(Numero,primera,S0,S1), sintagma_nominal(_,S1,S).


%Determinantes
determinante(singular,masculino,tercera,[el|S],S).
determinante(plural,masculino,tercera,[los|S],S).
determinante(singular,femenino,tercera,[la|S],S).
determinante(plural,femenino,tercera,[las|S],S).


%Sujetos
sujeto(singular,masculino,tercera,[hombre|S],S).
sujeto(singular,femenino,primera,[yo|S],S).
sujeto(singular,masculino,primera,[yo|S],S).
sujeto(plural,masculino,primera,[nosotros|S],S).
sujeto(plural,femenino,primera,[nosotras|S],S).
sujeto(singular,adjetivo,primera,[pelo, largo|S],S).
sujeto(plural,adjetivo,primera,[uñas, pintadas|S],S).


%Sustantivos
sustantivo(plural, femenino,[uñas|S],S).
sustantivo(plural, masculino,[aretes|S],S).
sustantivo(plural, masculino,[lentes|S],S).
sustantivo(plural, masculino,[ojos|S],S).
sustantivo(singular, femenino,[ropa|S],S).


%Adjetivos
adjetivo(plural,femenino,[pintadas|S],S).
adjetivo(plural,_,[azules|S],S).
adjetivo(plural,masculino,[oscuros|S],S).
adjetivo(plural,_,[cafés|S],S).
adjetivo(singular,_,[suave|S],S).



%Verbos
verbo(singular,tercera,[tiene|S],S).
verbo(plural,tercera ,[tienen|S],S).
verbo(singular,primera,[tengo|S],S).
verbo(plural,primera,[tenemos|S],S).
verbo(singular, tercera, [tiene|S],S).
verbo(singular, primera, [uso|S], S).
verbo(singular, primera, [uso|S], S).


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


