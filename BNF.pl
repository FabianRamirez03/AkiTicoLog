



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
nombre(singular,femenino,tercera,[manzana|S],S).
nombre(singular,masculino,tercera,[perro|S],S).
nombre(singular,masculino,tercera,[gato|S],S).
nombre(singular,femenino,tercera,[gata|S],S).
nombre(singular,femenino,tercera,[perra|S],S).
nombre(plural,femenino,tercera,[perras|S],S).
nombre(singular,femenino,primera,[yo|S],S).
nombre(singular,masculino,primera,[yo|S],S).
nombre(plural,masculino,primera,[nosotros|S],S).
nombre(plural,femenino,primera,[nosotras|S],S).





verbo(singular,tercera,[come|S],S).
verbo(plural,tercera ,[comen|S],S).
verbo(singular,primera,[como|S],S).
verbo(plural,primera,[comemos|S],S).
