
%Determinantes
determinante(singular,masculino,tercera,["el"|S],S).
determinante(plural,masculino,tercera,["los"|S],S).
determinante(singular,femenino,tercera,["la"|S],S).
determinante(plural,femenino,tercera,["las"|S],S).


%Sujetos
pronombre(singular,masculino,tercera,["el"|S],S).
pronombre(singular,femenino,tercera,["ella"|S],S).
sujeto(singular,femenino,_,["mujer"|S],S).
sujeto(singular,masculino,_,["hombre"|S],S).
sujeto(singular,_,_,["personaje"|S],S).
sujeto(singular,masculino,_,["sujeto"|S],S).


%Conjunciones
conjuncion(["y"|S],S).


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
sustantivo(singular, masculino,["cientifica"|S],S).
sustantivo(singular, masucilno,["cabello"|S],S).
sustantivo(singular, _,["pelo"|S],S).
sustantivo(singular, _,["en"|S],S).


%Adjetivos
adjetivo(singular,masculino,["negro"|S],S).
adjetivo(singular,masculino,["cafe"|S],S).
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


%famosos
famoso([[nombre, "Carlos Alvarado"], [pelo, "negro"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "Oscar Arias"], [pelo, "blanco"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "Edgar Silva"], [pelo, "negro"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso([[nombre, "Mauricio Hoffman"], [pelo, "macho"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso("Carlos Alvarado").

politico("Carlos Alvarado").
presidente("Carlos Alvarado").




















