famoso("Carlos Alvarado").
politico("Carlos Alvarado").
presidente("Carlos Alvarado").



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
sujeto(singular,masculino,tercera,["hombre"|S],S).
sujeto(singular,femenino,primera,["yo"|S],S).
sujeto(singular,masculino,primera,["yo"|S],S).
sujeto(plural,masculino,primera,["nosotros"|S],S).
sujeto(plural,femenino,primera,["nosotras"|S],S).
sujeto(singular,femenino,tercera,["ella"|S],S).
sujeto(singular,adjetivo,primera,["pelo", largo|S],S).
sujeto(plural,adjetivo,primera,["uñas", pintadas|S],S).
sujeto(singular,masculino,tercera,["personaje"|S],S).



%Sustantivos
sustantivo(plural, femenino,["uñas"|S],S).
sustantivo(plural, masculino,["aretes"|S],S).
sustantivo(plural, masculino,["lentes"|S],S).
sustantivo(plural, masculino,["ojos"|S],S).
sustantivo(singular, femenino,["ropa"|S],S).
sustantivo(singular, masculino,["pelo"|S],S).
sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular,masculino,["personaje"|S],S).
sustantivo(plural,masculino,["deportes"|S],S).


%Adjetivos
adjetivo(plural,femenino,["pintadas"|S],S).
adjetivo(plural,_,["azules"|S],S).
adjetivo(plural,masculino,["oscuros"|S],S).
adjetivo(plural,_,["cafés"|S],S).
adjetivo(singular,_,["suave"|S],S).
adjetivo(singular,masculino,["largo"|S],S).
adjetivo(singular,masculino,["negro"|S],S).
adjetivo(singular,masculino,["alta"|S],S).


%Lugares
lugar(["alajuela"|S],S).


%Conjunciones
conjuncion(["y"|S],S).


%Preposiciones
preposicion(["de"|S],S).
preposicion(["a"|S],S).
preposicion(["en"|S],S).


%Pronombres Reflexivos
pronombre_reflexivo(["me"|S],S).
pronombre_reflexivo(["se"|S],S).


%Verbos
verbo(singular,tercera,["tiene"|S],S).
verbo(plural,tercera ,["tienen"|S],S).
verbo(singular,primera,["tengo"|S],S).
verbo(plural,primera,["tenemos"|S],S).
verbo(singular, tercera, ["tiene"|S],S).
verbo(singular, primera, ["uso"|S], S).
verbo(singular, primera, ["uso"|S], S).
verbo(singular,tercera,["nacio"|S],S).
verbo(singular,tercera,["es"|S],S).
verbo(singular,tercera,["dedica"|S],S).
verbo(singular,tercera,["murio"|S],S).
verbo(singular,tercera,["mide"|S],S).


%famosos
famoso([[nombre, "carlosAlvarado"], [pelo, "negro"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "oscarArias"], [pelo, "blanco"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "edgarSilva"], [pelo, "negro"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso([[nombre, "mauricioHoffman"], [pelo, "macho"], [categoria, "espectaculo"], [profesion, "presentador"]]).




















