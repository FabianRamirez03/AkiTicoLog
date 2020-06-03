
%Determinantes
determinante(singular,masculino,tercera,["el"|S],S).
determinante(plural,masculino,tercera,["los"|S],S).
determinante(singular,femenino,tercera,["la"|S],S).
determinante(plural,femenino,tercera,["las"|S],S).
determinante(singular,_,_,["mi"|S],S).


%Sujetos
pronombre(singular,masculino,tercera,["el"|S],S).
pronombre(singular,femenino,tercera,["ella"|S],S).
sujeto(singular,femenino,_,["mujer"|S],S).
sujeto(singular,masculino,_,["hombre"|S],S).
sujeto(singular,_,_,["personaje"|S],S).
sujeto(singular,masculino,_,["sujeto"|S],S).


%Conjunciones
conjuncion(["y"|S],S).

%Negaci�n
negacion(["no"|S],S).

%Disyuncion
disyuncion(["o"|S],S).


%Preposiciones
preposicion(["de"|S],S).


%Sustantivos
sustantivo(singular, masculino,["presidente"|S],S).
sustantivo(singular, femenino,["presidenta"|S],S).
sustantivo(singular, masculino,["boxeador"|S],S).
sustantivo(singular, femenino,["boxeadora"|S],S).
sustantivo(singular, masculino,["cientifico"|S],S).
sustantivo(singular, femenino,["politica"|S],S).
sustantivo(singular, masculino,["politico"|S],S).
sustantivo(singular, masculino,["cientifica"|S],S).
sustantivo(singular, masuclino,["cabello"|S],S).
sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular, masculino,["hombre"|S],S).
sustantivo(singular, _,["estudiante"|S],S).
sustantivo(singular, femenino,["alta"|S],S).
sustantivo(singular, masculino,["alto"|S],S).
sustantivo(singular, femenino,["presentadora"|S],S).
sustantivo(singular, masculino,["presentador"|S],S).
sustantivo(singular, _,["40"|S],S).
sustantivo(singular, _,["59"|S],S).
sustantivo(singular, _,["72"|S],S).
sustantivo(singular, _,["36"|S],S).
sustantivo(singular, _,["20"|S],S).
sustantivo(singular, _,["19"|S],S).
sustantivo(singular, _,["45"|S],S).
sustantivo(singular, _,["50"|S],S).
sustantivo(singular, _,["en"|S],S).
sustantivo(singular, _,["pelo"|S],S).


%Adjetivos
adjetivo(singular,masculino,["negro"|S],S).
adjetivo(singular,_,["cafe"|S],S).
adjetivo(singular,masculino,["rubio"|S],S).
adjetivo(singular,femenino,["rubia"|S],S).
adjetivo(singular, masculino,["blanco"|S],S).
adjetivo(singular,_,["Alajuela"|S],S).
adjetivo(singular,_,["Heredia"|S],S).
adjetivo(singular,_,["Cartago"|S],S).
adjetivo(singular,_,["San Jose"|S],S).
adjetivo(singular,_,["Puntarenas"|S],S).
adjetivo(singular,_,["Guanacaste"|S],S).
adjetivo(singular,_,["Limon"|S],S).


%Verbos
verbo(singular,tercera,["hace"|S],S).
verbo(singular,tercera,["hizo"|S],S).
verbo(singular,tercera,["tiene"|S],S).
verbo(singular,tercera,["tuvo"|S],S).
verbo(singular,tercera,["es"|S],S).
verbo(singular,tercera,["fue"|S],S).
verbo(singular,tercera,["nacio"|S],S).
verbo(singular,tercera,["vive"|S],S).
verbo(singular,tercera,["vivio"|S],S).
verbo(singular,tercera,["juega"|S],S).
verbo(singular,tercera,["jugo"|S],S).
verbo(singular,tercera,["murio"|S],S).
verbo(singular,tercera,["mide"|S],S).


%Respuestas
respuesta(["Si"|S],S).
respuesta(["No"|S],S).



famoso("Carlos Alvarado",["hombre","negro","presidente","Alajuela","40"]).
famoso("Agustin",["hombre","negro","estudiante","Puntarenas","19"]).
famoso("Fabian",["hombre","negro","estudiante","Heredia","19"]).
famoso("Abigail",["mujer","negro","estudiante","Alajuela","20"]).





















