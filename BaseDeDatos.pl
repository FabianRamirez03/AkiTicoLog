
%Determinantes
determinante(singular,masculino,tercera,["el"|S],S).
determinante(plural,masculino,tercera,["los"|S],S).
determinante(singular,femenino,tercera,["la"|S],S).
determinante(plural,femenino,tercera,["las"|S],S).
determinante(singular,masculino,tercera,["mi"|S],S).
determinante(singular,femenino,tercera,["mi"|S],S).
determinante(plural,femenino,tercera,["mis"|S],S).
determinante(plural,masculino,tercera,["mis"|S],S).
determinante(singular,femenino,tercera,["una"|S],S).


%Sujetos
sujeto(singular,femenino,primera,["yo"|S],S).
sujeto(singular,masculino,primera,["yo"|S],S).
sujeto(plural,masculino,primera,["nosotros"|S],S).
sujeto(plural,femenino,primera,["nosotras"|S],S).
sujeto(singular,femenino,tercera,["ella"|S],S).
sujeto(singular,adjetivo,primera,["pelo", largo|S],S).
sujeto(plural,adjetivo,primera,["u�as", pintadas|S],S).
sujeto(singular,masculino,tercera,["personaje"|S],S).
sujeto(singular,femenino,_,["mujer"|S],S).
sujeto(singular,masculino,_,["hombre"|S],S).
sujeto(singular,_,_,["personaje"|S],S).
sujeto(singular,masculino,_,["sujeto"|S],S).
pronombre(singular,masculino,tercera,["el"|S],S).



%Conjunciones
conjuncion(["y"|S],S).

%Negaci�n
negacion(["no"|S],S).

%Disyuncion
disyuncion(["o"|S],S).


%Preposiciones
preposicion(["de"|S],S).
preposicion(["a"|S],S).
preposicion(["en"|S],S).



%Sustantivos
sustantivo(plural, femenino,["u�as"|S],S).
sustantivo(plural, masculino,["aretes"|S],S).
sustantivo(plural, masculino,["lentes"|S],S).
sustantivo(plural, masculino,["ojos"|S],S).
sustantivo(singular, femenino,["ropa"|S],S).
sustantivo(singular, masculino,["pelo"|S],S).
sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular,masculino,["personaje"|S],S).
sustantivo(plural,masculino,["deportes"|S],S).
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
sustantivo(singular, femenino,["alta"|S],S).
sustantivo(singular, masculino,["alto"|S],S).
sustantivo(singular, femenino,["presentadora"|S],S).
sustantivo(singular, masculino,["presentador"|S],S).
sustantivo(singular, _,["40"|S],S).
sustantivo(singular, _,["59"|S],S).
sustantivo(singular, _,["72"|S],S).
sustantivo(singular, _,["36"|S],S).
sustantivo(singular, _,["en"|S],S).
sustantivo(singular, _,["pelo"|S],S).


%Adjetivos
adjetivo(plural,femenino,["pintadas"|S],S).
adjetivo(plural,_,["azules"|S],S).
adjetivo(plural,masculino,["oscuros"|S],S).
adjetivo(plural,_,["caf�s"|S],S).
adjetivo(singular,_,["suave"|S],S).
adjetivo(singular,masculino,["largo"|S],S).
adjetivo(singular,masculino,["alta"|S],S).
adjetivo(singular,masculino,["negro"|S],S).
adjetivo(singular,_,["cafe"|S],S).
adjetivo(singular,masculino,["rubio"|S],S).
adjetivo(singular,femenino,["rubia"|S],S).
adjetivo(singular, masculino,["blanco"|S],S).
adjetivo(singular,_,["alajuela"|S],S).
adjetivo(singular,_,["Heredia"|S],S).
adjetivo(singular,_,["Cartago"|S],S).
adjetivo(singular,_,["San Jose"|S],S).
adjetivo(singular,_,["Puntarenas"|S],S).
adjetivo(singular,_,["Guanacaste"|S],S).
adjetivo(singular,_,["Limon"|S],S).
adjetivo(singular,_,["1960"|S],S).
adjetivo(singular,_,["1.70"|S],S).



%Verbos
verbo(singular,tercera,["hace"|S],S).
verbo(singular,tercera,["hizo"|S],S).
verbo(singular,tercera,["tiene"|S],S).
verbo(plural,tercera ,["tienen"|S],S).
verbo(singular,primera,["tengo"|S],S).
verbo(plural,primera,["tenemos"|S],S).
verbo(singular, primera, ["uso"|S], S).
verbo(singular, primera, ["uso"|S], S).
verbo(singular,tercera,["nacio"|S],S).
verbo(singular,tercera,["dedica"|S],S).
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
verbo(singular,tercera,["dedica"|S],S).


%Respuestas
respuesta(["Si"|S],S).
respuesta(["No"|S],S).

%Pronombres reflexivos
pronombre_reflexivo(["se"|S],S).


%famosos
famoso([[nombre, "Carlos Alvarado"], [pelo, "negro"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "Oscar Arias"], [pelo, "blanco"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "Edgar Silva"], [pelo, "negro"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso([[nombre, "Mauricio Hoffman"], [pelo, "macho"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso("Carlos Alvarado").
famoso("Paquita",[alajuela,1960,mujer,deportes,rubia,1.70]).
famoso("Paquito",[alajuela,1960,hombre,deportes,rubio,1.70]).


politico("Carlos Alvarado").
presidente("Carlos Alvarado").


%Preguntas
pregunta("�Su Personaje Es Hombre o mujer?").
pregunta("�A qu� se dedica su personaje?").
pregunta("�En cu�l provincia naci� su personaje?").
pregunta("�Sabe alguna caracteristica extra que desee proporcionar?").











